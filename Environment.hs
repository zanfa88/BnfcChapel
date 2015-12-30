module Environment where

import Abschapel
import Lexchapel

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


----------------------------------------------------------------------------------------------
---------------------------------- ENVRONMENT DELLE VARIABILI --------------------------------
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

--inserisce una nuova varibile nell'environment (se è già presente la sovrascrive) - (utilizzata in Program)
insVarInEnvLs x@(Var i _ _) xs | (checkIdLs i xs) == Just i = x:(deleteVarInEnvLs i xs)
			       | otherwise = x:xs
insVarInEnvLs x@(Prog i) xs | (checkIdLs i xs) == Just i = x:(deleteVarInEnvLs i xs)
			    | otherwise = x:xs

--date due liste di variabili d'ambiente le unisce (utilizzata in VarDecl e in Param)
appendEnvLs [] ys = ys
appendEnvLs (x:xs) ys = insVarInEnvLs x (appendEnvLs xs ys)

--data una lista di id crea l'environment (utilizzata in VarDecl e in Param)
createEnvLs [] _ _ = []
createEnvLs (i:is) t f = (Var i t f):(createEnvLs is t f)


--controlla la presenza di un id nella lista di variabili d'ambiente
checkIdLs id [] =  Nothing
checkIdLs id ((Var i _ _):xs) | id == i = Just i
			      | otherwise = checkIdLs id xs
checkIdLs id ((Prog i):xs) | id == i = Just i
			   | otherwise = checkIdLs id xs


--controlla la presenza di una lista di id in una lista di variabili d'ambiente
checkIdLsEnvLs [] _ = Nothing
checkIdLsEnvLs (x:xs) ys = case (checkIdLs x ys)  of {
				Just a -> Just a;
				Nothing -> checkIdLsEnvLs xs ys;
			    }

checkIdInLocEnv id [] = Nothing
checkIdInLocEnv id ((Prog _):vs) = checkIdInLocEnv id vs
checkIdInLocEnv id ((Var _ _ False):vs) = checkIdInLocEnv id vs
checkIdInLocEnv id ((Var i _ True):vs) | id == i = Just id
				       | otherwise = checkIdInLocEnv id vs

--controlla la presenza di id nell'environment locale (cioè se il flag è a true)
checkLocEnvVar [] _ = Nothing
checkLocEnvVar (x:xs) vs = case (checkIdInLocEnv x vs) of {
				Just x  -> Just x;
				Nothing -> checkLocEnvVar xs vs
			}
checkLocEnv (i:is) vs fs = case (checkLocEnvVar (i:is) vs) of {
				Nothing -> checkParName (i:is) fs;
				Just i -> Just i;
			}

--estrai variabile d'ambiente dato l'id
getEnvVar id [] = Nothing
getEnvVar id (x@(Var i t f):xs) | id == i = Just x
			        | otherwise = getEnvVar id xs
getEnvVar id (x@(Prog i):xs) | id == i = Just x
			     | otherwise = getEnvVar id xs

--estrae dall'env il tipo della variabile in input
getVarType Nothing = TypeVoid
getVarType (Just (Var i t f)) = t

--elimina una variabile d'ambiente da una lista di variabili d'ambiente
deleteVarInEnvLs id [] = []
deleteVarInEnvLs id (x@(Var i _ _):xs) | id == i = xs
				       | otherwise = x:(deleteVarInEnvLs id xs)
deleteVarInEnvLs id (x@(Prog i):xs) | id == i = xs
				    | otherwise = x:(deleteVarInEnvLs id xs)



----------------------------------------------------------------------------------------------
----------------------------- ENVRONMENT DELLE FUNZIONI/PROCEDURE ----------------------------
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

