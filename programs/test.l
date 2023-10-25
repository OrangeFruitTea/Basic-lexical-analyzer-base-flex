%{
#include <stdio.h>
#include <stdlib.h>
int keys = 0;
int marks = 0;
%}

MARK [a-zA-Z]+[a-zA-Z0-9_]*
KEY if|else|int|double|return

%%

{KEY} {printf("KEY "); keys++;}
{MARK} {printf("MARK "); marks++;}
\( {printf("LPA ");}
\) {printf("RPA ");}
[\>\<] {printf("COMPARE ");}
= {printf("ASSIGN ");}
; {printf("; ");}
\n {printf("\n");}
[1-9]+[0-9]* {printf("NUM ");}
.

%%

int main(int argc, char **argv)
{
    yylex();
    printf("MARKS = %d\nKEYS = %d\n", marks, keys);

}
int yywrap()
{
	return 1;
}
