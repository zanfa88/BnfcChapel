module Tac where

import Lexchapel
import Abschapel
import Envchapel


data TacEl = 
  BinaryOperation Operator A A A
 | SimpleAssignment [Char] [Char]
 | VariableDeclaration [Char]
  deriving(Eq,Ord,Show)
	
printTac []   = ""
printTac (x:xs) = case x of { 
			BinaryOperation op res x y -> res ++ " = " ++ x ++ op ++ y ++ "\n";
			SimpleAssignment i x -> i ++ " = " ++ x ++ "\n";
			VariableDeclaration id -> "new variable " ++ id ++ "\n";
		} ++ (printTac xs)

type A = String
type I = Integer
type Operator = String


getSize :: Type -> Integer
getSize t = case t of {
		RTypeInt ->  4;
		RTypeDouble ->  8;
		RTypeChar  ->  1;
		RTypeBool  ->  1;
		RTypeString  ->  255;
		TypeVoid -> 4;
		} 

showIdentificator (Ident id) = id

printEcons (Econs (RInt a)) = show a