%{
#include<stdio.h>
%}
%%
[ \n\t]+ fprintf(yyout," ");
. fprintf(yyout,"%s",yytext);
%%
int yywrap()
{
return 1;
}
int main()
{
extern FILE *yyin, *yyout;
yyin = fopen("input2.html","r");
yyout = fopen("output.txt","w");
yylex();
return 0;
}
