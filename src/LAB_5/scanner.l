/*Devesh Bhogre PB47 Lex javascan*/
%{
#include<stdio.h>
%}

letter [a-zA-Z]
digit [0-9]
id ({letter}({letter}|{digit})*)
classname (({letter}|{digit})*)
quote \"
space [' ']
datatype (int|char|float|void)
keyword (class|throws|import|try|catch|finally|static|implements|main)
booleanvalues (true|false)
loops (while|for|do)
conditionalstmts (if|else|switch)
string ({quote}({letter}|{digit})+{quote})
array ({id}(\[))
usrfunction ({keyword}(\())
predefinedclass (Exception|String|Integer|Float|Character|ArithmaticException)
userdefinedclass (class{space}{classname})
predefinedfunction (main|println|Scanner|nextInt|next|nextLine)
package (import{space}{id}(\.{id})*(\.\*)?)
param ({string}|{digit}+|({digit}+\.{digit}+)|{id})
params (({param}(\,{param})*)?)
assignment ({id}\=({string}|{digit}+|({digit}+\.{digit}+)|new{space}(({datatype}(\[([0-9]{1,3})?\])*)|(({classname}|{predefinedclass})\({params}\)))))
operators ((\+\+)|(\-\-)|(\>\=)|(\<\=)|(\=\=)|(\!\=)|(\+\=))
accessspecifiers (public|private|protected)
%%

{accessspecifiers}             {  printf("\n %s is access specifier", yytext);}
{package}                      {   printf("\n %s is a package",yytext);}
{operators}                     {  printf("\n %s is operator",yytext);}
{assignment}                    {  printf("\n %s is assignment",yytext);}
{predefinedclass}               {   printf("\n %s is a predefined class",yytext);}
{booleanvalues}			{printf("\n %s is a boolean value",yytext);}
{conditionalstmts}             {printf("\n %s is a conditional stmt",yytext);}
{loops}                       {  printf("\n %s is a loop",yytext);}
{keyword}                     {  printf("\n %s is a keyword", yytext);}
{predefinedfunction}          {printf("\n %s is predefined function",yytext);}
{usrfunction}                  {printf("\n %s is a function",yytext);}
{array}                        { printf("\n %s is an array",yytext);}
{string}                              { printf("\n %s is a string",yytext);}
{datatype}                            {printf("\n %s is a datatype",yytext);}
{id}                                  {	printf("\n %s is an id",yytext);     }
%%

int main()		
{
yyin=fopen("StringFunctions.java","r");
yylex();
yywrap();
}

int yywrap()
{
return 1;
}




