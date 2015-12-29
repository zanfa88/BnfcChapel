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


transBoolean :: Boolean -> Result
transBoolean x = case x of
  Boolean_True  -> failure x
  Boolean_False  -> failure x


transAssignment_op :: Assignment_op -> Result
transAssignment_op x = case x of
  AssgnBase  -> failure x
  AssgnAdd  -> failure x
  AssgnSub  -> failure x
  AssgnMul  -> failure x
  AssgnDiv  -> failure x
  AssgnMod  -> failure x
  AssgnExp  -> failure x
  AssgnAnd  -> failure x
  AssgnOr  -> failure x
  AssgnPow  -> failure x
  AssgnAnd2  -> failure x
  AssgnOr2  -> failure x
  AssgnLeft  -> failure x
  AssgnRight  -> failure x
  AssgnSwap  -> failure x


transStmt :: Stmt -> Result
transStmt x = case x of
  Asa stmts  -> failure x
  Assgn lexpr assignment_op rexpr  -> failure x
  Cond stmtcondition  -> failure x
  Select stmtselect  -> failure x
  While stmtwhile  -> failure x
  Do stmtdo  -> failure x
  For stmtfor  -> failure x


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
  EfuncPar rexpr param  -> failure x
  Eindex rexpr1 rexpr2  -> failure x
  Econs constant  -> failure x
  LExpr lexpr  -> failure x


transStmtCondition :: StmtCondition -> Result
transStmtCondition x = case x of
  If1 rexpr stmt  -> failure x
  If2 rexpr stmt  -> failure x
  IfElse1 rexpr stmt1 stmt2  -> failure x
  IfElse2 rexpr stmt1 stmt2  -> failure x


transStmtSelect :: StmtSelect -> Result
transStmtSelect x = case x of
  SSelect rexpr swhens stmts  -> failure x


transSWhen :: SWhen -> Result
transSWhen x = case x of
  SWhenDo constant stmt  -> failure x
  SWhenNoDo constant stmts  -> failure x


transStmtWhile :: StmtWhile -> Result
transStmtWhile x = case x of
  WhileDo rexpr stmt  -> failure x
  WhileNoDo rexpr stmts  -> failure x


transStmtDo :: StmtDo -> Result
transStmtDo x = case x of
  SDo stmts rexpr  -> failure x


transStmtFor :: StmtFor -> Result
transStmtFor x = case x of
  SForDo rexpr aggr stmt  -> failure x
  SFor rexpr aggr stmts  -> failure x


transAggr :: Aggr -> Result
transAggr x = case x of
  ForAggr constant1 constant2  -> failure x


transParam :: Param -> Result
transParam x = case x of
  Pval rexpr  -> failure x
  Pref rexpr  -> failure x


transConstant :: Constant -> Result
transConstant x = case x of
  Int n  -> failure x
  Bool boolean  -> failure x
  Real d  -> failure x
  Char c  -> failure x
  String str  -> failure x


