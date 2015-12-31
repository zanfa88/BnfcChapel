{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module Parchapel where
import Abschapel
import Lexchapel
import ErrM
import qualified Data.Array as Happy_Data_Array
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))

-- parser produced by Happy Version 1.19.4

newtype HappyAbsSyn  = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: (Ident) -> (HappyAbsSyn )
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn ) -> (Ident)
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: (Integer) -> (HappyAbsSyn )
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn ) -> (Integer)
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: (Double) -> (HappyAbsSyn )
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn ) -> (Double)
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: (Char) -> (HappyAbsSyn )
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn ) -> (Char)
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: (String) -> (HappyAbsSyn )
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn ) -> (String)
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: (Program) -> (HappyAbsSyn )
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn ) -> (Program)
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: (Stmt) -> (HappyAbsSyn )
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn ) -> (Stmt)
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: (LExpr) -> (HappyAbsSyn )
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn ) -> (LExpr)
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: (RExpr) -> (HappyAbsSyn )
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn ) -> (RExpr)
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: (RExpr) -> (HappyAbsSyn )
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn ) -> (RExpr)
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: (RExpr) -> (HappyAbsSyn )
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn ) -> (RExpr)
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: (RExpr) -> (HappyAbsSyn )
happyIn15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn ) -> (RExpr)
happyOut15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: (RExpr) -> (HappyAbsSyn )
happyIn16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn ) -> (RExpr)
happyOut16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: (RExpr) -> (HappyAbsSyn )
happyIn17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn ) -> (RExpr)
happyOut17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: (RExpr) -> (HappyAbsSyn )
happyIn18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn ) -> (RExpr)
happyOut18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: (RExpr) -> (HappyAbsSyn )
happyIn19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn ) -> (RExpr)
happyOut19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: (RExpr) -> (HappyAbsSyn )
happyIn20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn ) -> (RExpr)
happyOut20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: (RExpr) -> (HappyAbsSyn )
happyIn21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn ) -> (RExpr)
happyOut21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: (RExpr) -> (HappyAbsSyn )
happyIn22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn ) -> (RExpr)
happyOut22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: (RExpr) -> (HappyAbsSyn )
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn ) -> (RExpr)
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: (RExpr) -> (HappyAbsSyn )
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn ) -> (RExpr)
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: (RExpr) -> (HappyAbsSyn )
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn ) -> (RExpr)
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: (RExpr) -> (HappyAbsSyn )
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn ) -> (RExpr)
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: (StmtWrite) -> (HappyAbsSyn )
happyIn27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn ) -> (StmtWrite)
happyOut27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: (StmtRead) -> (HappyAbsSyn )
happyIn28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn ) -> (StmtRead)
happyOut28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: (StmtCondition) -> (HappyAbsSyn )
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> (StmtCondition)
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: (StmtWhile) -> (HappyAbsSyn )
happyIn30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn ) -> (StmtWhile)
happyOut30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: (StmtDo) -> (HappyAbsSyn )
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> (StmtDo)
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: (StmtFor) -> (HappyAbsSyn )
happyIn32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> (StmtFor)
happyOut32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: (Aggr) -> (HappyAbsSyn )
happyIn33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn ) -> (Aggr)
happyOut33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: (StmtJump) -> (HappyAbsSyn )
happyIn34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn ) -> (StmtJump)
happyOut34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: (Param) -> (HappyAbsSyn )
happyIn35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> (Param)
happyOut35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (StmtVar) -> (HappyAbsSyn )
happyIn36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (StmtVar)
happyOut36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (BlockVar) -> (HappyAbsSyn )
happyIn37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> (BlockVar)
happyOut37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (DefFunc) -> (HappyAbsSyn )
happyIn38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (DefFunc)
happyOut38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (CallFunc) -> (HappyAbsSyn )
happyIn39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (CallFunc)
happyOut39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: (Arg) -> (HappyAbsSyn )
happyIn40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> (Arg)
happyOut40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut40 #-}
happyIn41 :: (BasicType) -> (HappyAbsSyn )
happyIn41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn ) -> (BasicType)
happyOut41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut41 #-}
happyIn42 :: (Boolean) -> (HappyAbsSyn )
happyIn42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn ) -> (Boolean)
happyOut42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut42 #-}
happyIn43 :: (Type) -> (HappyAbsSyn )
happyIn43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> (Type)
happyOut43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyIn44 :: ([Stmt]) -> (HappyAbsSyn )
happyIn44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn ) -> ([Stmt])
happyOut44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut44 #-}
happyIn45 :: ([RExpr]) -> (HappyAbsSyn )
happyIn45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn45 #-}
happyOut45 :: (HappyAbsSyn ) -> ([RExpr])
happyOut45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut45 #-}
happyIn46 :: ([BlockVar]) -> (HappyAbsSyn )
happyIn46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn46 #-}
happyOut46 :: (HappyAbsSyn ) -> ([BlockVar])
happyOut46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut46 #-}
happyIn47 :: ([Arg]) -> (HappyAbsSyn )
happyIn47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn47 #-}
happyOut47 :: (HappyAbsSyn ) -> ([Arg])
happyOut47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut47 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x89\x04\xc0\x00\x00\x00\xe2\x00\xae\x00\xd7\x00\x5b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb2\x00\x00\x00\xb5\x00\x09\x00\xb0\x00\x01\x00\xdc\x00\xdb\x00\xad\x00\xfb\xff\xd9\x00\xd8\x00\xa5\x00\xa9\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc6\x00\x0c\x00\xa6\x00\xc4\x00\x08\x00\x36\x00\xc8\x00\x63\x00\xa0\x00\xaf\x00\xc2\x00\x00\x00\x67\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfb\xff\xfb\xff\xfb\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb6\x00\xbe\x00\x00\x00\x90\x00\x8e\x00\x03\x00\xfb\xff\xbd\x00\x06\x00\x89\x04\x00\x00\xfb\xff\x1b\x00\x89\x04\xfb\xff\x0f\x00\xba\x00\x00\x00\xa8\x00\xbc\x00\x77\x00\xfb\xff\x8c\x00\x8a\x00\x69\x00\x89\x04\xb4\x00\xb1\x00\x82\x00\x41\x04\x00\x00\x00\x00\x0e\x00\x1b\x00\x1b\x00\x1b\x00\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\x89\x04\x89\x04\xaa\x00\xa3\x00\x00\x00\x00\x00\x76\x00\x00\x00\xa2\x00\x08\x00\x36\x00\x36\x00\x99\x00\x99\x00\x99\x00\x99\x00\x63\x00\x74\x00\x74\x00\x89\x00\x9c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6f\x00\x8f\x00\x92\x00\x91\x00\x8b\x00\xef\xff\x64\x00\x6a\x00\x00\x00\x00\x00\xfb\xff\x00\x00\xfb\xff\x54\x00\x89\x04\x4e\x00\x4c\x00\x47\x00\x41\x04\x89\x04\xfb\xff\x00\x00\x75\x00\x44\x00\x00\x00\x00\x00\x89\x04\x00\x00\x43\x00\x89\x04\x15\x00\x00\x00\x41\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x94\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x23\x00\x00\x00\x00\x00\x76\x02\x59\x00\x56\x02\x00\x00\x00\x00\x22\x00\x36\x02\x00\x00\x00\x00\x56\x00\x48\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x16\x02\x19\x04\x03\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x14\x00\x1e\x00\x00\x00\xf6\x01\x00\x00\x00\x00\x6d\x01\x00\x00\xd6\x01\x4f\x04\x4e\x01\x7d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x96\x02\x0a\x00\x1d\x00\x00\x00\x7f\x04\x00\x00\x00\x00\x18\x00\xf5\xff\x00\x00\x00\x00\x00\x00\x39\x04\x2f\x04\x23\x04\xf9\x03\xe3\x03\xcd\x03\xb6\x03\x9e\x03\x86\x03\x6d\x03\x53\x03\x39\x03\x1f\x03\x05\x03\xea\x02\xcf\x02\xb3\x02\x60\x04\x2f\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x53\x00\x00\x00\xb6\x01\x00\x00\x10\x01\x12\x00\x00\x00\x02\x00\xdc\xff\xf1\x00\x96\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd2\x00\x00\x00\x00\x00\xb3\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xa4\xff\x00\x00\xfe\xff\xed\xff\x00\x00\xa3\xff\x00\x00\xf2\xff\xf1\xff\xf7\xff\xf6\xff\xf5\xff\xf4\xff\xf3\xff\xf0\xff\xef\xff\xee\xff\xf9\xff\xba\xff\x9e\xff\xb9\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x9e\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xed\xff\xb0\xff\xaf\xff\xae\xff\xad\xff\xc9\xff\x00\x00\xc7\xff\xe8\xff\xe6\xff\xe3\xff\xde\xff\xdc\xff\xd9\xff\xd7\xff\xd5\xff\xd3\xff\xd0\xff\xcc\xff\xca\xff\xea\xff\xcb\xff\xac\xff\x00\x00\x00\x00\x00\x00\xaa\xff\xab\xff\xfd\xff\xfc\xff\xfb\xff\xfa\xff\x00\x00\x9d\xff\xb6\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa4\xff\xb5\xff\x00\x00\x00\x00\xa4\xff\xa1\xff\xa0\xff\x00\x00\xa2\xff\x00\x00\xf8\xff\x00\x00\x00\x00\x00\x00\x9b\xff\x00\x00\x00\x00\x00\x00\x00\x00\x9e\xff\x00\x00\xd1\xff\xd2\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa4\xff\x00\x00\x00\x00\xc5\xff\xc6\xff\x00\x00\xc0\xff\xe9\xff\xe7\xff\xe5\xff\xe4\xff\xe1\xff\xdf\xff\xe2\xff\xe0\xff\xdd\xff\xda\xff\xdb\xff\xd8\xff\xd6\xff\xd4\xff\xce\xff\xcf\xff\xcd\xff\xc8\xff\x00\x00\xa5\xff\xa7\xff\xa9\xff\xa8\xff\xa6\xff\x9c\xff\xc3\xff\xc4\xff\xc2\xff\xc8\xff\x00\x00\x9a\xff\x00\x00\x00\x00\x00\x00\xeb\xff\x00\x00\xec\xff\xb2\xff\xa1\xff\x9f\xff\x00\x00\x00\x00\xa4\xff\x00\x00\x00\x00\x9b\xff\x00\x00\xa4\xff\x00\x00\xbf\xff\xb4\xff\x00\x00\xb1\xff\x99\xff\xa4\xff\xbb\xff\x00\x00\xa4\xff\x00\x00\xbe\xff\x00\x00\xbc\xff\x00\x00\xc1\xff\xb3\xff\xbd\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x06\x00\x00\x00\x27\x00\x09\x00\x02\x00\x0b\x00\x06\x00\x02\x00\x01\x00\x09\x00\x01\x00\x0b\x00\x1e\x00\x02\x00\x06\x00\x02\x00\x02\x00\x09\x00\x01\x00\x0b\x00\x07\x00\x02\x00\x02\x00\x00\x00\x0a\x00\x1f\x00\x13\x00\x27\x00\x00\x00\x2f\x00\x01\x00\x1f\x00\x06\x00\x00\x00\x00\x00\x0f\x00\x2a\x00\x24\x00\x1d\x00\x1f\x00\x23\x00\x1e\x00\x2a\x00\x29\x00\x2b\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x2a\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x21\x00\x1f\x00\x2f\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x24\x00\x2a\x00\x21\x00\x21\x00\x2a\x00\x10\x00\x11\x00\x2b\x00\x01\x00\x14\x00\x15\x00\x2a\x00\x2a\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x02\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x03\x00\x02\x00\x09\x00\x12\x00\x0b\x00\x08\x00\x07\x00\x16\x00\x32\x00\x32\x00\x0d\x00\x32\x00\x32\x00\x02\x00\x25\x00\x26\x00\x33\x00\x2f\x00\x29\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x34\x00\x2f\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x00\x00\x31\x00\x2c\x00\x0c\x00\x07\x00\x05\x00\x06\x00\x07\x00\x0a\x00\x0e\x00\x2f\x00\x12\x00\x04\x00\x18\x00\x25\x00\x26\x00\x30\x00\x0c\x00\x29\x00\x05\x00\x32\x00\x32\x00\x07\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x07\x00\x1e\x00\x00\x00\x20\x00\x33\x00\x22\x00\x23\x00\x07\x00\x06\x00\x07\x00\x07\x00\x28\x00\x33\x00\x02\x00\x17\x00\x34\x00\x07\x00\x34\x00\x06\x00\x0e\x00\x35\x00\x04\x00\x18\x00\x0a\x00\x05\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x30\x00\x1e\x00\x00\x00\x20\x00\x0c\x00\x22\x00\x23\x00\x31\x00\x06\x00\x07\x00\x35\x00\x28\x00\x16\x00\x34\x00\x06\x00\x06\x00\x33\x00\x06\x00\x06\x00\x33\x00\x2f\x00\x33\x00\x0f\x00\x39\x00\x06\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\xff\xff\x1e\x00\x00\x00\x20\x00\x33\x00\x22\x00\x23\x00\xff\xff\x06\x00\x07\x00\xff\xff\x28\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\xff\xff\x1e\x00\x00\x00\x20\x00\xff\xff\x22\x00\x23\x00\xff\xff\x06\x00\x07\x00\xff\xff\x28\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\xff\xff\x1e\x00\x00\x00\x20\x00\xff\xff\x22\x00\x23\x00\xff\xff\x06\x00\x07\x00\xff\xff\x28\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\xff\xff\x1e\x00\x00\x00\x20\x00\xff\xff\x22\x00\x23\x00\xff\xff\x06\x00\x07\x00\xff\xff\x28\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\xff\xff\x1e\x00\x00\x00\x20\x00\xff\xff\x22\x00\x23\x00\xff\xff\x06\x00\x07\x00\xff\xff\x28\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\xff\xff\x1e\x00\xff\xff\x20\x00\xff\xff\x22\x00\x23\x00\xff\xff\xff\xff\xff\xff\xff\xff\x28\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x25\x00\x26\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\x25\x00\x26\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\x25\x00\x26\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\x25\x00\x26\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x14\x00\x15\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\xff\xff\xff\xff\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\xff\xff\xff\xff\xff\xff\x14\x00\x15\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x25\x00\x26\x00\x07\x00\xff\xff\xff\xff\xff\xff\x19\x00\xff\xff\x1b\x00\xff\xff\x25\x00\x26\x00\x00\x00\xff\xff\xff\xff\x14\x00\x15\x00\x24\x00\x06\x00\x07\x00\x27\x00\x28\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\xff\xff\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\xff\xff\x1e\x00\x00\x00\x20\x00\xff\xff\x22\x00\x23\x00\xff\xff\x06\x00\x07\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\xff\xff\x1e\x00\xff\xff\x20\x00\xff\xff\x22\x00\x23\x00\x1a\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\xff\xff\x20\x00\x21\x00\x22\x00\xff\xff\xff\xff\x25\x00\x26\x00\xff\xff\xff\xff\xff\xff\xff\xff\x2b\x00\x2c\x00\x2d\x00\x2e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x33\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x39\x00\x98\x00\xaf\x00\x3a\x00\x57\x00\x3b\x00\x48\x00\x57\x00\x70\x00\x3a\x00\x9b\x00\x3b\x00\xa5\x00\x57\x00\x39\x00\x57\x00\x57\x00\x3a\x00\xb2\x00\x3b\x00\x8d\x00\x5c\x00\x57\x00\x41\x00\xa2\x00\x3c\x00\x71\x00\x8d\x00\x98\x00\xa6\x00\x5b\x00\x3c\x00\x39\x00\x41\x00\x41\x00\xb7\x00\x3d\x00\x99\x00\x9c\x00\x3c\x00\x58\x00\x74\x00\x3d\x00\x5b\x00\xb0\x00\x03\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x3d\x00\x03\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x42\x00\x3c\x00\x75\x00\x03\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x99\x00\x93\x00\x42\x00\x42\x00\x3d\x00\x6c\x00\x6d\x00\x9a\x00\x75\x00\x6e\x00\x6f\x00\x43\x00\x4b\x00\x03\x00\x3e\x00\x3f\x00\x40\x00\x41\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x76\x00\x48\x00\x26\x00\x50\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x63\x00\x57\x00\x69\x00\x4d\x00\x6a\x00\x64\x00\x98\x00\x4e\x00\xbc\x00\xbd\x00\x65\x00\xb9\x00\xbb\x00\x57\x00\x36\x00\x37\x00\x03\x00\xb2\x00\xa2\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x3e\x00\xb5\x00\x26\x00\x50\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x03\x00\x73\x00\xa4\x00\xa7\x00\xa8\x00\x04\x00\x05\x00\x06\x00\xa9\x00\xaa\x00\xab\x00\xac\x00\x66\x00\x67\x00\x36\x00\x37\x00\x68\x00\x6b\x00\x51\x00\x72\x00\xad\x00\x9f\x00\x78\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x79\x00\x0d\x00\x03\x00\x0e\x00\x03\x00\x0f\x00\x10\x00\x95\x00\x05\x00\x06\x00\x96\x00\x11\x00\x03\x00\x57\x00\xa0\x00\x3e\x00\xa1\x00\x3e\x00\x59\x00\x5f\x00\x3f\x00\x66\x00\x67\x00\x5e\x00\x72\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x68\x00\x0d\x00\x03\x00\x0e\x00\x6b\x00\x0f\x00\x10\x00\x73\x00\x05\x00\x06\x00\x3f\x00\xb7\x00\x4e\x00\x3e\x00\x20\x00\x21\x00\x03\x00\x45\x00\x46\x00\x03\x00\x4b\x00\x03\x00\x4f\x00\xff\xff\x50\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x03\x00\x0e\x00\x03\x00\x0f\x00\x10\x00\x00\x00\x05\x00\x06\x00\x00\x00\xb9\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x03\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x00\x00\x05\x00\x06\x00\x00\x00\xae\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x03\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x00\x00\x05\x00\x06\x00\x00\x00\xb3\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x03\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x00\x00\x05\x00\x06\x00\x00\x00\x79\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x03\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x00\x00\x05\x00\x06\x00\x00\x00\x52\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x00\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x55\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\xad\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\xb5\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x54\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x59\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x61\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x46\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x49\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x00\x00\x9d\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x36\x00\x37\x00\x7b\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x36\x00\x37\x00\x7c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x36\x00\x37\x00\x7d\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x36\x00\x37\x00\x7e\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x00\x00\x36\x00\x37\x00\x7f\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x00\x00\x36\x00\x37\x00\x80\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x00\x00\x36\x00\x37\x00\x81\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x00\x00\x36\x00\x37\x00\x82\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x00\x37\x00\x83\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x00\x37\x00\x84\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x00\x37\x00\x85\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x00\x37\x00\x86\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x00\x37\x00\x87\x00\x31\x00\x32\x00\x33\x00\x34\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x88\x00\x32\x00\x33\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5f\x00\x32\x00\x33\x00\x34\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x00\x00\x00\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x60\x00\x32\x00\x33\x00\x34\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x00\x00\x00\x00\x26\x00\x89\x00\x34\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x00\x00\x00\x00\x8a\x00\x34\x00\x00\x00\x00\x00\x00\x00\x36\x00\x37\x00\x00\x00\x00\x00\x00\x00\x8b\x00\x34\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x36\x00\x37\x00\x26\x00\x00\x00\x00\x00\x00\x00\x8f\x00\x00\x00\x90\x00\x00\x00\x36\x00\x37\x00\x03\x00\x00\x00\x00\x00\x53\x00\x34\x00\x91\x00\x7a\x00\x06\x00\x92\x00\x93\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x00\x37\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x03\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x00\x00\x96\x00\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x00\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x13\x00\x00\x00\x14\x00\x15\x00\x16\x00\x00\x00\x17\x00\x18\x00\x19\x00\x00\x00\x00\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (1, 102) [
	(1 , happyReduce_1),
	(2 , happyReduce_2),
	(3 , happyReduce_3),
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74),
	(75 , happyReduce_75),
	(76 , happyReduce_76),
	(77 , happyReduce_77),
	(78 , happyReduce_78),
	(79 , happyReduce_79),
	(80 , happyReduce_80),
	(81 , happyReduce_81),
	(82 , happyReduce_82),
	(83 , happyReduce_83),
	(84 , happyReduce_84),
	(85 , happyReduce_85),
	(86 , happyReduce_86),
	(87 , happyReduce_87),
	(88 , happyReduce_88),
	(89 , happyReduce_89),
	(90 , happyReduce_90),
	(91 , happyReduce_91),
	(92 , happyReduce_92),
	(93 , happyReduce_93),
	(94 , happyReduce_94),
	(95 , happyReduce_95),
	(96 , happyReduce_96),
	(97 , happyReduce_97),
	(98 , happyReduce_98),
	(99 , happyReduce_99),
	(100 , happyReduce_100),
	(101 , happyReduce_101),
	(102 , happyReduce_102)
	]

