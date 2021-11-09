%{
    #include <stdio.h>
    int yylex(void);
    void yyerror(char *);    
%}

%token PLUS MINUS TIMES DIVISION ASSIGNMENT NUMBER_LITERAL TEXT_LITERAL
%token N NUMBER TEXT IDENTIFIER 
%token EQUALS NOT_EQUALS BIGGER_THAN LESS_THAN
%token IF IFNOT WHILE
%start program

%%

program:         statements;

statements:      statements statement | statement;

statement:       expressions N | if_statement | while_statement | N;

if_statement:    IF expression N statements
                 |
                 IF expression N statements IFNOT statements
                 ;

while_statement: WHILE expression N statements;

expressions:     expression | expression expressions ; 

expression:      
                 expression ASSIGNMENT expression 
                 |
                 expression DIVISION expression 
                 |
                 expression TIMES expression 
                 | 
                 expression MINUS expression 
                 |
                 expression PLUS expression 
                 |  
                 expression boolean_expression expression
                 |
                 declaration
                 |
                 IDENTIFIER
                 |
                 literal ;

boolean_expression:     EQUALS | NOT_EQUALS | BIGGER_THAN | LESS_THAN;

declaration:     NUMBER IDENTIFIER | TEXT IDENTIFIER;

literal:         NUMBER_LITERAL | TEXT_LITERAL


%%

#include "lex.yy.c"
int lineCounter=1;
int check = 0;
void yyerror(char *s)
{
    printf ("%s on line %d\n", s, lineCounter);
    check = 1;
}

int main(void)
{
    yyparse();
    if ( check == 0 )
    {
        printf ("OK!\n");
    }
}
