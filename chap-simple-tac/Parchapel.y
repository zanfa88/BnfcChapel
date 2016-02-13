-- This Happy file was machine-generated by the BNF converter
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module Parchapel where
import Abschapel
import Lexchapel
import ErrM
import Envchapel
import Tac
}


%attributetype        {MyAttribute a}
%attribute parsetree  {a}
%attribute tip        {Type}      -- tipo nodo
%attribute err        {String}    -- errore
%attribute envIn      {[Env]}     -- environment in
%attribute envOut     {[Env]}     -- environment out
%attribute envFunIn   {[Ident]}     -- environment per le funzioni dichiarate
%attribute envFunOut  {[Ident]}     -- environment per le funzioni dichiarate
%attribute inLoop     {Bool}

%attribute tac    {[TacEl]} --contiene gli elementi del three address code
%attribute addr   {String}  --contiene l'address per il tac del nodo
%attribute addrLs {[String]}                --contiene una lista di address per il tac del nodo
%attribute countIn  {Int}   --contatore per le variabili temporane del tac (input)
%attribute countOut {Int}   --contatore per le variabili temporane del tac (output)
%attribute labelIn  {Int}                   --contatore per le label del tac (input)
%attribute labelOut {Int}                   --contatore per le label del tac (output)
%attribute tempSize   {Integer}             --contiene la quantità di spazio occupato in memoria per il nodo
%attribute tmp    {Ident} 

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

--Precedenze degli operatori
%left '#' 
%left '&&' '||' 
%nonassoc '<' '<=' '=' '==' '>' '>=' '!=' 
-- <, <=, >, >= no sono non associative ma hanno precedenza a sinistra
%left '..'
%left '+' '-'
%left '|'
%left '^'
%left '&'
%left '*' '/' '%'
%left NEG

%%

Ident   : L_ident  { $$ =  Ident $1 }
Integer : L_integ  { $$ =  (read ( $1)) :: Integer }
Double  : L_doubl  { $$ =  (read ( $1)) :: Double }
Char    : L_charac { $$ =  (read ( $1)) :: Char }
String  : L_quoted { $$ =   $1 }

Program 
  : ListStmt { 
    $$ = ( Prog $1 , $$.tac );
    $$.tip    = TypeVoid ;
    $$.envIn  = [] ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $1.envOut ;
    $$.envFunIn = [] ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $1.envFunOut ;
    $1.inLoop = False ;
    $$.tac = $1.tac ;
    $$.countIn = 0;
    $1.countIn = 0;
    $$.countOut = $1.countOut;
    $$.labelIn = 0;
    $1.labelIn = 0;
    $$.labelOut = $1.labelOut;
    }

Stmt 
  : LExpr '=' RExpr { 
    $$ =  Assgn $1 $3 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $3.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
    $1.envFunIn = $$.envFunIn ;
    $3.envFunIn = $1.envFunOut ;
    $$.envFunOut = $3.envFunOut ;
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
    $3.countIn = $$.countIn;
    $$.countOut = $3.countOut;
    $3.labelIn = $$.labelIn;
    $$.labelOut = $3.labelOut;
    $$.tac = $1.tac ++ $3.tac ++ [SimpleAssignment (showIdentificator $1.tmp) ($3.addr)] ;
  } 
  | StmtCondition { 
    $$ =  Cond $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envOut ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $1.envFunOut ;
    $1.labelIn = $$.labelIn ;
    $$.labelOut = $1.labelOut ;
    $1.countIn = $$.countIn ;
    $$.countOut = $1.countOut ;
    $1.inLoop = $$.inLoop;
    $$.tac = $1.tac;
  }
  | StmtWhile { 
    $$ =  While $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envOut ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $1.envFunOut ;
    $1.inLoop = $$.inLoop;
    }
  | StmtDo { 
    $$ =  Do $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envOut ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $1.envFunOut ;
    $1.inLoop = $$.inLoop;
    }
  | StmtFor { 
    $$ = For $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $1.envFunOut ;
    $1.inLoop = $$.inLoop;
    }
  | StmtJump { 
    $$ =  Jump $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $1.envFunOut ;
    $1.inLoop = $$.inLoop;
  }
  | StmtWrite { 
    $$ =  Write $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.tac = $1.tac;
    $$.countOut = $$.countIn;
  }
  | StmtRead { 
    $$ =  Read $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.tac = $1.tac;
    $1.countIn = $$.countIn;
    $$.countOut = $1.countOut;
    }
  | StmtVar { 
    $$ =  VarD $1 ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $1.envOut ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $1.envFunOut ;
    $$.tac = $1.tac ;
    $$.countOut = $$.countIn;
    $$.labelOut = $$.labelIn;
  }
  | DefFunc { 
    $$ =  DFunc $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $1.envFunOut ;
  }
  | CallFunc { 
    $$ =  CFunc $1 ;
    $$.tip    = TypeVoid ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $$.envIn ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $$.envFunIn ;
  }


