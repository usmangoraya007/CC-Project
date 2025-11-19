%{
#include <stdio.h>
int line_num = 1;
%}

DIGIT    [0-9]
ID       [a-zA-Z_][a-zA-Z0-9_]*
WORD     [a-zA-Z]+

%%

\n                { line_num++; }
\r                ;
[ \t]+            ;

"//".*            ;

"<<"              { printf("Line %d: LEFT_OP -> %s\n", line_num, yytext); }
">>"              { printf("Line %d: RIGHT_OP -> %s\n", line_num, yytext); }

"Je_tu"           { printf("Line %d: KEYWORD_IF -> %s\n", line_num, yytext); }
"Nai_te"          { printf("Line %d: KEYWORD_ELSE -> %s\n", line_num, yytext); }
"Ikojya"          { printf("Line %d: KEYWORD_FOR -> %s\n", line_num, yytext); }
"Diyo"            { printf("Line %d: KEYWORD_RETURN -> %s\n", line_num, yytext); }
"Sahi"            { printf("Line %d: KEYWORD_TRUE -> %s\n", line_num, yytext); }
"Ghalat"          { printf("Line %d: KEYWORD_FALSE -> %s\n", line_num, yytext); }
"Lena"            { printf("Line %d: KEYWORD_CIN -> %s\n", line_num, yytext); }
"Wakhao"          { printf("Line %d: KEYWORD_COUT -> %s\n", line_num, yytext); }
"Rakam"           { printf("Line %d: KEYWORD_INT -> %s\n", line_num, yytext); }
"Lafz"            { printf("Line %d: KEYWORD_CHAR -> %s\n", line_num, yytext); }
"Ruk"             { printf("Line %d: KEYWORD_BREAK -> %s\n", line_num, yytext); }
"Khokla"          { printf("Line %d: KEYWORD_VOID -> %s\n", line_num, yytext); }
"Yan"             { printf("Line %d: KEYWORD_OR -> %s\n", line_num, yytext); }
"Aur"             { printf("Line %d: KEYWORD_AND -> %s\n", line_num, yytext); }
"Ashariye"        { printf("Line %d: KEYWORD_FLOAT -> %s\n", line_num, yytext); }

"zarab"           { printf("Line %d: OP_MULT -> %s\n", line_num, yytext); }
"jorna"           { printf("Line %d: OP_ADD -> %s\n", line_num, yytext); }
"ghatana"         { printf("Line %d: OP_SUB -> %s\n", line_num, yytext); }
"taqseem"         { printf("Line %d: OP_DIV -> %s\n", line_num, yytext); }

"=="              { printf("Line %d: OP_EQ -> %s\n", line_num, yytext); }
"="               { printf("Line %d: OP_ASSIGN -> %s\n", line_num, yytext); }
">"               { printf("Line %d: OP_GT -> %s\n", line_num, yytext); }
"<"               { printf("Line %d: OP_LT -> %s\n", line_num, yytext); }
"!"               { printf("Line %d: OP_NOT -> %s\n", line_num, yytext); }

"{"               { printf("Line %d: LBRACE -> %s\n", line_num, yytext); }
"}"               { printf("Line %d: RBRACE -> %s\n", line_num, yytext); }
";"               { printf("Line %d: SEMICOLON -> %s\n", line_num, yytext); }

{DIGIT}+\.{DIGIT}+  { printf("Line %d: FLOAT -> %s\n", line_num, yytext); }
{DIGIT}+            { printf("Line %d: INTEGER -> %s\n", line_num, yytext); }

\"([^"\\]|\\[\\"tn])*\"   { printf("Line %d: STRING -> %s\n", line_num, yytext); }
\'[^']\'                 { printf("Line %d: CHAR -> %s\n", line_num, yytext); }

{ID}               { printf("Line %d: IDENTIFIER -> %s\n", line_num, yytext); }

.                  { printf("Line %d: ERROR -> %s\n", line_num, yytext); }

%%

int main() {
    yylex();
    return 0;
}

