{-# OPTIONS_GHC -fno-warn-incomplete-patterns #-}
module Printchapel where

-- pretty-printer generated by the BNF converter

import Abschapel
import Data.Char


-- the top-level printing method
printTree :: Print a => a -> String
printTree = render . prt 0

type Doc = [ShowS] -> [ShowS]

doc :: ShowS -> Doc
doc = (:)

render :: Doc -> String
render d = rend 0 (map ($ "") $ d []) "" where
  rend i ss = case ss of
    "["      :ts -> showChar '[' . rend i ts
    "("      :ts -> showChar '(' . rend i ts
    "{"      :ts -> showChar '{' . new (i+1) . rend (i+1) ts
    "}" : ";":ts -> new (i-1) . space "}" . showChar ';' . new (i-1) . rend (i-1) ts
    "}"      :ts -> new (i-1) . showChar '}' . new (i-1) . rend (i-1) ts
    ";"      :ts -> showChar ';' . new i . rend i ts
    t  : "," :ts -> showString t . space "," . rend i ts
    t  : ")" :ts -> showString t . showChar ')' . rend i ts
    t  : "]" :ts -> showString t . showChar ']' . rend i ts
    t        :ts -> space t . rend i ts
    _            -> id
  new i   = showChar '\n' . replicateS (2*i) (showChar ' ') . dropWhile isSpace
  space t = showString t . (\s -> if null s then "" else (' ':s))

parenth :: Doc -> Doc
parenth ss = doc (showChar '(') . ss . doc (showChar ')')

concatS :: [ShowS] -> ShowS
concatS = foldr (.) id

concatD :: [Doc] -> Doc
concatD = foldr (.) id

replicateS :: Int -> ShowS -> ShowS
replicateS n f = concatS (replicate n f)

-- the printer class does the job
class Print a where
  prt :: Int -> a -> Doc
  prtList :: [a] -> Doc
  prtList = concatD . map (prt 0)

instance Print a => Print [a] where
  prt _ = prtList

instance Print Char where
  prt _ s = doc (showChar '\'' . mkEsc '\'' s . showChar '\'')
  prtList s = doc (showChar '"' . concatS (map (mkEsc '"') s) . showChar '"')

mkEsc :: Char -> Char -> ShowS
mkEsc q s = case s of
  _ | s == q -> showChar '\\' . showChar s
  '\\'-> showString "\\\\"
  '\n' -> showString "\\n"
  '\t' -> showString "\\t"
  _ -> showChar s

prPrec :: Int -> Int -> Doc -> Doc
prPrec i j = if j<i then parenth else id


instance Print Integer where
  prt _ x = doc (shows x)


instance Print Double where
  prt _ x = doc (shows x)


instance Print Ident where
  prt _ (Ident i) = doc (showString ( i))



instance Print Program where
  prt i e = case e of
   Prog stmts -> prPrec i 0 (concatD [prt 0 stmts])


instance Print Stmt where
  prt i e = case e of
   Assgn lexpr rexpr -> prPrec i 0 (concatD [prt 0 lexpr , doc (showString "=") , prt 0 rexpr])
   Cond stmtcondition -> prPrec i 0 (concatD [prt 0 stmtcondition])
   While stmtwhile -> prPrec i 0 (concatD [prt 0 stmtwhile])
   Do stmtdo -> prPrec i 0 (concatD [prt 0 stmtdo])
   For stmtfor -> prPrec i 0 (concatD [prt 0 stmtfor])
   Jump stmtjump -> prPrec i 0 (concatD [prt 0 stmtjump])
   Write stmtwrite -> prPrec i 0 (concatD [prt 0 stmtwrite])
   Read stmtread -> prPrec i 0 (concatD [prt 0 stmtread])
   VarD stmtvar -> prPrec i 0 (concatD [prt 0 stmtvar])
   DFunc deffunc -> prPrec i 0 (concatD [prt 0 deffunc])
   CFunc callfunc -> prPrec i 0 (concatD [prt 0 callfunc])

  prtList es = case es of
   [] -> (concatD [])
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ";") , prt 0 xs])

instance Print LExpr where
  prt i e = case e of
   Id id -> prPrec i 0 (concatD [prt 0 id])
   ArrayEl lexpr rexpr -> prPrec i 0 (concatD [prt 0 lexpr , doc (showString "[") , prt 13 rexpr , doc (showString "]")])


