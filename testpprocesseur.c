#include <stdio.h>
/*
 * Ce code test la variable de préprocessing __line__
 */
int main()
{
	printf("Je suis le premier print %d\n",__LINE__);
	printf("Le second %d\n",__LINE__);

	printf("Le troisième %d\n",__LINE__);
	return 0;
}
