#include "calculator/calc.h"
#include "utils/utils.h"

int main(int argc, char** argv) {
  pair_t a, b;
  a.first = 5;
  a.second = 6;

  b.first = 7;
  b.second = 8;

  pair_t result;
  result.first = add(a.first, b.first);
  result.second = mul(a.second, b.second);

  print_pair(&result);

  return 0;
}