--inizializza l'environment delle funzioni/procedure con le procedure predefinire read e write
--(utilizzata in Program)
initializeFunctionEnv = [Proc (Id "read") [TypeInt] [True]] ++ [Proc (Id "read") [TypeFloat] [True]] ++
			[Proc (Id "read") [TypeChar] [True]] ++ [Proc (Id "read") [TypeString] [True]] ++ 
			[Proc (Id "write") [TypeInt] [True]] ++ [Proc (Id "write") [TypeFloat] [True]] ++ 
			[Proc (Id "write") [TypeChar] [True]] ++ [Proc (Id "write") [TypeString] [True]]

--Aggiunge all'environment il nome della funzione come variabile che sarà utilizzata per il ritrono del
--valore restituito dalla funzione (utilizzata in FunProcDecl)
addFunName id ty vs = ((Var id ty True):vs)

--Inserisce il nome della funzione/procedura nell'environment delle funzioni/procedure (utilizzata in FunProcDecl)
insFPInEnvLs x@(Fun i _ _ _) xs = x:xs
insFPInEnvLs x@(Proc i _ _) xs = x:xs

--controlla che la dichiarazione di funzione sia legale:
--non stesso nome di variabile e non con stessa dichiarazione di altra funzione (utilizzata in FunProcDecl)
checkDeclaredFun f@(Fun id re ty _) vs fs = if(id == rd || id == wr) 
						then Just "Syntax Error: cannot use read or write as function name, read and write are reserved words."
						else (case (checkIdLs id vs) of {
							Nothing -> checkFunLs3 f fs;
							Just id -> Just "Scope error: duplicate function definition.";
							});

--controlla che la dichiarazione di procedura sia legale
--non stesso nome di variabile e non con stessa dichiarazione di altra procedura (utilizzata in FunProcDecl)
checkDeclaredProc p@(Proc id ty _) vs ps = if(id == rd || id == wr) 
						then Just "Syntax error: cannot use read or write as procedure name, read and write are reserved words."
					        else case (checkIdLs id vs) of {
							Nothing -> checkProcLs2 p ps;
							Just id -> Just "Scope error: duplicate procedure definition.";
							}

--data una lista di id di parametri e il loro tipo crea una lista di tipi (utilizzata in Param)
createParamTypLs [] t = []
createParamTypLs (id:ids) t = [t] ++ (createParamTypLs ids t)

--data una lista di id di parametri e la modalità di passaggio (per riferimento: True, per valore: False )
--crea la lista con le modalità di passaggio (utilizzata in Param)
createParamRefLs [] b = []
createParamRefLs (id:ids) b = [b] ++ (createParamRefLs ids b)

--verifica che gli id passati in input non sia già presenti nell'environment delle funzioni (utilizzata in Param)
checkParName [] _ = Nothing
checkParName (x:xs) ys = case (checkParFunName x ys) of {
				Just a -> Just a;
				Nothing -> checkParName xs ys;
			    }

--dato un id controlla se è presente nell'environemnt delle funzioni
checkParFunName _ [] = Nothing
checkParFunName i ((Fun id _ _ _):fs) | i == id = Just i
				      | otherwise = checkParFunName i fs
checkParFunName i ((Proc id _ _):fs) | i == id = Just i
			  	     | otherwise = checkParFunName i fs

getFunType (Just (Fun i re ty _)) = re

--dato l'id della funzione e il suo tipo di ritorno controlla che non sia già stata definita nell'environment
--(utilizzata nella chiamata a funzione (ExprR))
checkFunLs2 id ty [] = Nothing
checkFunLs2 id ty (f@(Fun i r t _):fs) | ((id == i) && (ty == t)) = Just f 
				       | otherwise = checkFunLs2 id ty fs
checkFunLs2 id ty ((Proc _ _ _):fs) = checkFunLs2 id ty fs

checkFunLs3 f [] = Nothing
checkFunLs3 f@(Fun id re ty _) ((Fun i r t _):fs) | ((id == i) && (re == r) && (ty == t)) = Just "Scope error: duplicate identifier." 
					          | otherwise = checkFunLs3 f fs
