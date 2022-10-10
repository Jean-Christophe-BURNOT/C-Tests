#include <stdio.h>
/*
 * Ce code permet de tester les opérateurs
 * D'affectation en C
 */

int main()
{
	int a=20,b=5;
	printf("Le résultat est %d\n", a+=b);
	printf("Le résultat est %d\n", a-=b);
	printf("Le résultat est %d\n", a*=b);
	printf("Le résultat est %d\n", a/=b);
	printf("Le résultat est %d\n", a%=b);
	return 0;
}
