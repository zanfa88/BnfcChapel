-- This Happy file was machine-generated by the BNF converter
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module Parchapel where
import Abschapel
import Lexchapel
import ErrM
import Envchapel
}

%attributetype    {MyAttribute a}
%attribute parsetree  {a}
%attribute tip        {Type}      -- tipo nodo
%attribute err        {String}    -- errore
%attribute addr       {String}
%attribute envIn      {[Env]}    --contiene l'environment per le variabili in input ad un nodo
%attribute envOut     {[Env]}    --contiene l'environment per le variabili in output da un nodo

%name pProgram Program

-- no lexer declaration
%monad { Err } { thenM } { returnM }
%tokentype { Token }

%token 
 '+' { PT _ (TS _ 1) }
 ',' { PT _ (TS _ 2) }
 '/' { PT _ (TS _ 3) }
 ':' { PT _ (TS _ 4) }
 ';' { PT _ (TS _ 5) }
 '=' { PT _ (TS _ 6) }
 '>' { PT _ (TS _ 7) }
 'boolean' { PT _ (TS _ 8) }
 'char' { PT _ (TS _ 9) }
 'false' { PT _ (TS _ 10) }
 'int' { PT _ (TS _ 11) }
 'real' { PT _ (TS _ 12) }
 'string' { PT _ (TS _ 13) }
 'true' { PT _ (TS _ 14) }
 'var' { PT _ (TS _ 15) }

L_integ  { PT _ (TI $$) }
L_doubl  { PT _ (TD $$) }
L_charac { PT _ (TC $$) }
L_quoted { PT _ (TL $$) }
L_Iden { PT _ (T_Iden $$) }
L_err    { _ }


%%

Integer : L_integ   { $$ = ((read ( $1)) :: Integer); }
Double  : L_doubl   { $$ = ((read ( $1)) :: Double); }
Char    : L_charac  { $$ = ((read ( $1)) :: Char); }
String  : L_quoted  { $$ = ($1); }
Iden    : L_Iden    { $$ = (Iden ($1));}

Program : ListStmt  { $$        = RProg $1 ;
                      $$.tip    = TypeVoid ;
                      $$.envIn  = [] ;
                      $1.envIn  = $$.envIn ;
                      $$.envOut = $1.envOut ;
                    } 

Stmt : LExp '=' RExp  { $$        = RAssign $1 $3 ;
                        $$.tip    = TypeVoid ;
                        $1.envIn  = $$.envIn ;
                        $$.err     = (checkDefVar $1.tip $3.tip) ;
                        where ( 
                          if ($1.tip == VarNotDec)
                            then (Bad $ "Variable "++(show $1)++" not declared ")
                            else (   
                              if ($$.err == "")
                                then (Ok())
                                else (Bad $ "Assigment of variable "++(show $3.tip)++" to a variable of type "++(show $1.tip)++" not allowed.")
                            )
                        ) ;
                      } 
  | StmtVar { $$        = RDecVar $1 ;
              $1.envIn  = $$.envIn ;
              $$.envOut = $1.envOut ;
  }

BasicType 
  : Integer   { $$ = RInt $1 ;
                $$.tip = RTypeInt ;
                $$.err = "" ;
                $$.addr = show $1 ;
              } 
  | Double    { $$ = RFloat $1 ;
                $$.tip = RTypeFloat ;
                $$.err = "" ;
                $$.addr = show $1 ;
              } 
  | Char      { $$ = RChar $1 }
  | String    { $$ = RString $1 }
  | Boolean   { $$ = RBoolean $1 }


LExp : Iden { $$      = RLExp $1 ;
              $$.tip  = (getVarTip $$.envIn $1) ; 
              where ( if ($$.tip == VarNotDec)
                        then (Bad $ "Variable "++(show $1)++" not declared ")
                        else (Ok())
              ) ;
            }  

RExp : RExp '+' RExp { $$      = RAdd $1 $3 ;
                      $$.err  = (checkEqualType $1.tip $3.tip) ;
                      where ( if ($$.err == "") then (Ok())
                                                else (Bad $ "Error on operation RAdd at " ++ tokenPos2 $2 ++ ". Type are different")
                      ) ;
                    } 
  | RExp '>' RExp { $$      = RGre $1 $3 }
  | RExp '/' RExp { $$      = RDiv $1 $3 
                  }
  | BasicType { $$      = RElem $1 ;
                $$.tip  = $1.tip ;
              }

StmtVar : 'var' ListBlockVar { 
                              $$ = RVarBlock $2 ;
                              $2.envIn = $$.envIn ;
                              $$.envOut = $2.envOut ; 
                              } 

BlockVar : Iden ':' Type '=' RExp { 
  $$          = RBlockVar $1 $3 $5 ;
  $$.envOut   = (insVarEnv (Var $1 $3.tip) []);
  $$.err      = (checkDefVar $3 $5.tip) ;
  where ( if ($$.err == "")   
    then (Ok())
    else (Bad $ "Error on variable assignment at " ++ tokenPos2 $2 ++ ". Type are different")
    ) ;
  }   

Boolean : 'true' { $$ = RTrue } 
  | 'false' { $$ = RFalse }


Type : 'int' { $$ = RTypeInt ; $$.tip = $$ ;} 
  | 'real' { $$ = RTypeFloat ; $$.tip = $$ ; }
  | 'char' { $$ = RTypeChar ; $$.tip = $$ ; }
  | 'string' { $$ = RTypeString ; $$.tip = $$ ; }
  | 'boolean' { $$ = RTypeBool ; $$.tip = $$ ;}

ListBlockVar 
  : {- empty -}               { $$ = [] ; $$.envOut = $$.envIn } 
  | BlockVar                  { $$ = (:[]) $1 ; 
                                $$.envOut = $1.envOut ;
                                $1.envIn = $$.envIn ;
                                }
  | BlockVar ',' ListBlockVar { $$ = (:) $1 $3 ; 
                                $$.envOut = $3.envOut ; 
                                $1.envIn = $$.envIn ;
                                $3.envIn = $1.envOut ;
                                }

ListStmt 
  : {- empty -} { $$ = ([]) ; 
                  $$.envOut = $$.envIn ;
                } 
  | Stmt              { $$ = ((:[]) $1) ;
                        $1.envIn  = $$.envIn ;
                      }
  | Stmt ';' ListStmt { $$ = ((:) $1 $3) ; 
                        $1.envIn = $$.envIn ;
                        $3.envIn = $1.envOut ;
                        $$.envOut = $3.envOut ;
                      }


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

