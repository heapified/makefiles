#include <stdio.h>
#include "utils.h"

void print_pair(pair_t *p) {
  printf("{%d, %d}\n", p->first, p->second);
}
