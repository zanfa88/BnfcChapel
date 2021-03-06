module Skelbool where

-- Haskell module generated by the BNF converter

import Absbool
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transProgram :: Program -> Result
transProgram x = case x of
  Prog boolean  -> failure x


transBoolean :: Boolean -> Result
transBoolean x = case x of
  BTrue  -> failure x
  BFalse  -> failure x


transType :: Type -> Result
transType x = case x of
  TypeInt  -> failure x
  TypeFloat  -> failure x
  TypeChar  -> failure x
  TypeString  -> failure x
  TypeBool  -> failure x



