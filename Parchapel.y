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
L_err    { _ }


%%

Ident   :: { Ident }   : L_ident  { Ident $1 }
Integer :: { Integer } : L_integ  { (read ( $1)) :: Integer }
Double  :: { Double }  : L_doubl  { (read ( $1)) :: Double }
Char    :: { Char }    : L_charac { (read ( $1)) :: Char }
String  :: { String }  : L_quoted {  $1 }

Boolean :: { Boolean }
Boolean : 'true' { Boolean_true } 
  | 'false' { Boolean_false }
  | 'true' { RTrue }
  | 'false' { RFalse }


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
  | LExpr '[' RExpr ']' { ArrayEl $1 $3 }


RExpr :: { RExpr }
RExpr : RExpr 'by' RExpr { Eby $1 $3 } 
  | RExpr '#' RExpr { Ecount $1 $3 }
  | RExpr 'align' RExpr { Ealign $1 $3 }
  | RExpr '||' RExpr { Elor $1 $3 } 
  | RExpr '&&' RExpr { Eland $1 $3 } 
  | RExpr '==' RExpr { Eeq $1 $3 } 
  | RExpr '!=' RExpr { Eneq $1 $3 }
  | RExpr '<=' RExpr { Eleq $1 $3 } 
  | RExpr '>=' RExpr { Egeq $1 $3 }
  | RExpr '<' RExpr { El $1 $3 }
  | RExpr '>' RExpr { Eg $1 $3 }
  | RExpr '..' RExpr { Erange $1 $3 } 
  | RExpr '+' RExpr { Eadd $1 $3 } 
  | RExpr '-' RExpr { Esub $1 $3 }
  | RExpr '|' RExpr { Ebitor $1 $3 } 
  | RExpr '^' RExpr { Ebitxor $1 $3 } 
  | RExpr '&' RExpr { Ebitand $1 $3 } 
  | RExpr '<<' RExpr { Eleft $1 $3 } 
  | RExpr '>>' RExpr { Eright $1 $3 }
  |'+' RExpr { Eupos $2 } 
  | '-' RExpr { Euneg $2 }
  | RExpr '*' RExpr { Emul $1 $3 } 
  | RExpr '/' RExpr { Ediv $1 $3 }
  | RExpr '%' RExpr { Emod $1 $3 }
  | '!' RExpr { Eneg $2 } 
  | '~' RExpr { Ebneg $2 }
  | RExpr 'reduce' RExpr { Ereduce $1 $3 } 
  | RExpr 'scan' RExpr { Escan $1 $3 }
  | RExpr 'dmapped' RExpr { Edmapped $1 $3 }
  | '**' RExpr { Eexp $2 } 
  | RExpr ':' RExpr { Ecast $1 $3 } 
  | 'by' RExpr { Enew $2 } 
  | RExpr '.' RExpr { Emember $1 $3 } 
  | RExpr '(' ')' { Efunc $1 }
  | RExpr '(' ListArg ')' { EfuncPar $1 $3 }
  | RExpr '[' RExpr ']' { Eindex $1 $3 }
  | BasicType { Econs $1 } 
  | LExpr { LExpr $1 } 
  | '(' RExpr ')' { $2 }


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

