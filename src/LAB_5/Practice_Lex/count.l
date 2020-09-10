%{
    #include<stdio.h>
    #include<string.h>
    int i = 0;
%}
word ([a-zA-Z0-9])*  /*regular defination*/
%%
word {i++;}                       
"\n" {printf("%d\n",i);i=0;}
%%

int main() {
    /*The function that starts the analysis*/
    yylex();
    return 0;
}

int yywrap(void) {
return 0;
}