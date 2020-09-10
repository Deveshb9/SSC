%%
"<"  {printf("%s is less than operator ", yytext);}
">"  {printf("%s is greater than operator ", yytext);}
"<=" {printf("%s is less than equal to operator ", yytext);}
">=" {printf("%s is greater than equal to operator ", yytext);}
"==" {printf("%s is equal to operator ", yytext);}
"!=" {printf("%s is not equal to operator ", yytext);}
"if" {printf("%s is a keyword ", yytext);}
"else" {printf("%s is a keyword ", yytext);}
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {

}