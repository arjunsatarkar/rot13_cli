#include "rot13.h"

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>

int main(void) {
  int c;
  while ((c = getchar()) != EOF) {
    putchar(isupper(c) ? toupper(rot13(tolower(c))) : rot13(c));
  }

  return EXIT_SUCCESS;
}
