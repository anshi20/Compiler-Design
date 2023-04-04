%{
#include<stdio.h>
int integers=0,floats=0;
%}
%%
[-?0-9]+ {printf("%s is a integer number!",yytext); integers++;}
[-?0-9]*"."[0-9]+ {printf("%s is a floating point number",yytext); floats++;}
%%
int yywrap()
{
	return 1;
}
int main()
{
	printf("Enter the input : ");
	yylex();
	printf("No of integers : %d",integers);
	printf("No of integers : %d",floats);
	return 0;
}
