%{
#include<stdio.h>
%}
%%
"<"[^>]*">" {fprintf(yyout, "%s", yytext);}
. ;
%%
int yywrap(){return 1;}
int main()
{
extern FILE *yyin,*yyout;
yyin = fopen("input2.html","r");
yyout = fopen("out2.txt","w");
yylex();
}
