module Envchapel where

import Lexchapel
import Abschapel

rd = (Ident "read")
wr = (Ident "write")

data Env = 
 Var Ident Type
  deriving(Eq,Ord,Show)

--estrae dall'env il tipo della variabile in input
getVarTip [] id = VarNotDec
getVarTip (x@(Var i t):xs) id = if (i == id)
									then t
									else getVarTip xs id ;

-- controlla se i tipi sono uguali
checkEqualType tipL tipR 	= if (tipL == tipR)
								then ""
								else "Somma tra tipi diversi"

-- controlla gli assegnamenti
checkDefVar tipL tipR 		= case (tipL) of
								RTypeDouble 	-> if (tipR == RTypeInt || tipR == RTypeDouble)
												then ""
												else "Assegnamento non permesso"
								RTypeInt 	-> if (tipR == RTypeInt)
												then ""
												else "Assegnamento non permesso"
								VarNotDec	-> "variabile non assegnata"

-- controllo se entrambi sono di tipo boolean
checkEqualAndBoolType tipL tipR		= if (tipL == tipR && tipL == RTypeBool) 
										then ""
										else "Invalid logical operation. Operators must be bool." 

-- funzione ausiliaria per sviluppo e stampa errore
printE ([])  				= "Environment vuoto"
printE (x@(Var i _):[])  	= "Environment var:"++(show i)
printE (x@(Var i _):xs)  	= "Environment var:"++(show i)++" , "++printE(xs)


tokenPos2 (PT (Pn _ l r) _) = "line " ++ show l ++ " column " ++ show r 
tokenPos2 (Err (Pn _ l r) ) = "line " ++ show l ++ " column " ++ show r 


-- inserimento variabile in ambiente
insVarEnv x@(Var i _) xs 
	| (isVarPres i xs) == Just i = xs  	-- se è già presente la scarta
	| otherwise = x:xs					-- altrimenti la sostituisce

-- Append degli argomenti della funzione
insVarFuncEnv x xs = x:xs	



-- Controlla se ci sono doppioni nella lista
checkDoubleParam xs = chheck (listt xs)
chheck [] = ""
chheck (x:xs)  
	| length ( filter (==x) (x:xs)) > 1 = "Parameter "++(show x)++"is not unique."
	| otherwise 						= chheck xs	 
listt [] = []
listt ((Var i _):xs) = i:(listt xs)

checkDoubleFun _ [] 		= ""
checkDoubleFun y (x:xs) 
	| x == y  				= "Function is already defined."
	| otherwise 			= checkDoubleFun y xs
						
appendFun xs y = (xs ++ [y])

-- verfica se la variabile è già stata definita dell'ambiente 
isVarPres id [] =  Nothing
isVarPres id ((Var i _):xs) 
	| id == i = Just i
	| otherwise = isVarPres id xs

-- Messaggi di errore:
prntErrAss pos tipL tipR 	= "Error at "++(tokenPos2 pos)++": assigment of a "++(showType tipR)++" value to a variable of type "++(showType tipL)++" not allowed."
prntErrNotDec var 			= "Error: variable "++(show var)++" not declared."
prntErrDiffType pos         = "Error at "++(tokenPos2 pos)++": invalid declaration, type are different."
prntErrAdd pos  			= "Error at "++(tokenPos2 pos)++": operation between different type not allowed."
prntErrComp pos  			= "Error at "++(tokenPos2 pos)++": unable to compare different type."
prntErrCondNotBool pos 		= "Error at "++(tokenPos2 pos)++": condition must derivate to a bool."
prntErrBothBool err pos 	= "Error at "++(tokenPos2 pos)++":"++ err
prntErr err pos 			= "Error at "++(tokenPos2 pos)++":"++ err

-- Funzioni ausiliarie per messaggi di errore
showType RTypeInt = (show "int") 
showType RTypeDouble = (show "real") 