module Tac where

import Lexchapel
import Abschapel
import Envchapel


data TacEl = 
  BinaryOperation Operator I I I
 | SimpleAssignment [Char] [Char]
 | VariableDeclaration [Char]
 | WriteIntOperation Integer
 | ReadntOperation Integer [Char]
 | Then A Int
 | Else I
 | ForCondition A A I
 | Goto I
 | Label I
 | TempInit I [Char]
 | TempAssign I I
 | VarAssign [Char] I
 | Conditional I I
  deriving(Eq,Ord,Show)
	
printTac []   = ""
printTac (x:xs) = case x of { 
			TempInit i a -> "\t t" ++ show i ++ " = " ++ a ++ " ;\n"; 
			TempAssign i j -> "\t t" ++ show i ++ " = t" ++ show j ++ " ;\n"; 
			VarAssign a i -> "\t " ++ a ++ " = t" ++ show i ++" ;\n"; 
			BinaryOperation op r x y -> "\t t" ++ show r ++ " = t" ++ show x ++ op ++ "t" ++ show y ++ " ;\n";
			Conditional x l -> "\t " ++"IFZ t"++ show x ++ " goto L" ++ show l ++ ";" ++ "\n";
			Goto i -> "\t" ++ "goto Lab" ++ show i ++ ";" ++ "\n";
			Label i -> "L"++ show i ++ ":";

			SimpleAssignment i x -> "\t " ++ i ++ " = " ++ x ++ "\n";
			VariableDeclaration id -> "\t " ++ "new variable " ++ id ++ "\n";
			WriteIntOperation int -> "\t " ++ "writeInt " ++ (show int) ++ "\n";
			ReadntOperation  int i -> "\t " ++ i ++ " = " ++ "readInt " ++ (show int) ++ "\n";
			Then check i -> "\t " ++ "if not(" ++ check ++ ") goto Lab" ++ show i ++ ";" ++ "\n";
			Else i -> "\t " ++ "goto Lab" ++ show i ++ ";" ++ "\n";
			ForCondition idA idB i -> "\t " ++ "if not(" ++ idA ++ " < " ++ idB ++ ") goto Lab" ++ show i ++ ";"  ++ "\n";
			
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