LExpr 
  : Ident { 
    $$ =  Id $1 ;
    $$.envOut = $$.envIn ; 
    $$.envFunOut = $$.envFunIn ;
    $$.tip  = (getVarTip $$.envIn $1) ; 
    where ( if ($$.tip == VarNotDec)
              then (Bad $ (prntErrNotDec $1))
              else (Ok())
    ) ;
    $$.addr = showIdentificator $1;
    $$.tmp = $1;
    $$.tac = [];
    $$.labelOut = $$.labelIn;
    $$.countOut = $$.countIn;
  } 
  | LExpr '[' RExpr ']' { $$ =  ArrayEl $1 $3 }


RExpr 
  : RExpr '#' RExpr { 
    $$ = Ecount $1 $3 ;
    $$.tip = RTypeInt ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
  } 
  | RExpr '||' RExpr { 
    $$ = Elor $1 $3 ;
    $$.tip = RTypeBool ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
    $$.err  = (checkEqualAndBoolType $1.tip $3.tip) ;
    where ( 
      if ($$.err == "") 
        then (Ok())
        else (Bad $ (prntErrBothBool $$.err $2 ))
    );
  } 
  | RExpr '&&' RExpr { 
    $$ = Eland $1 $3 ;
    $$.tip = RTypeBool ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
    $$.err  = (checkEqualAndBoolType $1.tip $3.tip) ;
    where ( 
      if ($$.err == "") 
        then (Ok())
        else (Bad $ (prntErrBothBool $$.err $2 ))
    );
  } 
  | RExpr '==' RExpr { 
    $$ = Eeq $1 $3 ;
    $$.tip = RTypeBool ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
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
    $$.envFunOut = $$.envFunIn ;
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
  | RExpr '<=' RExpr { 
    $$ = Eleq $1 $3 ;
    $$.tip = RTypeBool ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
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
    );
  } 
  | RExpr '>=' RExpr {
    $$ =  Egeq $1 $3 ;
    $$.tip = RTypeBool ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
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
    );
  }
  | RExpr '<' RExpr { 
    $$ = El $1 $3 ;
    $$.tip = RTypeBool ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
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
    );
    $1.countIn = $$.countIn;
    $3.countIn = $1.countOut;
    $$.countOut = $3.countOut + 1;
    $1.labelIn = $$.labelIn;
    $3.labelIn = $1.labelOut;
    $$.labelOut = $3.labelOut;
    $$.addr = "t" ++ show $3.countOut;
    $$.tac = $1.tac ++ $3.tac ++ [BinaryOperation " < " $$.addr $1.addr $3.addr];
  }
  | RExpr '>' RExpr {
    $$ =  Eg $1 $3 ;
    $$.tip = RTypeBool ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
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
    );
  }
  | RExpr '..' RExpr { 
    $$ = Erange $1 $3 ;
    $$.tip = RTypeBool ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
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
    );
  } 
  | RExpr '+' RExpr { 
    $$ = Eadd $1 $3 ;
    $$.tip  = $1.tip ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
    $$.err  = (checkEqualType $1.tip $3.tip) ;
    where ( if ($$.err == "") 
      then (Ok())
      else (Bad $ (prntErrAdd $2 ))
    ) ;
    $1.countIn = $$.countIn;
    $3.countIn = $1.countOut;
    $$.countOut = $3.countOut + 1;
    $$.labelOut = $$.labelIn;
    $$.addr = "t"++ show $3.countOut;
    $$.tac = $1.tac ++ $3.tac  ++ [BinaryOperation " + " $$.addr $1.addr $3.addr];
  } 
  | RExpr '-' RExpr { 
    $$ = Esub $1 $3 ;
    $$.tip = $1.tip ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
    $$.err  = (checkEqualType $1.tip $3.tip) ;
    where ( if ($$.err == "") 
      then (Ok())
      else (Bad $ (prntErrAdd $2 ))
    ) ;
    $1.countIn = $$.countIn;
    $3.countIn = $1.countOut;
    $$.countOut = $3.countOut + 1;
    $$.labelOut = $$.labelIn;
    $$.addr = "t"++ show $3.countOut;
    $$.tac = $1.tac ++ $3.tac  ++ [BinaryOperation " - " $$.addr $1.addr $3.addr];
  }
  | RExpr '|' RExpr { 
    $$ = Ebitor $1 $3 ;
    $$.tip = $1.tip ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
  } 
  | RExpr '^' RExpr { 
    $$ = Ebitxor $1 $3 ;
    $$.tip = $1.tip ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
  } 
  | RExpr '&' RExpr { 
    $$ = Ebitand $1 $3 ;
    $$.tip = $1.tip ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
    } 
  | '+' RExpr { 
    $$ = Eupos $2 ;
    $$.tip = $2.tip ;
    $2.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
  } 
  | '-' RExpr %prec NEG {
    $$ =  Euneg $2 ;
    $$.tip = $2.tip ;
    $2.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;

  }
  | RExpr '*' RExpr { 
    $$ = Emul $1 $3 ;
    $$.tip = $1.tip ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
    $$.err  = (checkEqualType $1.tip $3.tip) ;
    where ( if ($$.err == "") 
      then (Ok())
      else (Bad $ (prntErrAdd $2 ))
    ) ;
    $1.countIn = $$.countIn;
    $3.countIn = $1.countOut;
    $$.countOut = $3.countOut + 1;
    $$.labelOut = $$.labelIn;
    $$.addr = "t"++ show $3.countOut;
    $$.tac = $1.tac ++ $3.tac  ++ [BinaryOperation " * " $$.addr $1.addr $3.addr];
  } 
  | RExpr '/' RExpr { 
    $$ = Ediv $1 $3 ;
    $$.tip = $1.tip ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
  }
  | RExpr '%' RExpr { 
    $$ = Emod $1 $3 ;
    $$.tip = $1.tip ;
    $1.envIn = $$.envIn ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
  }
  | BasicType { 
    $$ = Econs $1 ;
    $$.tip  = $1.tip ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
    $$.tac = [];
    $$.addr = $1.addr; 
    $$.labelOut = $$.labelIn; 
    $$.countOut = $$.countIn;
  } 
  | LExpr { 
    $$ = LExprR $1 ;
    $$.tip  = $1.tip ;
    $1.envIn = $$.envIn ; 
    $$.envOut = $1.envOut ; 
    $$.envFunOut = $$.envFunIn ;
    $$.tac = [] ;
    $$.addr = $1.addr ;
    $$.countOut = $$.countIn; 
    $$.labelOut = $$.labelIn; 
  } 
  | '(' RExpr ')' { $$ = $2 }


