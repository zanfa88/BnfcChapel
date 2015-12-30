module ThreeAddressCode where

import Lexbool
import Absbool
import Environment
----------------------------------------------------------------------------------------------
------------------ Three Address Code Function------------------------------------------------
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------


data TacEl = 
  Simple A A 
 |SimpleRef A A 
 |Return A 
 |BinOperation Operator A A A
 |UnaryOperation Operator A A 
 |Conditional A L
 |ForConditional A A L
 |Unconditional L
 |Label L
 |End A
 |FunctionDc A [Type] Type Integer
 |ProcedureDc A [Type] Integer
 |FunctionCall A A [A] [Type] 
 |ProcedureCall A [A] [Type]
  deriving(Eq,Ord,Show)
	

printParam [] = ""
printParam [p] = p
printParam (p:ps) = p ++ ", " ++ printParam ps

pushParam [] = ""
pushParam [p] = "\tPushParam " ++ p ++ ";\n"
pushParam (p:ps) = "\tPushParam " ++ p ++ ";\n" ++ pushParam ps

popParam 0 = ""
popParam n = "\tPopParam " ++ show n ++ ";\n"

noneParam ps = if((length ps) == 0) then 4 else 0

getParamSize [] = 0
getParamSize (p:ps) = (getSize p) + (getParamSize ps)

getRef id [] = "";
getRef id (i:is) | id == i = "*"
   	        | otherwise = getRef id is


-- esegue il pretty print del tac
printTac []   = ""
printTac (x:xs) = case x of { 
			Simple a1 a2 -> "\t" ++ a1 ++ " = " ++ a2 ++ "\n";
			SimpleRef a1 a2 -> "\t*" ++ a1 ++ " = " ++ a2 ++ "\n";
			BinOperation op atot a1 a2 -> "\t" ++ atot ++ " = " ++ a1 ++ op ++ a2 ++ "\n";
			UnaryOperation op atot a1 -> "\t" ++ atot ++ " = " ++ op ++ a1 ++ "\n";
			Conditional cond l -> "\t" ++"if "++ cond ++ " goto L" ++ show l ++ ";" ++ "\n";
			ForConditional id a1 l -> "\t" ++"if "++ id ++ " < "++ a1 ++ " goto L" ++ show l ++ ";" ++ "\n";
			Unconditional l -> "\t" ++ "goto L"++ show l ++ ";" ++ "\n";
			Label l -> "L"++ show l ++ ": ";
			FunctionDc id paramTypL retT tempSize -> "function "++ id ++ "/"++ show (length paramTypL) ++ ": " ++ showTypeName retT ++ "\n" ++ "beginFunction " ++ show ((noneParam paramTypL) +(getParamSize paramTypL) + tempSize ) ++ "; \n" ;
			ProcedureDc id paramTypL tempSize -> "procedure "++ id ++ "/"++ show (length paramTypL) ++ "\n" ++ "beginProcedure " ++ show ((noneParam paramTypL) + (getParamSize paramTypL) + tempSize ) ++ "; \n" ;
			End endString -> endString ++ "; \n";
			FunctionCall aRet id paramL paramTypL-> pushParam paramL ++ "\t" ++ aRet ++" = call " ++ id ++ "("++ printParam paramL ++ ")" ++ "\n" ++ popParam (getParamSize paramTypL) ;
			ProcedureCall id paramL paramTypL -> pushParam paramL ++ "\t" ++ "call " ++ id ++ "("++ printParam paramL ++ ")" ++ "\n"  ++ popParam (getParamSize paramTypL) ;
			Return retAd ->"\t" ++ "return" ++ retAd ++ "\n";
		} ++ (printTac xs)

type A = String
type L = Int
type Operator = String