happy_n_terms = 58 :: Int
happy_n_nonterms = 44 :: Int

happyReduce_1 = happySpecReduce_1  0# happyReduction_1
happyReduction_1 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TV happy_var_1)) -> 
	happyIn4
		 (Ident happy_var_1
	)}

happyReduce_2 = happySpecReduce_1  1# happyReduction_2
happyReduction_2 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn5
		 ((read ( happy_var_1)) :: Integer
	)}

happyReduce_3 = happySpecReduce_1  2# happyReduction_3
happyReduction_3 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn6
		 ((read ( happy_var_1)) :: Double
	)}

happyReduce_4 = happySpecReduce_1  3# happyReduction_4
happyReduction_4 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn7
		 ((read ( happy_var_1)) :: Char
	)}

happyReduce_5 = happySpecReduce_1  4# happyReduction_5
happyReduction_5 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn8
		 (happy_var_1
	)}

happyReduce_6 = happySpecReduce_1  5# happyReduction_6
happyReduction_6 happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	happyIn9
		 (Prog happy_var_1
	)}

happyReduce_7 = happySpecReduce_3  6# happyReduction_7
happyReduction_7 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (Assgn happy_var_1 happy_var_3
	)}}

happyReduce_8 = happySpecReduce_1  6# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (Cond happy_var_1
	)}