StmtWrite 
  : 'writeInt' '(' Integer ')' { 
    $$ = WriteInt $3 ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ; 
    $$.countOut = $$.countIn;
    $$.labelOut = $$.labelIn;
    $$.tac = [WriteIntOperation $3];
  } 
  | 'writeReal' '(' Double ')' { $$ = WriteReal $3 }
  | 'writeChar' '(' Char ')' { $$ = WriteChar $3 }
  | 'writeString' '(' String ')' { $$ = WriteString $3 }


StmtRead 
  : 'readInt' '(' Integer ')' { 
    $$ = ReadInt $3; 
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ; 
    $$.countOut = $$.countIn + 1;    
    $$.labelOut = $$.labelIn;
    $$.addr = "t"++ show $$.countIn;
    $$.tac = [ReadntOperation $3 $$.addr];
    } 
  | 'readReal' '(' Double ')' { $$ = ReadReal $3 }
  | 'readChar' '(' Char ')' { $$ = ReadChar $3 }
  | 'readString' '(' String ')' { $$ = ReadString $3 }


StmtCondition 
  : 'if' RExpr 'then' Stmt {
    $$ = If1 $2 $4 ; 
    $2.envIn = $$.envIn ;
    $4.envIn = $$.envIn ;
    $$.envOut = $4.envOut ;
    $2.envFunIn = $$.envFunIn ;
    $4.envFunIn = $$.envFunIn ;
    $$.envFunOut = $4.envFunOut ;
    $$.err  = (checkEqualType $2.tip RTypeBool) ;
    $4.inLoop = True ;
    $2.countIn = $$.countIn;
    $4.countIn = $2.countOut;
    $$.countOut = $4.countOut + 1;

    $2.labelIn = $$.labelIn;
    $4.labelIn = $2.labelOut;
    $$.labelOut = $4.labelOut + 2;
    $$.tac = $2.tac ++ [Then $2.addr ($4.labelOut +1)] ++ $4.tac ++ [Label ($2.labelOut +1)];

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
    $3.envFunIn = $$.envFunIn ;
    $6.envFunIn = $$.envFunIn ;
    $$.envFunOut = $6.envFunOut ;
    $$.err  = (checkEqualType $3.tip RTypeBool) ;
    $6.inLoop = True ;
    where ( if ($$.err == "")   
      then (Ok())
      else (Bad $ (prntErrCondNotBool $1))
    ) ;
  }


