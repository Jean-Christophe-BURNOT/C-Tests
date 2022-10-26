#include <stdio.h>
#include <string.h>
/*
 * Ce code teste la fonction strcmp
 */
int main()
{
	char chaine1[5]="toto";
	char chaine2[10]="toto";
	int comp;
	comp = strcmp(chaine1, chaine2);
	printf("%d",comp);
	return 0;
}
