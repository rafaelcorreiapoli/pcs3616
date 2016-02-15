#include <stdio.h>

int fatorial(int n);

/**
 * Ponto de entrada do programa (entry point).
 */
int main(int argc, char** argv) {
  printf("Digite um número: ");

  int n;
  scanf("%d", &n);

  printf("%d! = %d\n", n, fatorial(n));

  return 0;
}

/**
 * Calcula o fatorial do número recebido e retorna o resultado.
 */
int fatorial(int n) {
  // Por enquanto, essa função não faz nada de muito útil... Ela apenas
  // retorna o número recebido.
  // Altere esta implementação para retornar o resultado correto.

  return (n > 1) ? n * fatorial(n - 1) : 1;
}