StmtWhile 
  : 'while' RExpr 'do' Stmt { 
    $$ = WhileDo $2 $4 ;
    $2.envIn = $$.envIn;
    $4.envIn = $$.envIn;
    $$.envOut = $4.envOut;
    $2.envFunIn = $$.envFunIn ;
    $4.envFunIn = $$.envFunIn ;
    $$.envFunOut = $4.envFunOut ;
    $4.inLoop = True;
    $$.err  = (checkEqualType $2.tip RTypeBool) ;
    where ( if ($$.err == "")   
      then (Ok())
      else (Bad $ (prntErrCondNotBool $1))
    ) ;
  } 
  | 'while' RExpr '{' ListStmt '}' { 
    $$ = WhileDoS $2 $4 ;
    $2.envIn = $$.envIn;
    $4.envIn = $$.envIn;
    $$.envOut = $4.envOut;
    $2.envFunIn = $$.envFunIn ;
    $4.envFunIn = $$.envFunIn ;
    $$.envFunOut = $4.envFunOut ;
    $4.inLoop = True;
    $$.err  = (checkEqualType $2.tip RTypeBool) ;
    where ( if ($$.err == "")   
      then (Ok())
      else (Bad $ (prntErrCondNotBool $1))
    )
  }


StmtDo 
  : 'do' '{' ListStmt '}' 'while' RExpr ';' { 
    $$ = SDo $3 $6 ;
    $3.envIn = $$.envIn;
    $6.envIn = $$.envIn;
    $$.envOut = $6.envOut;
    $6.envFunIn = $$.envFunIn ;
    $3.envFunIn = $$.envFunIn ;
    $$.envFunOut = $3.envFunOut ;
    $3.inLoop = True;
    $$.err  = (checkEqualType $6.tip RTypeBool) ;
    where ( if ($$.err == "")   
      then (Ok())
      else (Bad $ (prntErrCondNotBool $1))
    )
  } 

-- inserisco nel contesto di ListStmt l'iteratore
StmtFor 
  : 'for' Ident 'in' Aggr 'do' '{' ListStmt '}' { 
    $$ = SForDo $2 $4 $7 ;
    $2.envIn = $$.envIn ;    
    $7.envIn = (insVarEnv (Var $2 RTypeInt) $$.envIn);
    $$.envOut = $$.envIn;
    $7.envFunIn = $$.envFunIn ;
    $$.envFunOut = $7.envFunOut ;
    $7.inLoop = True ;
  }
  | 'for' Ident 'in' Aggr '{' ListStmt '}' { 
    $$ = SForDoBloc $2 $4 $6 ;
    $2.envIn = $$.envIn ;    
    $6.envIn = (insVarEnv (Var $2 RTypeInt) $$.envIn);
    $$.envOut = $$.envIn;
    $6.envFunIn = $$.envFunIn ;
    $$.envFunOut = $6.envFunOut ;
    $6.inLoop = True ;
  }


