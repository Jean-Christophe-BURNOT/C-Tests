#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int lire(char *chaine, int longueur)
{
	char *positionEntree = NULL;
	if (fgets(chaine, longueur, stdin)!= NULL)
	{
		positionEntree = strchr(chaine,'\n');
		if (positionEntree != NULL)
		{
			*positionEntree = '\0';
		}
		return 0;
	}
	else
	{
		return 1;
	}
}