happyReduce_9 = happySpecReduce_1  6# happyReduction_9
happyReduction_9 happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (While happy_var_1
	)}

happyReduce_10 = happySpecReduce_1  6# happyReduction_10
happyReduction_10 happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (Do happy_var_1
	)}

happyReduce_11 = happySpecReduce_1  6# happyReduction_11
happyReduction_11 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (For happy_var_1
	)}

happyReduce_12 = happySpecReduce_1  6# happyReduction_12
happyReduction_12 happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (Jump happy_var_1
	)}

happyReduce_13 = happySpecReduce_1  6# happyReduction_13
happyReduction_13 happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (Write happy_var_1
	)}

happyReduce_14 = happySpecReduce_1  6# happyReduction_14
happyReduction_14 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (Read happy_var_1
	)}

happyReduce_15 = happySpecReduce_1  6# happyReduction_15
happyReduction_15 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (VarD happy_var_1
	)}

happyReduce_16 = happySpecReduce_1  6# happyReduction_16
happyReduction_16 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (DFunc happy_var_1
	)}

happyReduce_17 = happySpecReduce_1  6# happyReduction_17
happyReduction_17 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (CFunc happy_var_1
	)}

happyReduce_18 = happySpecReduce_1  7# happyReduction_18
happyReduction_18 happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (Id happy_var_1
	)}