checkFunLs3 f@(Fun id re ty _) ((Proc _ _ _):fs) = checkFunLs3 f fs

--dato un id di funzione e una lista di tipi dei parametri, controlla se esiste una funzione così strutturata
--altrimenti restituisce l'errore (utilizzata nella chiamata a funzione (ExprR))
checkFunExistence2 id ty [] False term = "Scope error: function " ++ showId id ++ " is not defined. At " ++ tokenPos2 term
checkFunExistence2 id ty [] True term = "Type error: function " ++ showId id ++ " call has wrog parameters. At " ++ tokenPos2 term
checkFunExistence2 id ty (f@(Fun i r t _):fs) b term | ((id == i) && (ty == t)) = ""
				                     | ((id == i) && (ty /= t)) = checkFunExistence2 id ty fs True term
				                     | otherwise = checkFunExistence2 id ty fs b term
checkFunExistence2 id ty ((Proc _ _ _):fs) b term = checkFunExistence2 id ty fs b term

checkFunExistence id ty fs term = checkFunExistence2 id ty fs False term

--data una procedura verifica se è già stata definita nell'environment (usata nella chiamata a procedura (Statement))
checkProcLs p [] = Nothing
checkProcLs p@(Proc id ty _) ((Proc i t _):ps) | ((id == i) && (ty == t)) = Just p 
				               | otherwise = checkProcLs p ps
checkProcLs p@(Proc id ty _) ((Fun _ _ _ _):ps) = checkProcLs p ps

checkProcLs2 p [] = Nothing
checkProcLs2 p@(Proc id ty _) ((Proc i t _):ps) | ((id == i) && (ty == t)) = Just "Scope error: duplicate identifier." 
				                | otherwise = checkProcLs2 p ps
checkProcLs2 p@(Proc id ty _) ((Fun _ _ _ _):ps) = checkProcLs2 p ps

----------------------------------------------------------------------------------------------
------------------OPERAZIONI PER IL TYPE CHECKING---------------------------------------------
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

getSize :: Type -> Integer
getSize t = case t of {
		TypeInt ->  4;
		TypeFloat ->  8;
		TypeChar  ->  1;
		TypeBool  ->  1;
		TypeString  ->  255;
		TypeArray i1 i2 ty -> (i2-i1)*(getSize ty);
		TypePointer _ -> 4;
		TypeVoid -> 4;
		} 

showTypeName :: Type -> String
showTypeName (TypeInt) = "Integer"
showTypeName (TypeFloat) = "Real"
showTypeName (TypeChar) = "Char"
showTypeName (TypeString) = "String"
showTypeName (TypeBool) = "Boolean"
showTypeName (TypeVoid) = "Void"
showTypeName (TypeArray i i2 t ) = "Array of " ++ showTypeName t
showTypeName (TypePointer t ) = "Pointer to " ++ showTypeName t

showId (Id id) = id
showBool b = case b of {
		BTrue  -> "true";
		BFalse -> "false";		
	}

getArrayType (TypeArray _ _ t) = t
getPointerType (TypePointer t) = t

checkForReturn [] = False
checkForReturn (b:bs) | b = True
		      | otherwise = checkForReturn bs

getSumType type1 type2 = if ((type1 == TypeInt && type2 == TypeFloat) || (type1 == TypeFloat && type2 == TypeInt))
			      then TypeFloat
			      else if ((type1 == TypeString && type2 /= TypeBool) || (type2 == TypeString && type1 /= TypeBool))
					then TypeString
					else type1;

checkSumOp type1 type2 err1 err2 term = if (err1 == "" && err2 == "")
						then if (((type1==type2) && (type1==TypeInt || type1==TypeFloat || type1==TypeString)) ||
							(type1==TypeInt && type2==TypeFloat) || (type2==TypeInt && type1==TypeFloat) ||
							(type1==TypeString && type2/=TypeBool) || (type2==TypeString && type1/=TypeBool))
						     then ""
						     else "Type error: invalid type in operation. At " ++ (tokenPos2 term)
						else if err1 /= ""
							then err1
							else err2

