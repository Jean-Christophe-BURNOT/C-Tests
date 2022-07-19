#include <stdio.h>
#include <stdlib.h>

int main(int argc, char*argv[])
{
    int age=0;
    printf("Quel age avez-vous?\n");
    scanf("%d",&age);
    printf("Ah! Vous avez donc %d ans!\n\n",age);
    if (age>=18)
    {
        printf("Vous etes majeur");
    }
    else
    {
        printf("Vous etes mineur");
    }
    return 0;
}
