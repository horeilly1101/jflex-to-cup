/* The code for our tokenizer. */

// package declaration

import java_cup.runtime.*;

%%

/* Options and declarations */

%class Scanner
%unicode
%line
%column
%public
%cup

%{
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}

// e.g. Whitespace  	= [ \t\n]+
// e.g. Number 			= 0|[1-9][0-9]*

%%

/* Lexical Rules */

// e.g. { Whitespace }  { /* do nothing */ }
// e.g. { Number }		{ return symbol(sym.NUMBER, yytext()); }
// e.g. "+"				{ return symbol(sym.PLUS); }

// need someway to deal with bad input
.               		{ return symbol(sym.error); }