#include <stdio.h>;

void sub (int *pa, int *pb){
    *pa = *pa - *pb;
    *pb+=1;
}

void main() {
  int A = 10;
  int B = 20;
  int *pa;
  int *pb;

  pa = &A;
  pb = &B;

  printf("Valor de A: %d\n", A);
  printf("Endereço de A: %p\n", &A);
  printf("Valor de p: %p\n", pa);
  printf("Valor apontado por p: %d\n", *pa);

  printf("#########");

  printf("Valor de B: %d\n", B);
  printf("Endereço de B: %p\n", &B);
  printf("Valor de pb: %p\n", pb);
  printf("Valor apontado por pb: %d\n", *pb);

  sub (&B , &A);

  printf("%d\n", A);
}