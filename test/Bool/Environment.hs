module Environment where

import Lexbool
import Absbool

----------------------------------------------------------------------------------------------
------------------------------ DATA-TYPE DI VARIABILI E FUNZIONI -----------------------------
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
rd = (Ident "read")
wr = (Ident "write")

data EnvV = 
 Var Ident Type Bool
 | Prog Ident
  deriving(Eq,Ord,Show)

data EnvF = 
 Fun Ident Type [Type] [Bool]
 | Proc Ident [Type] [Bool]
  deriving(Eq,Ord,Show)
