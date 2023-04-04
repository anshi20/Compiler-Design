/* Lex program to count number of vowels and consonants */
%{
#include<stdio.h>
int v=0;
int c=0;
%}
%%
[ \t\n]+ ;
[0-9]+ ;
[aeiouAEIOU] {v++;}
[^aeiouAEIOU] {c++;}
%%
int yywrap()
{
 return 1;
}
int main()
{
 printf("Enter input : ");
 yylex();
 printf("No. of vowels : %d\n",v);
 printf("No. of consonants : %d\n",c);
 return 0;
}

