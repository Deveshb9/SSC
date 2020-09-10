%{
    #include<stdio.h>
%}
letter [a-zA-Z]
digit   [0-9]
id  {letter}({letter}|{digit})*
numbers {digit}+(.{digit}+)?(E[+-]?{digit}+)?
%%
{id} {printf("id:%s",yytext);}
{numbers} {printf("numbers:%s",yytext);}
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {

}