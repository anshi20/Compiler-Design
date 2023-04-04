//Count the number of words, keywords and numbers entered by user

%{
#include<stdio.h>
int keyw=0, n=0, w=0;
%}
%%
if|else|printf|switch|case|while {printf("%s is a keyword!\n",yytext); keyw++;}
[0-9]+ {printf("%s is a number!\n",yytext); n++;}
[a-zA-Z]+ {printf("%s is a word!\n",yytext); w++;}
.;
%%
int yywrap()
{
 return 1;
}
int main()
{
 printf("\nEnter input : \n");
 yylex();
 printf("\nTotal words : %d\nTotal keywords : %d\nTotal numbers : %d",w,keyw,n);
 return 0;
}
