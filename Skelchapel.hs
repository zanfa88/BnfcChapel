module Skelchapel where

-- Haskell module generated by the BNF converter

import Abschapel
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transIdent :: Ident -> Result
transIdent x = case x of
  Ident str  -> failure x


transProgram :: Program -> Result
transProgram x = case x of
  Prog stmts  -> failure x


transStmt :: Stmt -> Result
transStmt x = case x of
  Assgn lexpr assignment_op rexpr  -> failure x
  Cond stmtcondition  -> failure x
  While stmtwhile  -> failure x
  Do stmtdo  -> failure x
  For stmtfor  -> failure x
  Jump stmtjump  -> failure x
  Write stmtwrite  -> failure x
  Read stmtread  -> failure x
  VarD stmtvar  -> failure x
  DFunc deffunc  -> failure x
  CFunc callfunc  -> failure x


transLExpr :: LExpr -> Result
transLExpr x = case x of
  Id id  -> failure x
  ArrayEl lexpr rexpr  -> failure x


transRExpr :: RExpr -> Result
transRExpr x = case x of
  Eby rexpr1 rexpr2  -> failure x
  Ecount rexpr1 rexpr2  -> failure x
  Ealign rexpr1 rexpr2  -> failure x
  Elor rexpr1 rexpr2  -> failure x
  Eland rexpr1 rexpr2  -> failure x
  Eeq rexpr1 rexpr2  -> failure x
  Eneq rexpr1 rexpr2  -> failure x
  Eleq rexpr1 rexpr2  -> failure x
  Egeq rexpr1 rexpr2  -> failure x
  El rexpr1 rexpr2  -> failure x
  Eg rexpr1 rexpr2  -> failure x
  Erange rexpr1 rexpr2  -> failure x
  Eadd rexpr1 rexpr2  -> failure x
  Esub rexpr1 rexpr2  -> failure x
  Ebitor rexpr1 rexpr2  -> failure x
  Ebitxor rexpr1 rexpr2  -> failure x
  Ebitand rexpr1 rexpr2  -> failure x
  Eleft rexpr1 rexpr2  -> failure x
  Eright rexpr1 rexpr2  -> failure x
  Eupos rexpr  -> failure x
  Euneg rexpr  -> failure x
  Emul rexpr1 rexpr2  -> failure x
  Ediv rexpr1 rexpr2  -> failure x
  Emod rexpr1 rexpr2  -> failure x
  Eneg rexpr  -> failure x
  Ebneg rexpr  -> failure x
  Ereduce rexpr1 rexpr2  -> failure x
  Escan rexpr1 rexpr2  -> failure x
  Edmapped rexpr1 rexpr2  -> failure x
  Eexp rexpr  -> failure x
  Ecast rexpr1 rexpr2  -> failure x
  Enew rexpr  -> failure x
  Emember rexpr1 rexpr2  -> failure x
  Efunc rexpr  -> failure x
  EfuncPar rexpr args  -> failure x
  Eindex rexpr1 rexpr2  -> failure x
  Econs basictype  -> failure x
  LExpr lexpr  -> failure x


transAssignment_op :: Assignment_op -> Result
transAssignment_op x = case x of
  AssgnBase  -> failure x


transStmtWrite :: StmtWrite -> Result
transStmtWrite x = case x of
  WriteInt n  -> failure x
  WriteReal d  -> failure x
  WriteChar c  -> failure x
  WriteString str  -> failure x


transStmtRead :: StmtRead -> Result
transStmtRead x = case x of
  ReadInt n  -> failure x
  ReadReal d  -> failure x
  ReadChar c  -> failure x
  ReadString str  -> failure x


transStmtCondition :: StmtCondition -> Result
transStmtCondition x = case x of
  If1 rexpr stmt  -> failure x
  If2 rexpr stmts  -> failure x


transStmtWhile :: StmtWhile -> Result
transStmtWhile x = case x of
  WhileDo rexpr stmt  -> failure x
  WhileDoS rexpr stmts  -> failure x


transStmtDo :: StmtDo -> Result
transStmtDo x = case x of
  SDo stmts rexpr  -> failure x


transStmtFor :: StmtFor -> Result
transStmtFor x = case x of
  SForDo id aggr stmts  -> failure x
  SForDoBloc id aggr stmts  -> failure x


transAggr :: Aggr -> Result
transAggr x = case x of
  ForAggr n1 n2  -> failure x


transStmtJump :: StmtJump -> Result
transStmtJump x = case x of
  Break  -> failure x
  Continue  -> failure x


transStmtVar :: StmtVar -> Result
transStmtVar x = case x of
  SVarBlock blockvars  -> failure x
  SVarCon id type' rexpr  -> failure x


transBlockVar :: BlockVar -> Result
transBlockVar x = case x of
  SBlockVar id type' rexpr  -> failure x


transDefFunc :: DefFunc -> Result
transDefFunc x = case x of
  SDefFunc id args stmts  -> failure x


transCallFunc :: CallFunc -> Result
transCallFunc x = case x of
  SCallFunc id rexprs  -> failure x


transArg :: Arg -> Result
transArg x = case x of
  SArg id type'  -> failure x
  PArg id type'  -> failure x


transBasicType :: BasicType -> Result
transBasicType x = case x of
  RInt n  -> failure x
  RDouble d  -> failure x
  RChar c  -> failure x
  RString str  -> failure x
  RBoolean boolean  -> failure x


transBoolean :: Boolean -> Result
transBoolean x = case x of
  RTrue  -> failure x
  RFalse  -> failure x


transType :: Type -> Result
transType x = case x of
  RTypeInt  -> failure x
  RTypeDouble  -> failure x
  RTypeChar  -> failure x
  RTypeString  -> failure x
  RTypeBool  -> failure x