checkMathOp type1 type2 err1 err2 term = if (err1 == "" && err2 == "")
						then (	if ((type1 == TypeInt || type1 == TypeFloat) && (type2 == TypeInt || type2 == TypeFloat))
							then ""
							else "Type error:  invalid type (int or float only) in math operation. At " ++ (tokenPos2 term)
							)
						else if err1 /= ""
							then err1
							else err2

checkCompatibility type1 type2 err1 err2 term = if (err1 == "" && err2 == "")
						then (	if (
								((type1 == type2) && (type1 /= TypeVoid))  || 
								((type1 == TypeInt || type1 == TypeFloat) && (type2 == TypeInt || type2 == 										TypeFloat))
 								)
							then ""
							else "Type error: invalid Type (all except dummy type and not equals type) in boolean expression. At " ++ (tokenPos2 term)
							)
						else if err1 /= ""
							then err1
							else err2


checkBoolOp type1 type2 err1 err2 term = if (err1 == "" && err2 == "")
						then (	if (type1 == TypeBool && type2 == TypeBool)
							then ""
							else "Type error: invalid Type (boolean only) in boolean expression. At " ++ (tokenPos2 term)
							)
						else if err1 /= ""
							then err1
							else err2

checkCastValidity typeCast typeExpr err1 err2 term = if (err1 == "" && err2 == "")
							then (	if ((typeCast == typeExpr) 
									|| (typeCast == TypeFloat && typeExpr == TypeInt) 
									|| (typeCast == TypeInt && typeExpr == TypeBool)
									|| (typeCast == TypeString && typeExpr == TypeChar)
									)
								then ""
								else "Type error: cannot cast " ++ (showTypeName typeExpr) ++ " to " ++ (showTypeName typeCast) ++ ". At " ++ (tokenPos2 term)
								)
							else if err1 /= ""
								then err1
								else err2

checkStmtCondition type1 type2 type3 err1 err2 err3 term = if (err1 == "" && err2 == "" && err3 == "")
								then (	if (type1 == TypeBool && type2 == TypeVoid && type3 == TypeVoid)
									then ""
									else "Type error: the condition in statement is not boolean. At" ++ (tokenPos2 term)
									)
								else if err1 /= ""
									then err1
									else if err2 /= ""
										then err2
										else err3

checkForValidity id type2 type3 type4 err2 err3 err4 envV term = if (err2 == "" && err3 == "" && err4 == "")
									then ( case (getEnvVar id envV) of {
											Nothing -> "Scope error: variable" ++ showId id ++ " not declared. At " ++ tokenPos2 term;
											Just x  -> (
												if (getVarType (Just x) == TypeInt && type2 == TypeInt && type3 == TypeInt && type4 == TypeVoid)  
													then ""
													else "Type error: for statement accepts only integers to cicle on. At" ++ (tokenPos2 term)
												);	
										}
									)
									else if err2 /= ""
										then err2
										else if err3 /= ""
											then err3
											else err4

checkIdNotDeclared id xs = case (checkIdLs id xs) of {
				Nothing -> "Scope error: " ++ showId id ++ " not declared.";
				Just i  -> "";
			   }

checkArray type1 type2 err1 err2 term = if ( (err1 == "") && (err2 == "")  )
					    then  (case type1 of { 
							(TypeArray _ _ _ ) -> (if (not(type2 == TypeInt)) 
										     then "Type Error: int expected, founded " ++ showTypeName type2 ++ ". At " ++ tokenPos2 term
										     else ""
										    );
							otherwise 	   ->  "Type Error: array expected, founded " ++ showTypeName type2 ++ ". At " ++ tokenPos2 term
							})
					     else if err1==""
						    	then err2
							else err1 

