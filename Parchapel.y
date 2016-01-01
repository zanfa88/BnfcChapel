-- This Happy file was machine-generated by the BNF converter
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module Parchapel where
import Abschapel
import Lexchapel
import ErrM

}

%name pProgram Program

-- no lexer declaration
%monad { Err } { thenM } { returnM }
%tokentype { Token }

%token 
 '!' { PT _ (TS _ 1) }
 '!=' { PT _ (TS _ 2) }
 '#' { PT _ (TS _ 3) }
 '%' { PT _ (TS _ 4) }
 '%=' { PT _ (TS _ 5) }
 '&' { PT _ (TS _ 6) }
 '&&' { PT _ (TS _ 7) }
 '&&=' { PT _ (TS _ 8) }
 '&=' { PT _ (TS _ 9) }
 '(' { PT _ (TS _ 10) }
 ')' { PT _ (TS _ 11) }
 '*' { PT _ (TS _ 12) }
 '**' { PT _ (TS _ 13) }
 '**=' { PT _ (TS _ 14) }
 '*=' { PT _ (TS _ 15) }
 '+' { PT _ (TS _ 16) }
 '+=' { PT _ (TS _ 17) }
 ',' { PT _ (TS _ 18) }
 '-' { PT _ (TS _ 19) }
 '-=' { PT _ (TS _ 20) }
 '.' { PT _ (TS _ 21) }
 '..' { PT _ (TS _ 22) }
 '/' { PT _ (TS _ 23) }
 '/=' { PT _ (TS _ 24) }
 ':' { PT _ (TS _ 25) }
 ';' { PT _ (TS _ 26) }
 '<' { PT _ (TS _ 27) }
 '<<' { PT _ (TS _ 28) }
 '<<=' { PT _ (TS _ 29) }
 '<=' { PT _ (TS _ 30) }
 '=' { PT _ (TS _ 31) }
 '==' { PT _ (TS _ 32) }
 '>' { PT _ (TS _ 33) }
 '>=' { PT _ (TS _ 34) }
 '>>' { PT _ (TS _ 35) }
 '>>=' { PT _ (TS _ 36) }
 '[' { PT _ (TS _ 37) }
 ']' { PT _ (TS _ 38) }
 '^' { PT _ (TS _ 39) }
 '^=' { PT _ (TS _ 40) }
 'align' { PT _ (TS _ 41) }
 'boolean' { PT _ (TS _ 42) }
 'break' { PT _ (TS _ 43) }
 'by' { PT _ (TS _ 44) }
 'char' { PT _ (TS _ 45) }
 'const' { PT _ (TS _ 46) }
 'continue' { PT _ (TS _ 47) }
 'dmapped' { PT _ (TS _ 48) }
 'do' { PT _ (TS _ 49) }
 'false' { PT _ (TS _ 50) }
 'for' { PT _ (TS _ 51) }
 'function' { PT _ (TS _ 52) }
 'if' { PT _ (TS _ 53) }
 'in' { PT _ (TS _ 54) }
 'int' { PT _ (TS _ 55) }
 'readChar' { PT _ (TS _ 56) }
 'readInt' { PT _ (TS _ 57) }
 'readReal' { PT _ (TS _ 58) }
 'readString' { PT _ (TS _ 59) }
 'real' { PT _ (TS _ 60) }
 'reduce' { PT _ (TS _ 61) }
 'scan' { PT _ (TS _ 62) }
 'string' { PT _ (TS _ 63) }
 'then' { PT _ (TS _ 64) }
 'true' { PT _ (TS _ 65) }
 'var' { PT _ (TS _ 66) }
 'while' { PT _ (TS _ 67) }
 'writeChar' { PT _ (TS _ 68) }
 'writeInt' { PT _ (TS _ 69) }
 'writeReal' { PT _ (TS _ 70) }
 'writeString' { PT _ (TS _ 71) }
 '{' { PT _ (TS _ 72) }
 '|' { PT _ (TS _ 73) }
 '|=' { PT _ (TS _ 74) }
 '||' { PT _ (TS _ 75) }
 '||=' { PT _ (TS _ 76) }
 '}' { PT _ (TS _ 77) }
 '~' { PT _ (TS _ 78) }

L_ident  { PT _ (TV $$) }
L_integ  { PT _ (TI $$) }
L_doubl  { PT _ (TD $$) }
L_charac { PT _ (TC $$) }
L_quoted { PT _ (TL $$) }

%%

Ident   :: { Ident }   : L_ident  { Ident $1 }
Integer :: { Integer } : L_integ  { (read ( $1)) :: Integer }
Double  :: { Double }  : L_doubl  { (read ( $1)) :: Double }
Char    :: { Char }    : L_charac { (read ( $1)) :: Char }
String  :: { String }  : L_quoted {  $1 }

Program :: { Program }
Program : ListStmt { Prog $1 } 


