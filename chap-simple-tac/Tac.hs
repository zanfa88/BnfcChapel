module Tac where

import Lexchapel
import Abschapel
import Envchapel


data TacEl = 
  BinaryOperation Operator A A A
 | SimpleAssignment [Char] [Char]
 | VariableDeclaration [Char]
 | WriteIntOperation Integer
 | ReadntOperation Integer [Char]
 | Then A Int
 | Else I
 | Label I
  deriving(Eq,Ord,Show)
	
printTac []   = ""
printTac (x:xs) = case x of { 
			BinaryOperation op res x y -> "\t " ++ res ++ " = " ++ x ++ op ++ y ++ "\n";
			SimpleAssignment i x -> "\t " ++ i ++ " = " ++ x ++ "\n";
			VariableDeclaration id -> "\t " ++ "new variable " ++ id ++ "\n";
			WriteIntOperation int -> "\t " ++ "writeInt " ++ (show int) ++ "\n";
			ReadntOperation  int i -> "\t " ++ i ++ " = " ++ "readInt " ++ (show int) ++ "\n";
			Then check i -> "\t " ++ "if not(" ++ check ++ ") goto Lab" ++ show i ++ ";" ++ "\n";
			Else i -> "\t " ++ "goto Lab" ++ show i ++ ";" ++ "\n";
			Label i -> "Lab"++ show i ++ ": ";
		} ++ (printTac xs)

type A = String
type I = Int
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