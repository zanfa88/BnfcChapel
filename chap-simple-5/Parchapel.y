-- This Happy file was machine-generated by the BNF converter
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module Parchapel where
import Abschapel
import Lexchapel
import ErrM
import Envchapel
}


%attributetype        {MyAttribute a}
%attribute parsetree  {a}
%attribute tip        {Type}      -- tipo nodo
%attribute err        {String}    -- errore
%attribute envIn      {[Env]}     -- environment in
%attribute envOut     {[Env]}     -- environment out
%attribute inLoop     {Bool}

%name pProgram Program

-- no lexer declaration
%monad { Err } { thenM } { returnM }
%tokentype { Token }

%token 
 '!=' { PT _ (TS _ 1) }
 '#' { PT _ (TS _ 2) }
 '%' { PT _ (TS _ 3) }
 '&' { PT _ (TS _ 4) }
 '&&' { PT _ (TS _ 5) }
 '(' { PT _ (TS _ 6) }
 ')' { PT _ (TS _ 7) }
 '*' { PT _ (TS _ 8) }
 '+' { PT _ (TS _ 9) }
 ',' { PT _ (TS _ 10) }
 '-' { PT _ (TS _ 11) }
 '..' { PT _ (TS _ 12) }
 '/' { PT _ (TS _ 13) }
 ':' { PT _ (TS _ 14) }
 ';' { PT _ (TS _ 15) }
 '<' { PT _ (TS _ 16) }
 '<=' { PT _ (TS _ 17) }
 '=' { PT _ (TS _ 18) }
 '==' { PT _ (TS _ 19) }
 '>' { PT _ (TS _ 20) }
 '>=' { PT _ (TS _ 21) }
 '[' { PT _ (TS _ 22) }
 ']' { PT _ (TS _ 23) }
 '^' { PT _ (TS _ 24) }
 'boolean' { PT _ (TS _ 25) }
 'break' { PT _ (TS _ 26) }
 'char' { PT _ (TS _ 27) }
 'const' { PT _ (TS _ 28) }
 'continue' { PT _ (TS _ 29) }
 'do' { PT _ (TS _ 30) }
 'false' { PT _ (TS _ 31) }
 'for' { PT _ (TS _ 32) }
 'function' { PT _ (TS _ 33) }
 'if' { PT _ (TS _ 34) }
 'in' { PT _ (TS _ 35) }
 'int' { PT _ (TS _ 36) }
 'readChar' { PT _ (TS _ 37) }
 'readInt' { PT _ (TS _ 38) }
 'readReal' { PT _ (TS _ 39) }
 'readString' { PT _ (TS _ 40) }
 'real' { PT _ (TS _ 41) }
 'string' { PT _ (TS _ 42) }
 'then' { PT _ (TS _ 43) }
 'true' { PT _ (TS _ 44) }
 'var' { PT _ (TS _ 45) }
 'while' { PT _ (TS _ 46) }
 'writeChar' { PT _ (TS _ 47) }
 'writeInt' { PT _ (TS _ 48) }
 'writeReal' { PT _ (TS _ 49) }
 'writeString' { PT _ (TS _ 50) }
 '{' { PT _ (TS _ 51) }
 '|' { PT _ (TS _ 52) }
 '||' { PT _ (TS _ 53) }
 '}' { PT _ (TS _ 54) }

L_ident  { PT _ (TV $$) }
L_integ  { PT _ (TI $$) }
L_doubl  { PT _ (TD $$) }
L_charac { PT _ (TC $$) }
L_quoted { PT _ (TL $$) }
L_err    { _ }


%%

Ident   : L_ident  { $$ =  Ident $1 }
Integer : L_integ  { $$ =  (read ( $1)) :: Integer }
Double  : L_doubl  { $$ =  (read ( $1)) :: Double }
Char    : L_charac { $$ =  (read ( $1)) :: Char }
String  : L_quoted { $$ =   $1 }

Program 
  : ListStmt { 
    $$ = Prog $1 ;
    $$.tip    = TypeVoid ;
    $$.envIn  = [] ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $1.envOut ;
    }