Stmt :: { Stmt }
Stmt : LExpr Assignment_op RExpr ';' { Assgn $1 $2 $3 } 
  | StmtCondition { Cond $1 }
  | StmtWhile { While $1 }
  | StmtDo { Do $1 }
  | StmtFor { For $1 }
  | StmtJump ';' { Jump $1 }
  | StmtWrite ';' { Write $1 }
  | StmtRead ';' { Read $1 }
  | StmtVar ';' { VarD $1 }
  | DefFunc { DFunc $1 }
  | CallFunc { CFunc $1 }


LExpr :: { LExpr }
LExpr : Ident { Id $1 } 
  | LExpr '[' RExpr20 ']' { ArrayEl $1 $3 }


RExpr :: { RExpr }
RExpr : RExpr 'by' RExpr2 { Eby $1 $3 } 
  | RExpr '#' RExpr2 { Ecount $1 $3 }
  | RExpr 'align' RExpr2 { Ealign $1 $3 }
  | RExpr1 { $1 }


RExpr2 :: { RExpr }
RExpr2 : RExpr2 '||' RExpr3 { Elor $1 $3 } 
  | RExpr3 { $1 }


RExpr3 :: { RExpr }
RExpr3 : RExpr3 '&&' RExpr4 { Eland $1 $3 } 
  | RExpr4 { $1 }


RExpr4 :: { RExpr }
RExpr4 : RExpr4 '==' RExpr5 { Eeq $1 $3 } 
  | RExpr4 '!=' RExpr5 { Eneq $1 $3 }
  | RExpr5 { $1 }


RExpr5 :: { RExpr }
RExpr5 : RExpr5 '<=' RExpr6 { Eleq $1 $3 } 
  | RExpr5 '>=' RExpr6 { Egeq $1 $3 }
  | RExpr5 '<' RExpr6 { El $1 $3 }
  | RExpr5 '>' RExpr6 { Eg $1 $3 }
  | RExpr6 { $1 }


RExpr6 :: { RExpr }
RExpr6 : RExpr6 '..' RExpr7 { Erange $1 $3 } 
  | RExpr7 { $1 }


RExpr7 :: { RExpr }
RExpr7 : RExpr7 '+' RExpr8 { Eadd $1 $3 } 
  | RExpr7 '-' RExpr8 { Esub $1 $3 }
  | RExpr8 { $1 }


RExpr8 :: { RExpr }
RExpr8 : RExpr8 '|' RExpr9 { Ebitor $1 $3 } 
  | RExpr9 { $1 }


RExpr9 :: { RExpr }
RExpr9 : RExpr9 '^' RExpr10 { Ebitxor $1 $3 } 
  | RExpr10 { $1 }


RExpr10 :: { RExpr }
RExpr10 : RExpr10 '&' RExpr11 { Ebitand $1 $3 } 
  | RExpr11 { $1 }


RExpr11 :: { RExpr }
RExpr11 : RExpr11 '<<' RExpr12 { Eleft $1 $3 } 
  | RExpr11 '>>' RExpr12 { Eright $1 $3 }
  | RExpr12 { $1 }


RExpr12 :: { RExpr }
RExpr12 : '+' RExpr12 { Eupos $2 } 
  | '-' RExpr12 { Euneg $2 }
  | RExpr13 { $1 }


RExpr13 :: { RExpr }
RExpr13 : RExpr13 '*' RExpr14 { Emul $1 $3 } 
  | RExpr13 '/' RExpr14 { Ediv $1 $3 }
  | RExpr13 '%' RExpr14 { Emod $1 $3 }
  | RExpr14 { $1 }


RExpr14 :: { RExpr }
RExpr14 : '!' RExpr14 { Eneg $2 } 
  | '~' RExpr14 { Ebneg $2 }
  | RExpr15 { $1 }


RExpr15 :: { RExpr }
RExpr15 : RExpr15 'reduce' RExpr16 { Ereduce $1 $3 } 
  | RExpr15 'scan' RExpr16 { Escan $1 $3 }
  | RExpr15 'dmapped' RExpr16 { Edmapped $1 $3 }
  | RExpr16 { $1 }


RExpr16 :: { RExpr }
RExpr16 : '**' RExpr16 { Eexp $2 } 
  | RExpr17 { $1 }


RExpr17 :: { RExpr }
RExpr17 : RExpr17 ':' RExpr18 { Ecast $1 $3 } 
  | RExpr18 { $1 }


RExpr18 :: { RExpr }
RExpr18 : 'by' RExpr18 { Enew $2 } 
  | RExpr19 { $1 }


RExpr19 :: { RExpr }
RExpr19 : RExpr19 '.' RExpr20 { Emember $1 $3 } 
  | RExpr19 '(' ')' { Efunc $1 }
  | RExpr19 '(' ListArg ')' { EfuncPar $1 $3 }
  | RExpr19 '[' RExpr ']' { Eindex $1 $3 }
  | RExpr20 { $1 }


