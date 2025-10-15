#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static char k[] = "LemonSqueezy";

int main(void){
    char input[128];
    printf("Enter Password: ");
    fgets(input, sizeof(input), stdin);
    input[strcspn(input, "\n")] = 0;

    if (strcmp(input, k) == 0) {
        printf("Access Granted\n");
        printf("Flag: DMI{Ezy_P3asy_LemonSqueezy}\n");
    } else {
        printf("Access Denied\n");
    }

}