Stmt 
  : LExpr '=' RExpr { 
    $$ =  Assgn $1 $3 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.err    = (checkDefVar $1.tip $3.tip) ;
    where ( 
      if ($1.tip == VarNotDec)
        then (Bad $ (prntErrNotDec $1))
        else (   
          if ($$.err == "")
            then (Ok())
            else (Bad $ (prntErrAss $2 $1.tip $3.tip))
        )
    ) ;
  } 
  | StmtCondition { 
    $$ =  Cond $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $1.envOut ;
  }
  | StmtWhile { 
    $$ =  While $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $1.envOut ;
    }
  | StmtDo { 
    $$ =  Do $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $1.envOut ;
    }
  | StmtFor { 
    $$ = For $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
    }
  | StmtJump { 
    $$ =  Jump $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
  }
  | StmtWrite { 
    $$ =  Write $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
  }
  | StmtRead { 
    $$ =  Read $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
    }
  | StmtVar { 
    $$ =  VarD $1 ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $1.envOut ;
  }
  | DefFunc { 
    $$ =  DFunc $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
  }
  | CallFunc { 
    $$ =  CFunc $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
  }


LExpr 
  : Ident { 
    $$ =  Id $1 ;
    $$.envOut = $$.envIn ; 
    $$.tip  = (getVarTip $$.envIn $1) ; 
    where ( if ($$.tip == VarNotDec)
              then (Bad $ (prntErrNotDec $1))
              else (Ok())
    ) ;
  } 
  | LExpr '[' RExpr ']' { $$ =  ArrayEl $1 $3 }


RExpr 
  : RExpr '#' RExpr { $$ = Ecount $1 $3 } 
  | RExpr '||' RExpr { $$ = Elor $1 $3 } 
  | RExpr '&&' RExpr { $$ = Eland $1 $3 } 
  | RExpr '==' RExpr { 
    $$ = Eeq $1 $3 ;
    $$.tip = RTypeBool ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.err  = (checkEqualType $1.tip $3.tip) ;
    where ( 
      if ($$.err == "") 
        then (Ok())
        else (
          if ($1.tip == VarNotDec) 
            then Bad $ (prntErrNotDec $1 )
            else (
              if ($3.tip == VarNotDec) 
                then Bad $ (prntErrNotDec $3 )
                else Bad $ (prntErrComp $2 )
            )
        )
    ) ;
  }
  | RExpr '!=' RExpr { 
    $$ = Eneq $1 $3 ;
    $$.tip = RTypeBool ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.err  = (checkEqualType $1.tip $3.tip) ;
    where ( 
      if ($$.err == "") 
        then (Ok())
        else (
          if ($1.tip == VarNotDec) 
            then Bad $ (prntErrNotDec $1 )
            else (
              if ($3.tip == VarNotDec) 
                then Bad $ (prntErrNotDec $3 )
                else Bad $ (prntErrComp $2 )
            )
        )
    ) ;
  }
  | RExpr '<=' RExpr { $$ = Eleq $1 $3 } 
  | RExpr '>=' RExpr {$$ =  Egeq $1 $3 }
  | RExpr '<' RExpr { $$ = El $1 $3 }
  | RExpr '>' RExpr {$$ =  Eg $1 $3 }
  | RExpr '..' RExpr { $$ = Erange $1 $3 } 
  | RExpr '+' RExpr { 
    $$ = Eadd $1 $3 ;
    $$.tip  = $1.tip ;
    $$.err  = (checkEqualType $1.tip $3.tip) ;
    where ( if ($$.err == "") 
      then (Ok())
      else (Bad $ (prntErrAdd $2 ))
    ) ;
  } 
  | RExpr '-' RExpr { $$ = Esub $1 $3 }
  | RExpr '|' RExpr { $$ = Ebitor $1 $3 } 
  | RExpr '^' RExpr { $$ = Ebitxor $1 $3 } 
  | RExpr '&' RExpr { $$ = Ebitand $1 $3 } 
  | '+' RExpr { $$ = Eupos $2 } 
  | '-' RExpr {$$ =  Euneg $2 }
  | RExpr '*' RExpr { $$ = Emul $1 $3 } 
  | RExpr '/' RExpr { $$ = Ediv $1 $3 }
  | RExpr '%' RExpr { $$ = Emod $1 $3 }
  | BasicType { 
    $$ = Econs $1 ;
    $$.tip  = $1.tip ;
  } 
  | LExpr { 
    $$ = LExprR $1 ;
    $$.tip  = $1.tip ;
    $1.envIn = $$.envIn ; 
    $$.envOut = $1.envOut ; 
  } 
  | '(' RExpr ')' { $$ = $2 }


