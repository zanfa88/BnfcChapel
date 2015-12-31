module Envchapel where

import Lexchapel
import Abschapel

rd = (Iden "read")
wr = (Iden "write")

data Env = 
 Var Iden Type
 | Prog Iden
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

checkDefVar tipL tipR 		= case (tipL) of
								RTypeFloat 	-> if (tipR == RTypeInt || tipR == RTypeFloat)
												then ""
												else "Assegnamento non permesso"
								RTypeInt 	-> if (tipR == RTypeInt)
												then ""
												else "Assegnamento non permesso"

-- funzione ausiliaria per sviluppo e stampa errore
printE (x@(Var i _):[])  = "Environment var:"++(show i)
printE (x@(Var i _):xs)  = "Environment var:"++(show i)++" , "++printE(xs)


tokenPos2 (PT (Pn _ l r) _) = "line " ++ show l ++ " column " ++ show r 
tokenPos2 (Err (Pn _ l r) ) = "line " ++ show l ++ " column " ++ show r 


-- inserimento variabile in ambiente
insVarEnv x@(Var i _) xs 
	| (isVarPres i xs) == Just i = xs  	-- se è già presente la scarta
	| otherwise = x:xs					-- altrimenti la sostituisce
								
-- verfica se la variabile è già stata definita dell'ambiente 
isVarPres id [] =  Nothing
isVarPres id ((Var i _):xs) | id == i = Just i
			      | otherwise = isVarPres id xs