%{
#include<stdio.h>
int lc=0, wc=0, sc=0, cc=0;
%}
%%
[\n] {lc++; cc+=yyleng;}
[ \t] {sc++; cc+=yyleng;}
[^\t\n ]+ {wc++; cc+=yyleng;}
%%
int yywrap()
{
 return 1;
}
int main()
{
 printf("Enter your input : ");
 yylex();
 printf("No. of lines : %d\n",lc);
 printf("No. of words : %d\n",wc);
 printf("No. of spaces : %d\n",sc);
 printf("No. of characters : %d\n",cc);
 return 0;
}