happyReduce_19 = happyReduce 4# 7# happyReduction_19
happyReduction_19 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (ArrayEl happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_20 = happySpecReduce_3  8# happyReduction_20
happyReduction_20 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut13 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (Ecount happy_var_1 happy_var_3
	)}}

happyReduce_21 = happySpecReduce_1  8# happyReduction_21
happyReduction_21 happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	happyIn12
		 (happy_var_1
	)}

happyReduce_22 = happySpecReduce_3  9# happyReduction_22
happyReduction_22 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOut14 happy_x_3 of { happy_var_3 -> 
	happyIn13
		 (Elor happy_var_1 happy_var_3
	)}}

happyReduce_23 = happySpecReduce_1  9# happyReduction_23
happyReduction_23 happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (happy_var_1
	)}

happyReduce_24 = happySpecReduce_3  10# happyReduction_24
happyReduction_24 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOut15 happy_x_3 of { happy_var_3 -> 
	happyIn14
		 (Eland happy_var_1 happy_var_3
	)}}

happyReduce_25 = happySpecReduce_1  10# happyReduction_25
happyReduction_25 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn14
		 (happy_var_1
	)}

happyReduce_26 = happySpecReduce_3  11# happyReduction_26
happyReduction_26 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	case happyOut16 happy_x_3 of { happy_var_3 -> 
	happyIn15
		 (Eeq happy_var_1 happy_var_3
	)}}

