module Envchapel where

import Lexchapel
import Abschapel

rd = (Iden "read")
wr = (Iden "write")

data EnvV = 
 Var Iden BasicType Bool
 | Prog Iden
  deriving(Eq,Ord,Show)

data EnvF = 
 Fun Iden BasicType [BasicType] [Bool]
 | Proc Iden [BasicType] [Bool]
  deriving(Eq,Ord,Show)

--estrae dall'env il tipo della variabile in input
-- getVarTip Nothing = TypeVoid
-- getVarTip (Just (Var i t f)) = t
getVarTip _ = RTypeFloat

contrRAssign tipL tipR op 	= if (tipL == RTypeInt)
								then "Non puoi assegnare a int. In "
								else ""	

checkEqualType tipL tipR 	= if (tipL == tipR)
								then ""
								else "Somma tra tipi diversi"

tokenPos2 (PT (Pn _ l r) _) = "line " ++ show l ++ " column " ++ show r 
tokenPos2 (Err (Pn _ l r) ) = "line " ++ show l ++ " column " ++ show r 


								