StmtWrite 
  : 'writeInt' '(' Integer ')' { $$ = WriteInt $3 } 
  | 'writeReal' '(' Double ')' { $$ = WriteReal $3 }
  | 'writeChar' '(' Char ')' { $$ = WriteChar $3 }
  | 'writeString' '(' String ')' { $$ = WriteString $3 }


StmtRead 
  : 'readInt' '(' Integer ')' { $$ = ReadInt $3 } 
  | 'readReal' '(' Double ')' { $$ = ReadReal $3 }
  | 'readChar' '(' Char ')' { $$ = ReadChar $3 }
  | 'readString' '(' String ')' { $$ = ReadString $3 }


StmtCondition 
  : 'if' RExpr 'then' Stmt {
    $$ = If1 $2 $4 ; 
    $2.envIn = $$.envIn ;
    $4.envIn = $$.envIn ;
    $$.envOut = $4.envOut ;
    $$.err  = (checkEqualType $2.tip RTypeBool) ;
    where ( if ($$.err == "")   
      then (Ok())
      else (Bad $ (prntErrCondNotBool $1))
    ) ;
  } 
  | 'if' '(' RExpr ')' '{' ListStmt '}' { 
    $$ = If2 $3 $6 ;
    $3.envIn = $$.envIn ;
    $6.envIn = $$.envIn ;
    $$.envOut = $6.envOut ;
    $$.err  = (checkEqualType $3.tip RTypeBool) ;
    where ( if ($$.err == "")   
      then (Ok())
      else (Bad $ (prntErrCondNotBool $1))
    ) ;
  }

StmtWhile 
  : 'while' RExpr 'do' Stmt { 
    $$ = WhileDo $2 $4 ;
    $$.inLoop = True;
    $2.envIn = $$.envIn ;
    $4.envIn = $$.envIn ;
    $$.envOut = $4.envOut ;
    $$.err  = (checkEqualType $2.tip RTypeBool) ;
    where ( if ($$.err == "")   
      then (Ok())
      else (Bad $ (prntErrCondNotBool $1))
    ) ;
  }
  | 'while' RExpr '{' ListStmt '}' { 
    $$ = WhileDoS $2 $4 ;
    $2.envIn = $$.envIn ;
    $4.envIn = $$.envIn ;
    $$.envOut = $4.envOut ;
    $$.err  = (checkEqualType $2.tip RTypeBool) ;
    where ( if ($$.err == "")   
      then (Ok())
      else (Bad $ (prntErrCondNotBool $1))
    ) ;
  }


StmtDo 
  : 'do' '{' ListStmt '}' 'while' RExpr ';' { 
    $$ = SDo $3 $6 ;
    $3.envIn = $$.envIn ;
    $6.envIn = $$.envIn ;
    $$.envOut = $3.envOut ;
    $$.err  = (checkEqualType $6.tip RTypeBool) ;
      where ( if ($$.err == "")   
        then (Ok())
        else (Bad $ (prntErrCondNotBool $1))
      ) ;
  } 


StmtFor 
  : 'for' RExpr 'in' Aggr 'do' '{' ListStmt '}' { $$ = SForDo $2 $4 $7 } 
  | 'for' RExpr 'in' Aggr '{' ListStmt '}' { $$ = SForDoBloc $2 $4 $6 }


Aggr 
  : Integer '..' Integer { $$ = ForAggr $1 $3 } 