happyReduce_27 = happySpecReduce_3  11# happyReduction_27
happyReduction_27 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	case happyOut16 happy_x_3 of { happy_var_3 -> 
	happyIn15
		 (Eneq happy_var_1 happy_var_3
	)}}

happyReduce_28 = happySpecReduce_1  11# happyReduction_28
happyReduction_28 happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	happyIn15
		 (happy_var_1
	)}

happyReduce_29 = happySpecReduce_3  12# happyReduction_29
happyReduction_29 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	case happyOut17 happy_x_3 of { happy_var_3 -> 
	happyIn16
		 (Eleq happy_var_1 happy_var_3
	)}}

happyReduce_30 = happySpecReduce_3  12# happyReduction_30
happyReduction_30 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	case happyOut17 happy_x_3 of { happy_var_3 -> 
	happyIn16
		 (Egeq happy_var_1 happy_var_3
	)}}

happyReduce_31 = happySpecReduce_3  12# happyReduction_31
happyReduction_31 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	case happyOut17 happy_x_3 of { happy_var_3 -> 
	happyIn16
		 (El happy_var_1 happy_var_3
	)}}

happyReduce_32 = happySpecReduce_3  12# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	case happyOut17 happy_x_3 of { happy_var_3 -> 
	happyIn16
		 (Eg happy_var_1 happy_var_3
	)}}

