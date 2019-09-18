%{
#include < stdio.h >
%}
%token NUM
%left '+''-'
%left '*''/'
%%
expr: e {printf("Result :%d\n",$1); return 0;};  e: e'+'e{$$=$1+$3;}
| e'-'e {$$=$1-$3;}
| e'*'e {$$=$1*$3;}
| e'/'e {$$=$1/$3;}
| '('e')'{$$=$2;}
| NUM {$$=$1;};
%%
main()
{
printf("type the expression and pressenterkey\n"); yyparse();
printf("valid expression\n");
}
yyerror()
{
printf("invalid expression\n");
exit(0);
}