StmtJump 
  : 'break' { 
    $$ = Break ;
    $$.envIn = $$.envOut;
    $$.err = (if ($$.inLoop) 
      then ""
      else "Syntax error: break statement not in a loop statement! At " ++ tokenPos2 $1
    );
    where (if ($$.inLoop) 
      then Ok()
      else Bad $ ($$.err)
    );
  } 
  | 'continue' { 
    $$ = Continue ;
    $$.envIn = $$.envOut;
    $$.err = (if ($$.inLoop) 
      then ""
      else "Syntax error: continue statement not in a loop statement! At " ++ tokenPos2 $1
    );
    where (if ($$.inLoop) 
      then Ok()
      else Bad $ ($$.err)
    );
  }


Param 
  : RExpr {$$ =  Pval $1 } 
  | '*' RExpr { $$ = Pref $2 }


StmtVar 
  : 'var' ListBlockVar { 
    $$ = SVarBlock $2 ;
    $2.envIn = $$.envIn ;
    $$.envOut = $2.envOut ; 
  } 
  | 'const' ListBlockVar { $$ = SVarCon $2 }


BlockVar 
  : Ident ':' Type '=' RExpr { 
    $$ = SBlockVar $1 $3 $5 ;
    $$.envOut   = (insVarEnv (Var $1 $3.tip) $$.envIn);
    $$.err      = (checkDefVar $3 $5.tip) ;
    where ( if ($$.err == "")   
      then (Ok())
      else (Bad $ (prntErrDiffType $2))
    ) ;
  } 


DefFunc 
  : 'function' Ident '(' ListArg ')' '{' ListStmt '}' { $$ = SDefFunc $2 $4 $7 } 


CallFunc 
  : Ident '(' ListRExpr ')' { $$ = SCallFunc $1 $3 } 


Arg 
  : Ident ':' Type { $$ = SArg $1 $3 } 


BasicType 
  : Integer { 
    $$ = RInt $1 ;
    $$.tip = RTypeInt ;
    $$.err = "" ;
  } 
  | Double { 
    $$ = RDouble $1 ;
    $$.tip = RTypeDouble ;
    $$.err = "" ;
  }
  | Char      { 
    $$ = RChar $1 ;
    $$.tip = RTypeChar ;
  }
  | String    { 
    $$ = RString $1 ;
    $$.tip = RTypeString ;
  }
  | Boolean   { 
    $$ = RBoolean $1 ;
    $$.tip = RTypeBool ;
  }


Boolean   
  : 'true' { $$ = RTrue } 
  | 'false' { $$ = RFalse }


Type 
  : 'int' { $$ = RTypeInt ; $$.tip = $$ ; } 
  | 'real' { $$ = RTypeDouble ; $$.tip = $$ ;}
  | 'char' { $$ = RTypeChar ; $$.tip = $$ ;}
  | 'string' { $$ = RTypeString ; $$.tip = $$ ;}
  | 'boolean' { $$ = RTypeBool ; $$.tip = $$ ;}


-- TODO manca solo Stmt. Puo essere un errore?
ListStmt 
  : {- empty -} { 
    $$ =[] ;
    $$.envOut = $$.envIn ;      
  } 
  | Stmt ';' ListStmt {
    $$ = (:) $1 $3 ;
    $1.envIn = $$.envIn ;
    $3.envIn = $1.envOut ;
    $$.envOut = $3.envOut ;
  }


ListRExpr 
  : {- empty -} {$$ = [] } 
  | RExpr { $$ = (:[]) $1 }
  | RExpr ',' ListRExpr { $$ = (:) $1 $3 }


-- TODO manca solo BlockVar. Puo essere un errore?
ListBlockVar 
  : {- empty -} { 
    $$ = [] ; 
    $$.envOut = $$.envIn ;
  } 
  | BlockVar ',' ListBlockVar { 
    $$ = (:) $1 $3 ;
    $$.envOut = $3.envOut ; 
    $1.envIn = $$.envIn ;
    $3.envIn = $1.envOut ;
  }


ListArg 
  : {- empty -} { $$ = [] } 
  | Arg { $$ = (:[]) $1 }
  | Arg ',' ListArg { $$ = (:) $1 $3 }



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

