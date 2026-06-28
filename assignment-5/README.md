# Assignment 5: Large Files & Symbolic Links on xv6

This project extends the **vanilla xv6 (ARM) file system** with two features that
stock xv6 does not provide:

1. **Double-indirect block support** (larger files)
2. **Symbolic link support**

The sections below describe what vanilla xv6 already supports, what each feature
adds, where the code lives, and how it is tested.

---

## Feature 1: Double-Indirect Blocks (Large File Support)

### What vanilla xv6 supports

In stock xv6 an inode (`struct dinode`) addresses its data through:

- **12 direct blocks**, plus
- **1 singly-indirect block** (a block full of block numbers).

With a block size of 512 bytes, an indirect block holds `512 / 4 = 128` addresses.
So the maximum file size is:

```text
NDIRECT (12) + NINDIRECT (128) = 140 blocks  =  140 * 512  =  ~70 KB
```

Any attempt to grow a file past ~70 KB fails. This is far too small for real
workloads.

### What this feature adds

We added a **doubly-indirect block**: one block whose entries each point to an
indirect block, which in turn points to data blocks. This adds
`128 * 128 = 16,384` more addressable blocks.

The on-disk inode now lays out its `addrs[]` as:

- `addrs[0 .. NDIRECT-1]` : direct blocks (`NDIRECT = 11`)
- `addrs[NDIRECT]`         : singly-indirect block
- `addrs[NDIRECT + 1]`     : doubly-indirect block

New maximum file size:

```text
MAXFILE = NDIRECT (11) + NINDIRECT (128) + NDINDIRECT (16384)
        = 16,523 blocks  =  16,523 * 512  =  ~8.25 MB
```

So files that earlier xv6 could not store (anything above ~70 KB) are now
supported, up to ~8 MB.

### Where the code is

| Location | Change |
|----------|--------|
| `fs.h` | New constants `NDINDIRECT` and updated `MAXFILE`; `dinode.addrs[]` widened to `NDIRECT+2` to hold the extra doubly-indirect pointer. |
| `fs.c` (`bmap`) | After the direct and singly-indirect cases, a new branch handles `bn < NDINDIRECT`: it allocates the doubly-indirect block, indexes into it with `bn / NINDIRECT`, then into the second-level indirect block with `bn % NINDIRECT`. |
| `fs.c` (`itrunc`) | Extended to free the doubly-indirect block and all of its second-level indirect blocks when a file is truncated/deleted, so no blocks leak. |

### How it is tested

`usr/dindirect_test.c` creates a file and writes `512 * 256 = 131,072` bytes
(~128 KB) to it, a size that exceeds the old ~70 KB limit and therefore forces
allocation through the doubly-indirect block. It prints the number of bytes
written; a successful large write confirms the doubly-indirect path in `bmap`
works.

```bash
$ dindirect_test
Wrote <N> bytes
```

---

## Feature 2: Symbolic Links

### What vanilla xv6 supports

Vanilla xv6 supports only **hard links** (via `link`). A hard link is just
another directory entry pointing at the same inode; it cannot cross file systems
and cannot point at directories. There is no notion of a symbolic (soft) link
that stores a path to another file.

### What this feature adds

A new `symlink(target, path)` system call creates a special file of type
`T_SYMLINK` whose data is the **target path string**. When such a file is
`open`ed, the kernel transparently follows it to the target. Unlike a hard link,
a symlink stores a path (not an inode reference), so it can dangle or point
anywhere.

### Where the code is

| Location | Change |
|----------|--------|
| `stat.h` | New file type `T_SYMLINK` (value 4). |
| `syscall.h`, `syscall.c`, `usr/usys.S`, `usr/user.h` | Registered system call `SYS_symlink` (number 22) and its user-space stub `int symlink(char*, char*)`. |
| `sysfile.c` (`sys_symlink`) | Creates an inode of type `T_SYMLINK` with `create()` and writes the target path into the link's data with `writei()`. |
| `sysfile.c` (`sys_open`) | When the opened inode is a `T_SYMLINK`, reads the stored target path and follows it, looping up to 10 levels to resolve chained links and guard against symlink cycles. |

### How it is tested

`usr/symlink_test.c`:

1. Creates `target.txt` and writes `"xv6-symlink-test"` into it.
2. Creates a symbolic link `link.txt -> target.txt` with `symlink()`.
3. Opens `link.txt` (which transparently resolves to `target.txt`) and reads it.

If symlink resolution works, reading through `link.txt` returns the contents of
`target.txt`:

```bash
$ symlink_test
Creating target.txt...
Creating symlink link.txt -> target.txt...
Read through symlink: xv6-symlink-test
```

---

## Building and Running

```bash
cd assignment-5/OS
make clean
make
qemu-system-arm -M versatilepb -m 128 -cpu arm1176 -nographic -kernel kernel.elf
```

At the xv6 shell prompt, run the test programs:

```bash
$ dindirect_test
$ symlink_test
```