happyReduce_33 = happySpecReduce_1  12# happyReduction_33
happyReduction_33 happy_x_1
	 =  case happyOut17 happy_x_1 of { happy_var_1 -> 
	happyIn16
		 (happy_var_1
	)}

happyReduce_34 = happySpecReduce_3  13# happyReduction_34
happyReduction_34 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut17 happy_x_1 of { happy_var_1 -> 
	case happyOut18 happy_x_3 of { happy_var_3 -> 
	happyIn17
		 (Erange happy_var_1 happy_var_3
	)}}

happyReduce_35 = happySpecReduce_1  13# happyReduction_35
happyReduction_35 happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	happyIn17
		 (happy_var_1
	)}

happyReduce_36 = happySpecReduce_3  14# happyReduction_36
happyReduction_36 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn18
		 (Eadd happy_var_1 happy_var_3
	)}}

happyReduce_37 = happySpecReduce_3  14# happyReduction_37
happyReduction_37 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn18
		 (Esub happy_var_1 happy_var_3
	)}}

happyReduce_38 = happySpecReduce_1  14# happyReduction_38
happyReduction_38 happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	happyIn18
		 (happy_var_1
	)}

happyReduce_39 = happySpecReduce_3  15# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut20 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (Ebitor happy_var_1 happy_var_3
	)}}

happyReduce_40 = happySpecReduce_1  15# happyReduction_40
happyReduction_40 happy_x_1
	 =  case happyOut20 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (happy_var_1
	)}

happyReduce_41 = happySpecReduce_3  16# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut20 happy_x_1 of { happy_var_1 -> 
	case happyOut21 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (Ebitxor happy_var_1 happy_var_3
	)}}

happyReduce_42 = happySpecReduce_1  16# happyReduction_42
happyReduction_42 happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (happy_var_1
	)}

happyReduce_43 = happySpecReduce_3  17# happyReduction_43
happyReduction_43 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_3 of { happy_var_3 -> 
	happyIn21
		 (Ebitand happy_var_1 happy_var_3
	)}}

happyReduce_44 = happySpecReduce_1  17# happyReduction_44
happyReduction_44 happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (happy_var_1
	)}

happyReduce_45 = happySpecReduce_2  18# happyReduction_45
happyReduction_45 happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_2 of { happy_var_2 -> 
	happyIn22
		 (Eupos happy_var_2
	)}

happyReduce_46 = happySpecReduce_2  18# happyReduction_46
happyReduction_46 happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_2 of { happy_var_2 -> 
	happyIn22
		 (Euneg happy_var_2
	)}

happyReduce_47 = happySpecReduce_1  18# happyReduction_47
happyReduction_47 happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn22
		 (happy_var_1
	)}

happyReduce_48 = happySpecReduce_3  19# happyReduction_48
happyReduction_48 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_3 of { happy_var_3 -> 
	happyIn23
		 (Emul happy_var_1 happy_var_3
	)}}

happyReduce_49 = happySpecReduce_3  19# happyReduction_49
happyReduction_49 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_3 of { happy_var_3 -> 
	happyIn23
		 (Ediv happy_var_1 happy_var_3
	)}}

happyReduce_50 = happySpecReduce_3  19# happyReduction_50
happyReduction_50 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_3 of { happy_var_3 -> 
	happyIn23
		 (Emod happy_var_1 happy_var_3
	)}}

happyReduce_51 = happySpecReduce_1  19# happyReduction_51
happyReduction_51 happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 (happy_var_1
	)}

happyReduce_52 = happySpecReduce_1  20# happyReduction_52
happyReduction_52 happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	happyIn24
		 (Econs happy_var_1
	)}

happyReduce_53 = happySpecReduce_1  20# happyReduction_53
happyReduction_53 happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	happyIn24
		 (happy_var_1
	)}

happyReduce_54 = happySpecReduce_1  21# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn25
		 (LExprR happy_var_1
	)}

happyReduce_55 = happySpecReduce_3  21# happyReduction_55
happyReduction_55 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn25
		 (happy_var_2
	)}

happyReduce_56 = happySpecReduce_1  22# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 (happy_var_1
	)}

happyReduce_57 = happyReduce 4# 23# happyReduction_57
happyReduction_57 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut5 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 (WriteInt happy_var_3
	) `HappyStk` happyRest}

happyReduce_58 = happyReduce 4# 23# happyReduction_58
happyReduction_58 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 (WriteReal happy_var_3
	) `HappyStk` happyRest}

happyReduce_59 = happyReduce 4# 24# happyReduction_59
happyReduction_59 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut5 happy_x_3 of { happy_var_3 -> 
	happyIn28
		 (ReadInt happy_var_3
	) `HappyStk` happyRest}

happyReduce_60 = happyReduce 4# 24# happyReduction_60
happyReduction_60 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_3 of { happy_var_3 -> 
	happyIn28
		 (ReadReal happy_var_3
	) `HappyStk` happyRest}

