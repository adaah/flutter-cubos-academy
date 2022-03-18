#include<stdio.h>
#include<stdlib.h> 

int main() 
{ 
    char nome[256];
    char sobrenome[256];
    char dataNascimento[256];
    int idade;

    printf("Qual seu nome?\n");
    scanf("%s", nome);

    printf("\nNome bonito %s. Agora me diz, qual seu sobrenome?\n", nome);
    scanf("%s", sobrenome);
    
    
    printf("\nAgora sim, %s %s, que bom ter você aqui... Então me diz, qual sua idade?\n", nome, sobrenome);
    scanf("%d", &idade);

    printf("\nOlha só, %d é a quase a idade das pedras! Rs rs, brincadeirinha %s. Me diz, quando foi que você nasceu?\n", idade, nome);
    scanf("%s", &dataNascimento);

    printf("\nPerfeito! Só pra revisar as informações... Seu nome é %s %s, você nasceu em %s e tem %d anos\n", nome, sobrenome, dataNascimento, idade);

    return 0;

} 