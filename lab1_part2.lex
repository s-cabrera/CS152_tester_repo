/*This is the lex analyzer for reading input files */


%{
#include <math.h>
%}

digit [0-9];

%%
{digit}+	print("NUMBER %s \n", yytext);
"+"	printf("PLUS\n");
"-" printf("MINUS\n");
"*"	printf("MULT\n");
"/"	printf("DIV\n");
"("	printf("LEFT_PAREN\n");
")"	printf("R_PAREN\n");
"="	print("EQUAL\n");
.	printf("error\n", yytext);
%%

int main(int argc, char ** argv){
++argv, --agrc; /*skip over program name*/
if(argc >= 2)
	yyin = fopen(argv[1], "r");
	if(yyin == NULL){
		yyin = stdin;
	}
else{
	yyin = stdin;
	}
yylex();
}