RExpr20 :: { RExpr }
RExpr20 : BasicType { Econs $1 } 
  | RExpr21 { $1 }


RExpr21 :: { RExpr }
RExpr21 : LExpr { LExpr $1 } 
  | '(' RExpr ')' { $2 }


RExpr1 :: { RExpr }
RExpr1 : RExpr2 { $1 } 


Assignment_op :: { Assignment_op }
Assignment_op : '=' { AssgnBase } 
  | '+=' { AssgnBase }
  | '-=' { AssgnBase }
  | '*=' { AssgnBase }
  | '/=' { AssgnBase }
  | '%=' { AssgnBase }
  | '**=' { AssgnBase }
  | '&=' { AssgnBase }
  | '&&=' { AssgnBase }
  | '|=' { AssgnBase }
  | '||=' { AssgnBase }
  | '<<=' { AssgnBase }
  | '>>=' { AssgnBase }
  | '^=' { AssgnBase }


StmtWrite :: { StmtWrite }
StmtWrite : 'writeInt' '(' Integer ')' { WriteInt $3 } 
  | 'writeReal' '(' Double ')' { WriteReal $3 }
  | 'writeChar' '(' Char ')' { WriteChar $3 }
  | 'writeString' '(' String ')' { WriteString $3 }


StmtRead :: { StmtRead }
StmtRead : 'readInt' '(' Integer ')' { ReadInt $3 } 
  | 'readReal' '(' Double ')' { ReadReal $3 }
  | 'readChar' '(' Char ')' { ReadChar $3 }
  | 'readString' '(' String ')' { ReadString $3 }


StmtCondition :: { StmtCondition }
StmtCondition : 'if' RExpr 'then' Stmt { If1 $2 $4 } 
  | 'if' '(' RExpr ')' '{' ListStmt '}' { If2 $3 $6 }


StmtWhile :: { StmtWhile }
StmtWhile : 'while' RExpr 'do' Stmt { WhileDo $2 $4 } 
  | 'while' RExpr '{' ListStmt '}' { WhileDoS $2 $4 }


StmtDo :: { StmtDo }
StmtDo : 'do' '{' ListStmt '}' 'while' RExpr ';' { SDo $3 $6 } 


StmtFor :: { StmtFor }
StmtFor : 'for' Ident 'in' Aggr 'do' '{' ListStmt '}' { SForDo $2 $4 $7 } 
  | 'for' Ident 'in' Aggr '{' ListStmt '}' { SForDoBloc $2 $4 $6 }


Aggr :: { Aggr }
Aggr : Integer '..' Integer { ForAggr $1 $3 } 


StmtJump :: { StmtJump }
StmtJump : 'break' { Break } 
  | 'continue' { Continue }


StmtVar :: { StmtVar }
StmtVar : 'var' ListBlockVar { SVarBlock $2 } 
  | 'const' Ident ':' Type '=' RExpr { SVarCon $2 $4 $6 }


BlockVar :: { BlockVar }
BlockVar : Ident ':' Type '=' RExpr { SBlockVar $1 $3 $5 } 


DefFunc :: { DefFunc }
DefFunc : 'function' Ident '(' ListArg ')' '{' ListStmt '}' { SDefFunc $2 $4 $7 } 


CallFunc :: { CallFunc }
CallFunc : Ident '(' ListRExpr ')' ';' { SCallFunc $1 $3 } 


Arg :: { Arg }
Arg : Ident ':' Type { SArg $1 $3 } 
  | '*' Ident ':' Type { PArg $2 $4 }


BasicType :: { BasicType }
BasicType : Integer { RInt $1 } 
  | Double { RDouble $1 }
  | Char { RChar $1 }
  | String { RString $1 }
  | Boolean { RBoolean $1 }


Boolean :: { Boolean }
Boolean : 'true' { RTrue } 
  | 'false' { RFalse }


Type :: { Type }
Type : 'int' { RTypeInt } 
  | 'real' { RTypeDouble }
  | 'char' { RTypeChar }
  | 'string' { RTypeString }
  | 'boolean' { RTypeBool }


ListStmt :: { [Stmt] }
ListStmt : {- empty -} { [] } 
  | Stmt { (:[]) $1 }
  | Stmt ';' ListStmt { (:) $1 $3 }


ListRExpr :: { [RExpr] }
ListRExpr : {- empty -} { [] } 
  | RExpr { (:[]) $1 }
  | RExpr ',' ListRExpr { (:) $1 $3 }


ListBlockVar :: { [BlockVar] }
ListBlockVar : {- empty -} { [] } 
  | BlockVar { (:[]) $1 }
  | BlockVar ',' ListBlockVar { (:) $1 $3 }


ListArg :: { [Arg] }
ListArg : {- empty -} { [] } 
  | Arg { (:[]) $1 }
  | Arg ',' ListArg { (:) $1 $3 }



{

returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
}

