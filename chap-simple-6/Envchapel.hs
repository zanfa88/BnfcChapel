module Envchapel where

import Lexchapel
import Abschapel

rd = (Iden "read")
wr = (Iden "write")

data Env = 
 Var Iden Type
  deriving(Eq,Ord,Show)

--estrae dall'env il tipo della variabile in input
getVarTip [] id = VarNotDec
getVarTip (x@(Var i t):xs) id = if (i == id)
									then t
									else getVarTip xs id ;

--
checkEqualType tipL tipR 	= if (tipL == tipR)
								then ""
								else "Somma tra tipi diversi"
								
--
checkDefVar tipL tipR 		= case (tipL) of
								RTypeFloat 	-> if (tipR == RTypeInt || tipR == RTypeFloat)
												then ""
												else "Assegnamento non permesso"
								RTypeInt 	-> if (tipR == RTypeInt)
												then ""
												else "Assegnamento non permesso"
								VarNotDec	-> "variabile non assegnata"

-- funzione ausiliaria per sviluppo e stampa errore
printE ([])  				= "Environment vuoto"
printE (x@(Var i _):[])  	= "Environment var:"++(show i)
printE (x@(Var i _):xs)  	= "Environment var:"++(show i)++" , "++printE(xs)


tokenPos2 (PT (Pn _ l r) _) = "line " ++ show l ++ " column " ++ show r 
tokenPos2 (Err (Pn _ l r) ) = "line " ++ show l ++ " column " ++ show r 


-- inserimento variabile in ambiente
insVarEnv x@(Var i _) xs 
	| (isVarPres i xs) == Just i = xs  	-- se è già presente la scarta
	| otherwise = x:xs					-- altrimenti la aggiunge
								
-- verfica se la variabile è già stata definita dell'ambiente 
isVarPres id [] =  Nothing
isVarPres id ((Var i _):xs) 
	| id == i = Just i
	| otherwise = isVarPres id xs

-- elimina variabile dall' ambiente
delVarEnv x [] 		= [] 
delVarEnv x@(Var i t) (y@(Var j u):ys) 
	| x == y 		= ys  					-- se ho trovato la mia variabile la emilino
	| otherwise 	= x:(delVarEnv x ys)	-- altrimenti controllo nelle restanti variabili
	

-- Messaggi di errore:
prntErrAss pos tipL tipR 	= "Error at "++(tokenPos2 pos)++": assigment of a "++(showType tipR)++" value to a variable of type "++(showType tipL)++" not allowed."
prntErrNotDec var 			= "Error: variable "++(show var)++" not declared."
prntErrDiffType pos         = "Error at "++(tokenPos2 pos)++": invalid declaration, type are different."
prntErrAdd pos  			= "Error at "++(tokenPos2 pos)++": operation between different type not allowed."
prntErrComp pos  			= "Error at "++(tokenPos2 pos)++": unable to compare different type."
prntErrCondNotBool pos 		= "Error at "++(tokenPos2 pos)++": condition must derivate to a bool."

-- Funzioni ausiliarie per messaggi di errore
showType RTypeInt = (show "int") 
showType RTypeFloat = (show "real") 