//Lex program to check Capital words in string

%{
#include<stdio.h>
%}
%%
[A-Z]+[ \t\n] {printf("%s is capital!\n",yytext);}
. ; 
%%
int yywrap()
{
 return 1;
}
int main()
{
 printf("Enter input : ");
 yylex();
 return 0;
}