happyReduce_61 = happyReduce 4# 25# happyReduction_61
happyReduction_61 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut12 happy_x_2 of { happy_var_2 -> 
	case happyOut10 happy_x_4 of { happy_var_4 -> 
	happyIn29
		 (If1 happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_62 = happyReduce 7# 25# happyReduction_62
happyReduction_62 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut12 happy_x_3 of { happy_var_3 -> 
	case happyOut44 happy_x_6 of { happy_var_6 -> 
	happyIn29
		 (If2 happy_var_3 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_63 = happyReduce 4# 26# happyReduction_63
happyReduction_63 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut12 happy_x_2 of { happy_var_2 -> 
	case happyOut10 happy_x_4 of { happy_var_4 -> 
	happyIn30
		 (WhileDo happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_64 = happyReduce 5# 26# happyReduction_64
happyReduction_64 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut12 happy_x_2 of { happy_var_2 -> 
	case happyOut44 happy_x_4 of { happy_var_4 -> 
	happyIn30
		 (WhileDoS happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_65 = happyReduce 7# 27# happyReduction_65
happyReduction_65 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut44 happy_x_3 of { happy_var_3 -> 
	case happyOut12 happy_x_6 of { happy_var_6 -> 
	happyIn31
		 (SDo happy_var_3 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_66 = happyReduce 8# 28# happyReduction_66
happyReduction_66 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut12 happy_x_2 of { happy_var_2 -> 
	case happyOut33 happy_x_4 of { happy_var_4 -> 
	case happyOut44 happy_x_7 of { happy_var_7 -> 
	happyIn32
		 (SForDo happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest}}}

happyReduce_67 = happyReduce 7# 28# happyReduction_67
happyReduction_67 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut12 happy_x_2 of { happy_var_2 -> 
	case happyOut33 happy_x_4 of { happy_var_4 -> 
	case happyOut44 happy_x_6 of { happy_var_6 -> 
	happyIn32
		 (SForDo happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_68 = happySpecReduce_3  29# happyReduction_68
happyReduction_68 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	case happyOut5 happy_x_3 of { happy_var_3 -> 
	happyIn33
		 (ForAggr happy_var_1 happy_var_3
	)}}

happyReduce_69 = happySpecReduce_1  30# happyReduction_69
happyReduction_69 happy_x_1
	 =  happyIn34
		 (Break
	)

happyReduce_70 = happySpecReduce_1  30# happyReduction_70
happyReduction_70 happy_x_1
	 =  happyIn34
		 (Continue
	)

happyReduce_71 = happySpecReduce_1  31# happyReduction_71
happyReduction_71 happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	happyIn35
		 (Pval happy_var_1
	)}

happyReduce_72 = happySpecReduce_2  31# happyReduction_72
happyReduction_72 happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn35
		 (Pref happy_var_2
	)}

happyReduce_73 = happySpecReduce_2  32# happyReduction_73
happyReduction_73 happy_x_2
	happy_x_1
	 =  case happyOut46 happy_x_2 of { happy_var_2 -> 
	happyIn36
		 (SVarBlock happy_var_2
	)}

happyReduce_74 = happySpecReduce_2  32# happyReduction_74
happyReduction_74 happy_x_2
	happy_x_1
	 =  case happyOut46 happy_x_2 of { happy_var_2 -> 
	happyIn36
		 (SVarCon happy_var_2
	)}

happyReduce_75 = happyReduce 5# 33# happyReduction_75
happyReduction_75 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOut43 happy_x_3 of { happy_var_3 -> 
	case happyOut12 happy_x_5 of { happy_var_5 -> 
	happyIn37
		 (SBlockVar happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_76 = happyReduce 8# 34# happyReduction_76
happyReduction_76 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut4 happy_x_2 of { happy_var_2 -> 
	case happyOut47 happy_x_4 of { happy_var_4 -> 
	case happyOut44 happy_x_7 of { happy_var_7 -> 
	happyIn38
		 (SDefFunc happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest}}}

happyReduce_77 = happyReduce 4# 35# happyReduction_77
happyReduction_77 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn39
		 (SCallFunc happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_78 = happySpecReduce_3  36# happyReduction_78
happyReduction_78 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOut43 happy_x_3 of { happy_var_3 -> 
	happyIn40
		 (SArg happy_var_1 happy_var_3
	)}}

happyReduce_79 = happySpecReduce_1  37# happyReduction_79
happyReduction_79 happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (RInt happy_var_1
	)}

happyReduce_80 = happySpecReduce_1  37# happyReduction_80
happyReduction_80 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (RDouble happy_var_1
	)}

happyReduce_81 = happySpecReduce_1  37# happyReduction_81
happyReduction_81 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (RChar happy_var_1
	)}

happyReduce_82 = happySpecReduce_1  37# happyReduction_82
happyReduction_82 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (RString happy_var_1
	)}

happyReduce_83 = happySpecReduce_1  37# happyReduction_83
happyReduction_83 happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (RBoolean happy_var_1
	)}

happyReduce_84 = happySpecReduce_1  38# happyReduction_84
happyReduction_84 happy_x_1
	 =  happyIn42
		 (RTrue
	)

happyReduce_85 = happySpecReduce_1  38# happyReduction_85
happyReduction_85 happy_x_1
	 =  happyIn42
		 (RFalse
	)

happyReduce_86 = happySpecReduce_1  39# happyReduction_86
happyReduction_86 happy_x_1
	 =  happyIn43
		 (RTypeInt
	)

happyReduce_87 = happySpecReduce_1  39# happyReduction_87
happyReduction_87 happy_x_1
	 =  happyIn43
		 (RTypeDouble
	)

happyReduce_88 = happySpecReduce_1  39# happyReduction_88
happyReduction_88 happy_x_1
	 =  happyIn43
		 (RTypeChar
	)

happyReduce_89 = happySpecReduce_1  39# happyReduction_89
happyReduction_89 happy_x_1
	 =  happyIn43
		 (RTypeString
	)

happyReduce_90 = happySpecReduce_1  39# happyReduction_90
happyReduction_90 happy_x_1
	 =  happyIn43
		 (RTypeBool
	)

happyReduce_91 = happySpecReduce_0  40# happyReduction_91
happyReduction_91  =  happyIn44
		 ([]
	)

happyReduce_92 = happySpecReduce_1  40# happyReduction_92
happyReduction_92 happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	happyIn44
		 ((:[]) happy_var_1
	)}

happyReduce_93 = happySpecReduce_3  40# happyReduction_93
happyReduction_93 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	case happyOut44 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_94 = happySpecReduce_0  41# happyReduction_94
happyReduction_94  =  happyIn45
		 ([]
	)

happyReduce_95 = happySpecReduce_1  41# happyReduction_95
happyReduction_95 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 ((:[]) happy_var_1
	)}

happyReduce_96 = happySpecReduce_3  41# happyReduction_96
happyReduction_96 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn45
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_97 = happySpecReduce_0  42# happyReduction_97
happyReduction_97  =  happyIn46
		 ([]
	)

happyReduce_98 = happySpecReduce_1  42# happyReduction_98
happyReduction_98 happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 ((:[]) happy_var_1
	)}

happyReduce_99 = happySpecReduce_3  42# happyReduction_99
happyReduction_99 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_100 = happySpecReduce_0  43# happyReduction_100
happyReduction_100  =  happyIn47
		 ([]
	)

happyReduce_101 = happySpecReduce_1  43# happyReduction_101
happyReduction_101 happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn47
		 ((:[]) happy_var_1
	)}

happyReduce_102 = happySpecReduce_3  43# happyReduction_102
happyReduction_102 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn47
		 ((:) happy_var_1 happy_var_3
	)}}

happyNewToken action sts stk [] =
	happyDoAction 57# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TS _ 10) -> cont 10#;
	PT _ (TS _ 11) -> cont 11#;
	PT _ (TS _ 12) -> cont 12#;
	PT _ (TS _ 13) -> cont 13#;
	PT _ (TS _ 14) -> cont 14#;
	PT _ (TS _ 15) -> cont 15#;
	PT _ (TS _ 16) -> cont 16#;
	PT _ (TS _ 17) -> cont 17#;
	PT _ (TS _ 18) -> cont 18#;
	PT _ (TS _ 19) -> cont 19#;
	PT _ (TS _ 20) -> cont 20#;
	PT _ (TS _ 21) -> cont 21#;
	PT _ (TS _ 22) -> cont 22#;
	PT _ (TS _ 23) -> cont 23#;
	PT _ (TS _ 24) -> cont 24#;
	PT _ (TS _ 25) -> cont 25#;
	PT _ (TS _ 26) -> cont 26#;
	PT _ (TS _ 27) -> cont 27#;
	PT _ (TS _ 28) -> cont 28#;
	PT _ (TS _ 29) -> cont 29#;
	PT _ (TS _ 30) -> cont 30#;
	PT _ (TS _ 31) -> cont 31#;
	PT _ (TS _ 32) -> cont 32#;
	PT _ (TS _ 33) -> cont 33#;
	PT _ (TS _ 34) -> cont 34#;
	PT _ (TS _ 35) -> cont 35#;
	PT _ (TS _ 36) -> cont 36#;
	PT _ (TS _ 37) -> cont 37#;
	PT _ (TS _ 38) -> cont 38#;
	PT _ (TS _ 39) -> cont 39#;
	PT _ (TS _ 40) -> cont 40#;
	PT _ (TS _ 41) -> cont 41#;
	PT _ (TS _ 42) -> cont 42#;
	PT _ (TS _ 43) -> cont 43#;
	PT _ (TS _ 44) -> cont 44#;
	PT _ (TS _ 45) -> cont 45#;
	PT _ (TS _ 46) -> cont 46#;
	PT _ (TS _ 47) -> cont 47#;
	PT _ (TS _ 48) -> cont 48#;
	PT _ (TS _ 49) -> cont 49#;
	PT _ (TS _ 50) -> cont 50#;
	PT _ (TV happy_dollar_dollar) -> cont 51#;
	PT _ (TI happy_dollar_dollar) -> cont 52#;
	PT _ (TD happy_dollar_dollar) -> cont 53#;
	PT _ (TC happy_dollar_dollar) -> cont 54#;
	PT _ (TL happy_dollar_dollar) -> cont 55#;
	_ -> cont 56#;
	_ -> happyError' (tk:tks)
	}

happyError_ 57# tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

pProgram tks = happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut9 x))

happySeq = happyDontSeq


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4










































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}





-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif
{-# LINE 46 "templates/GenericTemplate.hs" #-}


data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList





{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}


          case action of
                0#           -> {- nothing -}
                                     happyFail i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}

                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}


                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = indexShortOffAddr happyActOffsets st
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else False
         action
          | check     = indexShortOffAddr happyTable off_i
          | otherwise = indexShortOffAddr happyDefActions st


indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#





data HappyAddr = HappyA# Happy_GHC_Exts.Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 170 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = indexShortOffAddr happyGotoOffsets st1
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i



          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = indexShortOffAddr happyGotoOffsets st
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ( (Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
