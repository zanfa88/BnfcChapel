module Abschapel where

-- Haskell module generated by the BNF converter


newtype Ident = Ident String deriving (Eq,Ord,Show)
data Boolean =
   Boolean_true
 | Boolean_false
  deriving (Eq,Ord,Show)

data Program =
   Prog [Stmt]
  deriving (Eq,Ord,Show)

data Stmt =
   Assgn LExpr Assignment_op RExpr
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
 | Econs Constant
 | LExprR LExpr
  deriving (Eq,Ord,Show)

data Assignment_op =
   AssgnBase
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
  deriving (Eq,Ord,Show)

data StmtDo =
   SDo [Stmt] RExpr
  deriving (Eq,Ord,Show)

data StmtFor =
   SForDo RExpr Aggr [Stmt]
  deriving (Eq,Ord,Show)

data Aggr =
   ForAggr Constant Constant
  deriving (Eq,Ord,Show)

data StmtJump =
   Break
 | Continue
  deriving (Eq,Ord,Show)

data Param =
   Pval RExpr
 | Pref RExpr
  deriving (Eq,Ord,Show)

data Constant =
   Int Integer
  deriving (Eq,Ord,Show)

data StmtVar =
   SVarBlock [BlockVar]
 | SVarCon [BlockVar]
  deriving (Eq,Ord,Show)

data BlockVar =
   SBlockVar Ident TypeSpec RExpr
  deriving (Eq,Ord,Show)

data DefFunc =
   SDefFunc Ident [Arg] [Stmt]
  deriving (Eq,Ord,Show)

data CallFunc =
   SCallFunc Ident [RExpr]
  deriving (Eq,Ord,Show)

data Arg =
   SArg Ident TypeSpec
  deriving (Eq,Ord,Show)

data TypeSpec =
   BasTyp BasicType
  deriving (Eq,Ord,Show)

data BasicType =
   BasicType_bool
 | BasicType_uint
 | BasicType_int
 | BasicType_real
 | BasicType_imag
 | BasicType_complex
 | BasicType_string
 | TypeVoid
 | VarNotDec
  deriving (Eq,Ord,Show)

