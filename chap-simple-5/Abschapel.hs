module Abschapel where

-- Haskell module generated by the BNF converter


newtype Ident = Ident String deriving (Eq,Ord,Show)
data Program =
   Prog [Stmt]
  deriving (Eq,Ord,Show)

data Stmt =
   Assgn LExpr RExpr
 | Cond StmtCondition
 | While StmtWhile
 | Do StmtDo
 | For StmtFor
 | Jump StmtJump
 | Write StmtWrite
 | Read StmtRead
 | VarD StmtVar
 | DFunc DefFunc
 | CFunc CallFunc
  deriving (Eq,Ord,Show)

data LExpr =
   Id Ident
 | ArrayEl LExpr RExpr
  deriving (Eq,Ord,Show)

data RExpr =
   Ecount RExpr RExpr
 | Elor RExpr RExpr
 | Eland RExpr RExpr
 | Eeq RExpr RExpr
 | Eneq RExpr RExpr
 | Eleq RExpr RExpr
 | Egeq RExpr RExpr
 | El RExpr RExpr
 | Eg RExpr RExpr
 | Erange RExpr RExpr
 | Eadd RExpr RExpr
 | Esub RExpr RExpr
 | Ebitor RExpr RExpr
 | Ebitxor RExpr RExpr
 | Ebitand RExpr RExpr
 | Eupos RExpr
 | Euneg RExpr
 | Emul RExpr RExpr
 | Ediv RExpr RExpr
 | Emod RExpr RExpr
 | Econs BasicType
 | LExprR LExpr
  deriving (Eq,Ord,Show)

data StmtWrite =
   WriteInt Integer
 | WriteReal Double
  deriving (Eq,Ord,Show)

data StmtRead =
   ReadInt Integer
 | ReadReal Double
  deriving (Eq,Ord,Show)

data StmtCondition =
   If1 RExpr Stmt
 | If2 RExpr [Stmt]
  deriving (Eq,Ord,Show)

data StmtWhile =
   WhileDo RExpr Stmt
 | WhileDoS RExpr [Stmt]
  deriving (Eq,Ord,Show)

data StmtDo =
   SDo [Stmt] RExpr
  deriving (Eq,Ord,Show)

data StmtFor =
   SForDo RExpr Aggr [Stmt]
 | SForDoBloc RExpr Aggr [Stmt]
  deriving (Eq,Ord,Show)

data Aggr =
   ForAggr Integer Integer
  deriving (Eq,Ord,Show)

data StmtJump =
   Break
 | Continue
  deriving (Eq,Ord,Show)

data Param =
   Pval RExpr
 | Pref RExpr
  deriving (Eq,Ord,Show)

data StmtVar =
   SVarBlock [BlockVar]
 | SVarCon [BlockVar]
  deriving (Eq,Ord,Show)

data BlockVar =
   SBlockVar Ident Type RExpr
  deriving (Eq,Ord,Show)

data DefFunc =
   SDefFunc Ident [Arg] [Stmt]
  deriving (Eq,Ord,Show)

data CallFunc =
   SCallFunc Ident [RExpr]
  deriving (Eq,Ord,Show)

data Arg =
   SArg Ident Type
  deriving (Eq,Ord,Show)

data BasicType =
   RInt Integer
 | RDouble Double
 | RChar Char
 | RString String
 | RBoolean Boolean
  deriving (Eq,Ord,Show)

data Boolean =
   RTrue
 | RFalse
  deriving (Eq,Ord,Show)

data Type =
   RTypeInt
 | RTypeDouble
 | RTypeChar
 | RTypeString
 | RTypeBool
  deriving (Eq,Ord,Show)

