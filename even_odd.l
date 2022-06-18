%{
#include<stdlib.h>
#include<stdio.h>
int a;
int b;
%}
num_seq [0-9]*
%%
{num_seq}[0|2|4|6|8] {printf("Even number [%d]",yyleng);
return atoi(yytext);
}
{num_seq}[1|3|5|7|9] {printf("Odd number [%d]",yyleng);
return atoi(yytext);
}
%%
int yywrap(void){}
int main(){
printf("\n Input an even number and odd number\n");
a = yylex();
b = yylex();
int diff = a - b;
if(diff % 2 != 0)
printf("\n Your inputs were checked for correctness,\nResult: Correct\n");
else
printf("\n Your inputs were checked for correctness,\nResult: Incorrect\n");
return 1;
}