Aggr 
  : Integer '..' Integer { $$ = ForAggr $1 $3 } 


StmtJump 
  : 'break' { 
    $$ = Break ;
    $$.envIn = $$.envOut;
    $$.envFunOut = $$.envFunIn ;
    $$.err = (if ($$.inLoop) 
      then ""
      else ("Syntax error: break statement not in a loop statement! At " ++ (tokenPos2 $1))
    );
    where (if ($$.inLoop) 
      then Ok()
      else Bad $ ($$.err)
    );
  } 
  | 'continue' { 
    $$ = Continue ;
    $$.envIn = $$.envOut;
    $$.envFunOut = $$.envFunIn ;
    $$.err = (if ($$.inLoop) 
      then ""
      else ("Syntax error: continue statement not in a loop statement! At " ++ (tokenPos2 $1))
    );
    where (if ($$.inLoop) 
      then Ok()
      else Bad $ ($$.err)
    );
  }


StmtVar 
  : 'var' ListBlockVar { 
    $$ = SVarBlock $2 ;
    $2.envIn = $$.envIn ;
    $$.envOut = $2.envOut ;
    $2.envFunIn = $$.envFunIn ;
    $$.envFunOut = $2.envFunOut ; 
    $2.labelIn = $$.labelIn ;
    $$.labelOut = $2.labelOut ; 
    $$.tac = $2.tac ;
  } 
  | 'const' ListBlockVar { 
    $$ = SVarCon $2 ;
    $2.envIn = $$.envIn ;
    $$.envOut = $2.envOut ;
    $2.envFunIn = $$.envFunIn ;
    $$.envFunOut = $2.envFunOut ; 
  }


BlockVar 
  : Ident ':' Type '=' RExpr { 
    $$ = SBlockVar $1 $3 $5 ;
    $$.envOut   = (insVarEnv (Var $1 $3.tip) $$.envIn);
    $$.err      = (checkDefVar $3 $5.tip) ;
    $$.envFunOut = $$.envFunIn ;
    where ( if ($$.err == "")   
      then (Ok())
      else (Bad $ (prntErrDiffType $2))
    ) ;

    $$.tac = [VariableDeclaration (showIdentificator $1) ] ++ [SimpleAssignment (showIdentificator $1) (printEcons $5)];
  } 


DefFunc 
  : 'function' Ident '(' ListArg ')' '{' ListStmt '}' { 
    $$ = SDefFunc $2 $4 $7 ;
    $$.tip = TypeVoid ;
    $4.envIn = [] ; 
    $7.envIn = $4.envOut ;
    $$.envOut = [] ;
    $7.envFunIn = $$.envFunIn ++ [$2] ;
    $$.envFunOut = $$.envFunIn ++ [$2] ;
    $$.err = (checkDoubleFun $2 $$.envFunIn);
    $7.inLoop = False ;
    where (if ($$.err == "") 
      then (Ok())
      else (Bad $ (prntErr $$.err $1))
    );
  } 


CallFunc 
  : Ident '(' ListRExpr ')' { 
    $$ = SCallFunc $1 $3 ;
    $3.envIn = $$.envIn ;
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ;
    where (
      if ((checkDoubleFun $1 $$.envFunIn) == "")
        then (Bad $ (prntErr "Function is not defined." $2 ))
        else (Ok())
    );
  } 


Arg 
  : Ident ':' Type { 
    $$ = SArg $1 $3 ;
    $$.envOut = (insVarFuncEnv (Var $1 $3.tip) $$.envIn ) ;
    $$.err = checkDoubleParam $$.envOut ;
    where ( if ($$.err == "")
      then (Ok())
      else (Bad $ (prntErr $$.err $2 ))
    );
  } 
  | '*' Ident ':' Type { 
    $$ = PArg $2 $4 ;
    $$.envOut = (insVarFuncEnv (Var $2 $4.tip) $$.envIn ) ;
    $$.err = checkDoubleParam $$.envOut ;
    where ( if ($$.err == "")
      then (Ok())
      else (Bad $ (prntErr $$.err $3 ))
    );
  }


