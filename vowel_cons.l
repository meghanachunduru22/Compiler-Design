%{
#include<stdio.h>
int v=0;
int c=0;
%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
%%
int yywrap(){
return 1;
}
int main(){
printf("Enter the String..at end press ^d\n");
yylex();
printf("Number of Vowels=%d\nNumber of Consonants=%d\n",v,c);
return 0;
}
