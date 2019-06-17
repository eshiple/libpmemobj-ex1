#include <stdio.h>
#include <string.h>
#include <libpmemobj.h>
#include "../layout.h"

int main(int argc, char* argv[])
{
    if(pmemobj_check(argv[1], POBJ_LAYOUT_NAME(string_store))!= 1) {
        printf("%s\n", pmemobj_errormsg());
    }
    PMEMobjpool *pop = pmemobj_open(argv[1], POBJ_LAYOUT_NAME(string_store));
    if(pop == NULL) {
        perror("pmemobj_create");
        return 1;
    }

    //Untyped pointer
    //PMEMoid root = pmemobj_root(pop, sizeof(struct my_root));
    //struct my_root *rootp = pmemobj_direct(root);

    TOID(struct my_root) root = POBJ_ROOT(pop, struct my_root);

    printf("%s\n", D_RO(root)->buf);
    

    pmemobj_close(pop);
    return 0;

}