instance Print RExpr where
  prt i e = case e of
   Ecount rexpr0 rexpr -> prPrec i 0 (concatD [prt 0 rexpr0 , doc (showString "#") , prt 2 rexpr])
   Elor rexpr0 rexpr -> prPrec i 2 (concatD [prt 2 rexpr0 , doc (showString "||") , prt 3 rexpr])
   Eland rexpr0 rexpr -> prPrec i 3 (concatD [prt 3 rexpr0 , doc (showString "&&") , prt 4 rexpr])
   Eeq rexpr0 rexpr -> prPrec i 4 (concatD [prt 4 rexpr0 , doc (showString "==") , prt 5 rexpr])
   Eneq rexpr0 rexpr -> prPrec i 4 (concatD [prt 4 rexpr0 , doc (showString "!=") , prt 5 rexpr])
   Eleq rexpr0 rexpr -> prPrec i 5 (concatD [prt 5 rexpr0 , doc (showString "<=") , prt 6 rexpr])
   Egeq rexpr0 rexpr -> prPrec i 5 (concatD [prt 5 rexpr0 , doc (showString ">=") , prt 6 rexpr])
   El rexpr0 rexpr -> prPrec i 5 (concatD [prt 5 rexpr0 , doc (showString "<") , prt 6 rexpr])
   Eg rexpr0 rexpr -> prPrec i 5 (concatD [prt 5 rexpr0 , doc (showString ">") , prt 6 rexpr])
   Erange rexpr0 rexpr -> prPrec i 6 (concatD [prt 6 rexpr0 , doc (showString "..") , prt 7 rexpr])
   Eadd rexpr0 rexpr -> prPrec i 7 (concatD [prt 7 rexpr0 , doc (showString "+") , prt 8 rexpr])
   Esub rexpr0 rexpr -> prPrec i 7 (concatD [prt 7 rexpr0 , doc (showString "-") , prt 8 rexpr])
   Ebitor rexpr0 rexpr -> prPrec i 8 (concatD [prt 8 rexpr0 , doc (showString "|") , prt 9 rexpr])
   Ebitxor rexpr0 rexpr -> prPrec i 9 (concatD [prt 9 rexpr0 , doc (showString "^") , prt 10 rexpr])
   Ebitand rexpr0 rexpr -> prPrec i 10 (concatD [prt 10 rexpr0 , doc (showString "&") , prt 11 rexpr])
   Eupos rexpr -> prPrec i 11 (concatD [doc (showString "+") , prt 11 rexpr])
   Euneg rexpr -> prPrec i 11 (concatD [doc (showString "-") , prt 11 rexpr])
   Emul rexpr0 rexpr -> prPrec i 12 (concatD [prt 12 rexpr0 , doc (showString "*") , prt 13 rexpr])
   Ediv rexpr0 rexpr -> prPrec i 12 (concatD [prt 12 rexpr0 , doc (showString "/") , prt 13 rexpr])
   Emod rexpr0 rexpr -> prPrec i 12 (concatD [prt 12 rexpr0 , doc (showString "%") , prt 13 rexpr])
   Econs basictype -> prPrec i 13 (concatD [prt 0 basictype])
   LExprR lexpr -> prPrec i 14 (concatD [prt 0 lexpr])

  prtList es = case es of
   [] -> (concatD [])
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ",") , prt 0 xs])

instance Print StmtWrite where
  prt i e = case e of
   WriteInt n -> prPrec i 0 (concatD [doc (showString "writeInt") , doc (showString "(") , prt 0 n , doc (showString ")")])
   WriteReal d -> prPrec i 0 (concatD [doc (showString "writeReal") , doc (showString "(") , prt 0 d , doc (showString ")")])
   WriteChar c -> prPrec i 0 (concatD [doc (showString "writeChar") , doc (showString "(") , prt 0 c , doc (showString ")")])
   WriteString str -> prPrec i 0 (concatD [doc (showString "writeString") , doc (showString "(") , prt 0 str , doc (showString ")")])


instance Print StmtRead where
  prt i e = case e of
   ReadInt n -> prPrec i 0 (concatD [doc (showString "readInt") , doc (showString "(") , prt 0 n , doc (showString ")")])
   ReadReal d -> prPrec i 0 (concatD [doc (showString "readReal") , doc (showString "(") , prt 0 d , doc (showString ")")])
   ReadChar c -> prPrec i 0 (concatD [doc (showString "readChar") , doc (showString "(") , prt 0 c , doc (showString ")")])
   ReadString str -> prPrec i 0 (concatD [doc (showString "readString") , doc (showString "(") , prt 0 str , doc (showString ")")])


