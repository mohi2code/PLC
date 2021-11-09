%{
#include <stdlib.h>
void yyerror(char*);
#include "mohi.tab.h"
extern int lineCounter; 
%}

%%

"+"          return PLUS;
"-"          return MINUS;
"*"          return TIMES;
"/"          return DIVISION;
"="          return ASSIGNMENT;

"equals"        return EQUALS;
"not equals"    return NOT_EQUALS;
"bigger than"   return BIGGER_THAN;
"less than"     return LESS_THAN;

"number "    return NUMBER;
"text "      return TEXT;

"if "        return IF;
"if not "    return IFNOT;   

"while "     return WHILE;

[+-]?[0-9]+            return NUMBER_LITERAL;

[a-zA-Z]+              return TEXT_LITERAL;

_[a-zA-Z0-9]+      return IDENTIFIER;


\n           return N;

[ \t]        ;

.            yyerror("invalid character");

%%

int yywrap(void)
{
    return 1;
}


