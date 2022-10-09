#include <stdio.h>
/*
 * Ceci est un code pour tester les affichages binaires
 */

int main()
{
	int valeurb = 0b10100100;
	int valeuro = 0244;
	printf("Notation octale: %o\n", valeurb);
	printf("Notation octale: %o\n", valeuro);
	int valeurh = 0b10100100;
	printf("Notation hexadecimale: %x\n", valeurh);
	printf("Notation hexadecimale: %x\n", valeuro);
	return 0;
}
