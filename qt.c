#include <stdio.h>
#include <stdlib.h>

int main()
{
    int choixMenu;

    printf("=== Menu ===\n");
    printf("1. Royal Cheese\n");
    printf("2. Mc Deluxe\n");
    printf("3. Mc Bacon\n");
    printf("4. Big Mac\n");
    printf("Votre choix ?\n");
    scanf("%d", &choixMenu);

    switch (choixMenu)
    {
        case 1:
            printf("Vous avez choisi le royal cheese! \n");
            break;
        case 2:
            printf("Vous avez choisi le mc deluxe! \n");
            break;
        case 3:
            printf("Vous avez choisi le mc bacon! \n");
            break;
        case 4:
            printf("Vous avez choisi le Big Mac");
            break;
        default:
            printf("Vous n'avez pas rentré un nombre correct");
            break;
    }
    printf("\n");
    return 0;
}
