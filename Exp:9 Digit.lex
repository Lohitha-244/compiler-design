%{
#include <stdio.h>
%}

%%
[0-9]   { printf("The input is a digit: %s\n", yytext); }
.       { printf("The input is not a digit: %s\n", yytext); }
%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
