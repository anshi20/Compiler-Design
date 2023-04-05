%{
%}
%%
"<"[^>]*">"([^<]|[<]+[^/])*[<]+"/"[^>]*">" fprintf(yyout,"%s",yytext);
. ;
%%
int yywrap(){}
int main(int argc, int *argv[])
{
extern FILE *yyin,*yyout;
yyin = fopen("inp.html","r");
yyout = fopen("out2.html","w");
yylex();
return 0;
}
