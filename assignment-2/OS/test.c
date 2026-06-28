#include "defs.h"
#include "proc.h"

void test(){
    struct proc* p1 = allocproc();
    struct proc* p2 = allocproc();
    p1->tickets = 100;
    p2->tickets = 200;
    
}