digit [0-9]
whitespace [\n,\r,\t]

%%
{digit}	printf("Found a HEX number %s !", yytext);
.	printf("");

%%

main()
{
  printf("Give me your input:\n");
  yylex();
}