instance Print StmtCondition where
  prt i e = case e of
   If1 rexpr stmt -> prPrec i 0 (concatD [doc (showString "if") , prt 0 rexpr , doc (showString "then") , prt 0 stmt])
   If2 rexpr stmts -> prPrec i 0 (concatD [doc (showString "if") , doc (showString "(") , prt 0 rexpr , doc (showString ")") , doc (showString "{") , prt 0 stmts , doc (showString "}")])


instance Print StmtWhile where
  prt i e = case e of
   WhileDo rexpr stmt -> prPrec i 0 (concatD [doc (showString "while") , prt 0 rexpr , doc (showString "do") , prt 0 stmt])
   WhileDoS rexpr stmts -> prPrec i 0 (concatD [doc (showString "while") , prt 0 rexpr , doc (showString "{") , prt 0 stmts , doc (showString "}")])


instance Print StmtDo where
  prt i e = case e of
   SDo stmts rexpr -> prPrec i 0 (concatD [doc (showString "do") , doc (showString "{") , prt 0 stmts , doc (showString "}") , doc (showString "while") , prt 0 rexpr , doc (showString ";")])


instance Print StmtFor where
  prt i e = case e of
   SForDo id aggr stmts -> prPrec i 0 (concatD [doc (showString "for") , prt 0 id , doc (showString "in") , prt 0 aggr , doc (showString "do") , doc (showString "{") , prt 0 stmts , doc (showString "}")])
   SForDoBloc id aggr stmts -> prPrec i 0 (concatD [doc (showString "for") , prt 0 id , doc (showString "in") , prt 0 aggr , doc (showString "{") , prt 0 stmts , doc (showString "}")])


instance Print Aggr where
  prt i e = case e of
   ForAggr n0 n -> prPrec i 0 (concatD [prt 0 n0 , doc (showString "..") , prt 0 n])


instance Print StmtJump where
  prt i e = case e of
   Break  -> prPrec i 0 (concatD [doc (showString "break")])
   Continue  -> prPrec i 0 (concatD [doc (showString "continue")])


instance Print StmtVar where
  prt i e = case e of
   SVarBlock blockvars -> prPrec i 0 (concatD [doc (showString "var") , prt 0 blockvars])
   SVarCon blockvars -> prPrec i 0 (concatD [doc (showString "const") , prt 0 blockvars])


instance Print BlockVar where
  prt i e = case e of
   SBlockVar id type' rexpr -> prPrec i 0 (concatD [prt 0 id , doc (showString ":") , prt 0 type' , doc (showString "=") , prt 0 rexpr])

  prtList es = case es of
   [] -> (concatD [])
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ",") , prt 0 xs])

instance Print DefFunc where
  prt i e = case e of
   SDefFunc id args stmts -> prPrec i 0 (concatD [doc (showString "function") , prt 0 id , doc (showString "(") , prt 0 args , doc (showString ")") , doc (showString "{") , prt 0 stmts , doc (showString "}")])


instance Print CallFunc where
  prt i e = case e of
   SCallFunc id rexprs -> prPrec i 0 (concatD [prt 0 id , doc (showString "(") , prt 0 rexprs , doc (showString ")")])


instance Print Arg where
  prt i e = case e of
   SArg id type' -> prPrec i 0 (concatD [prt 0 id , doc (showString ":") , prt 0 type'])
   PArg id type' -> prPrec i 0 (concatD [doc (showString "*") , prt 0 id , doc (showString ":") , prt 0 type'])

  prtList es = case es of
   [] -> (concatD [])
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ",") , prt 0 xs])

instance Print BasicType where
  prt i e = case e of
   RInt n -> prPrec i 0 (concatD [prt 0 n])
   RDouble d -> prPrec i 0 (concatD [prt 0 d])
   RChar c -> prPrec i 0 (concatD [prt 0 c])
   RString str -> prPrec i 0 (concatD [prt 0 str])
   RBoolean boolean -> prPrec i 0 (concatD [prt 0 boolean])


instance Print Boolean where
  prt i e = case e of
   RTrue  -> prPrec i 0 (concatD [doc (showString "true")])
   RFalse  -> prPrec i 0 (concatD [doc (showString "false")])


instance Print Type where
  prt i e = case e of
   RTypeInt  -> prPrec i 0 (concatD [doc (showString "int")])
   RTypeDouble  -> prPrec i 0 (concatD [doc (showString "real")])
   RTypeChar  -> prPrec i 0 (concatD [doc (showString "char")])
   RTypeString  -> prPrec i 0 (concatD [doc (showString "string")])
   RTypeBool  -> prPrec i 0 (concatD [doc (showString "boolean")])