BasicType 
  : Integer { 
    $$ = RInt $1 ;
    $$.tip = RTypeInt ;
    $$.err = "" ;
    $$.addr = show $1;
    $$.tac = [];
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


ListStmt 
  : {- empty -} { 
    $$ =[] ;
    $$.envOut = $$.envIn ;  
    $$.tac = []; 
    $$.countOut = $$.countIn;  
    $$.labelOut = $$.labelIn;   
  } 
  | Stmt { 
    $$ = (:[]) $1 ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $1.envOut ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $1.envFunOut ;
    $1.inLoop = $$.inLoop ;
    $$.tac = $1.tac ;
    $1.countIn = $$.countIn;
    $$.countOut = $1.countOut;  
    $1.labelIn = $$.labelIn;   
    $$.labelOut = $1.labelOut;    
  }
  | Stmt ';' ListStmt {
    $$ = (:) $1 $3 ;
    $1.envIn = $$.envIn ;
    $3.envIn = $1.envOut ;
    $$.envOut = $3.envOut ;
    $1.envFunIn = $$.envFunIn ;
    $3.envFunIn = $1.envFunOut ;
    $$.envFunOut = $3.envFunOut ;
    $1.inLoop = $$.inLoop;
    $3.inLoop = $1.inLoop;
    $$.tac = $1.tac ++ $3.tac;
    $1.countIn = $$.countIn;
    $3.countIn = $1.countOut;
    $$.countOut = $3.countOut; 
    $1.labelIn = $$.labelIn;
    $3.labelIn = $1.labelOut;
    $$.labelOut = $3.labelOut;   
  }


ListRExpr 
  : {- empty -} {
    $$ = [] ;
    $$.envOut = $$.envIn ;
  } 
  | RExpr { 
    $$ = (:[]) $1 ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $1.envOut ;
  }
  | RExpr ',' ListRExpr { 
    $$ = (:) $1 $3 ;
    $1.envIn = $$.envIn ;
    $3.envIn = $1.envOut ;
    $$.envOut = $3.envOut ; 
  }


ListBlockVar 
  : {- empty -} { 
    $$ = [] ; 
    $$.envOut = $$.envIn ;
    $$.envFunOut = $$.envFunIn ; 
    $$.labelOut = $$.labelIn; 
  } 
  | BlockVar { 
    $$ = (:[]) $1 ;
    $1.envIn  = $$.envIn ;
    $$.envOut = $1.envOut ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $$.envFunIn ;
    $$.tac = $1.tac ;
    $1.labelIn = $$.labelIn;   
    $$.labelOut = $1.labelOut;  
  }
  | BlockVar ',' ListBlockVar { 
    $$ = (:) $1 $3 ;
    $1.envIn = $$.envIn ;
    $3.envIn = $1.envOut ;
    $$.envOut = $3.envOut ; 
    $1.envFunIn = $$.envFunIn ;
    $3.envFunIn = $1.envFunOut ;
    $$.envFunOut = $$.envFunIn ;
    $1.labelIn = $$.labelIn;
    $3.labelIn = $1.labelOut;
    $$.labelOut = $3.labelOut;  
  }


ListArg 
  : {- empty -} { 
    $$ = [] ;
    $$.envOut = $$.envIn;
    $$.envFunOut = $$.envFunIn ;
  } 
  | Arg { 
    $$ = (:[]) $1 ;
    $1.envIn = $$.envIn ;
    $$.envOut = $1.envOut ;
    $1.envFunIn = $$.envFunIn ;
    $$.envFunOut = $$.envFunIn ;
  }
  | Arg ',' ListArg { 
    $$ = (:) $1 $3 ;
    $1.envIn = $$.envIn ;
    $3.envIn = $1.envOut ;
    $$.envOut = $3.envOut ;
    $1.envFunIn = $$.envFunIn ;
    $3.envFunIn = $$.envFunIn ;
    $$.envFunOut = $$.envFunIn ;
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
