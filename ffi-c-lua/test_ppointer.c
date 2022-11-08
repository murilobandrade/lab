#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void test_ppointer(char **msg) {
  printf("test_pponter");
}

void test_ppointer2(char **msg) {
  *msg = "alguma coisa de bom tem que ter!!!!";
}

void test_ppointer3(char **msg) {
  *msg = malloc(sizeof(char) * 5);
  strncpy(*msg, "alguma coisa de bom tem que ter!!!!", 6);
}

int main (int argc, char *argv[])
{
  
  return 0;
}

