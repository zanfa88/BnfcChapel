{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module Parchapel where
import Abschapel
import Lexchapel
import ErrM
import Envchapel
import qualified Data.Array as Happy_Data_Array
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))

-- parser produced by Happy Version 1.19.4

newtype HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: t4 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t4
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: t5 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t5
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: t6 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t6
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: t7 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t7
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: t8 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t8
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: t9 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t9
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: t10 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t10
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: t11 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t11
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: t12 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t12
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: t13 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t13
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: t14 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: t15 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t15
happyOut15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: t16 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t16
happyOut16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: t17 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t17
happyOut17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: t18 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t18
happyOut18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: t19 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t19
happyOut19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: t20 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t20
happyOut20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: t21 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t21
happyOut21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: t22 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t22
happyOut22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: t23 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t23
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyInTok :: (Token) -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x77\x00\x5c\x00\x00\x00\x00\x00\x42\x00\x52\x00\x47\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x26\x00\x01\x00\x26\x00\x0c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x35\x00\x2f\x00\x00\x00\xfe\xff\x0c\x00\x13\x00\x0c\x00\x77\x00\x00\x00\xef\x00\x16\x00\xe6\x00\x0c\x00\x0c\x00\x0c\x00\x0c\x00\x77\x00\x07\x00\xda\x00\x77\x00\x77\x00\x0b\x00\x00\x00\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xef\x00\xef\x00\xef\x00\xef\x00\x0a\x00\x14\x00\x02\x00\x77\x00\xfb\xff\x77\x00\x0c\x00\x00\x00\xef\x00\xf4\xff\x00\x00\xf1\xff\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x8e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x09\x00\x7d\x00\xc3\x00\x73\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x69\x00\x00\x00\x5f\x00\xbe\x00\x00\x00\x00\x00\x06\x00\x00\x00\x55\x00\x4b\x00\x41\x00\x37\x00\xd7\x00\xff\xff\xf6\xff\xcc\x00\xb2\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa6\x00\x05\x00\x9a\x00\x2d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xd5\xff\x00\x00\xfe\xff\xee\xff\x00\x00\xd4\xff\x00\x00\xf7\xff\xf6\xff\xf5\xff\xf4\xff\xf9\xff\x00\x00\x00\x00\xd8\xff\x00\x00\xfa\xff\xf3\xff\xf2\xff\xf1\xff\xf0\xff\xe9\xff\xe8\xff\x00\x00\xef\xff\xde\xff\xdf\xff\xfd\xff\xfc\xff\xfb\xff\x00\x00\xd7\xff\xe7\xff\x00\x00\x00\x00\x00\x00\x00\x00\xd5\xff\xd3\xff\xf8\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd8\xff\x00\x00\x00\x00\xd5\xff\x00\x00\xe3\xff\x00\x00\xd9\xff\xdb\xff\xdd\xff\xdc\xff\xda\xff\xd6\xff\xe5\xff\xec\xff\xea\xff\xeb\xff\xed\xff\x00\x00\x00\x00\x00\x00\xd5\xff\x00\x00\xd5\xff\x00\x00\xe2\xff\xe6\xff\x00\x00\xe0\xff\x00\x00\xe1\xff\xe4\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x03\x00\x01\x00\x04\x00\x06\x00\x00\x00\x00\x00\x11\x00\x0a\x00\x0b\x00\x0b\x00\x03\x00\x1b\x00\x04\x00\x06\x00\x1b\x00\x0f\x00\x12\x00\x0a\x00\x0b\x00\x16\x00\x0f\x00\x0e\x00\x1c\x00\x17\x00\x05\x00\x09\x00\x0f\x00\x1a\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x1a\x00\x17\x00\x1a\x00\x12\x00\x1b\x00\x20\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1c\x00\x04\x00\x07\x00\x08\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x07\x00\x10\x00\x07\x00\x08\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x20\x00\x10\x00\x07\x00\x08\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x09\x00\x10\x00\x07\x00\x08\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x08\x00\x10\x00\x07\x00\x08\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x22\x00\x10\x00\x07\x00\x08\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x10\x00\x07\x00\x08\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1c\x00\x10\x00\x07\x00\x08\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x10\x00\x07\x00\x08\x00\x09\x00\x10\x00\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\x10\x00\xff\xff\x18\x00\x19\x00\xff\xff\x04\x00\x05\x00\x06\x00\xff\xff\x08\x00\x20\x00\x0a\x00\xff\xff\x0c\x00\x0d\x00\x0e\x00\xff\xff\x04\x00\xff\xff\x06\x00\x13\x00\x08\x00\xff\xff\x0a\x00\xff\xff\x0c\x00\x0d\x00\x0e\x00\xff\xff\x04\x00\xff\xff\x06\x00\x13\x00\x08\x00\xff\xff\x0a\x00\xff\xff\x0c\x00\x0d\x00\x0e\x00\xff\xff\x04\x00\xff\xff\x06\x00\x13\x00\x08\x00\xff\xff\x0a\x00\xff\xff\x0c\x00\x0d\x00\x0e\x00\xff\xff\x04\x00\xff\xff\x06\x00\x13\x00\x08\x00\x04\x00\x0a\x00\xff\xff\x0c\x00\x0d\x00\x0e\x00\xff\xff\x0b\x00\xff\xff\x04\x00\x13\x00\x06\x00\xff\xff\x08\x00\x12\x00\x0a\x00\xff\xff\x0c\x00\x0d\x00\x0e\x00\x04\x00\xff\xff\x06\x00\xff\xff\x08\x00\xff\xff\x0a\x00\xff\xff\x0c\x00\x0d\x00\x0e\x00\x0c\x00\x0d\x00\x02\x00\x03\x00\xff\xff\xff\xff\x06\x00\x13\x00\x14\x00\x15\x00\x0a\x00\x0b\x00\x03\x00\xff\xff\xff\xff\x06\x00\xff\xff\xff\xff\xff\xff\x0a\x00\x0b\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x2b\x00\x23\x00\x1e\x00\x2c\x00\x4b\x00\x42\x00\x35\x00\x2d\x00\x2e\x00\x1f\x00\x2b\x00\x4e\x00\x23\x00\x2c\x00\x4f\x00\x1a\x00\x3b\x00\x2d\x00\x2e\x00\x2f\x00\x43\x00\x32\x00\x03\x00\x1b\x00\x46\x00\x48\x00\x1a\x00\x45\x00\x03\x00\x1c\x00\x1d\x00\x1e\x00\x11\x00\x33\x00\x1b\x00\x47\x00\x29\x00\x49\x00\x11\x00\x03\x00\x1c\x00\x1d\x00\x1e\x00\x11\x00\x11\x00\x12\x00\x13\x00\x14\x00\x03\x00\x03\x00\x30\x00\x15\x00\x16\x00\x49\x00\x11\x00\x12\x00\x13\x00\x14\x00\x03\x00\x31\x00\x18\x00\x15\x00\x16\x00\x3d\x00\x11\x00\x12\x00\x13\x00\x14\x00\x03\x00\x11\x00\x18\x00\x15\x00\x16\x00\x3e\x00\x11\x00\x12\x00\x13\x00\x14\x00\x03\x00\x25\x00\x18\x00\x15\x00\x16\x00\x3f\x00\x11\x00\x12\x00\x13\x00\x14\x00\x03\x00\x26\x00\x18\x00\x15\x00\x16\x00\x40\x00\x11\x00\x12\x00\x13\x00\x14\x00\x03\x00\xff\xff\x18\x00\x15\x00\x16\x00\x27\x00\x11\x00\x12\x00\x13\x00\x14\x00\x03\x00\x00\x00\x18\x00\x15\x00\x16\x00\x29\x00\x11\x00\x12\x00\x13\x00\x14\x00\x03\x00\x03\x00\x18\x00\x15\x00\x16\x00\x17\x00\x11\x00\x12\x00\x13\x00\x14\x00\x03\x00\x00\x00\x18\x00\x15\x00\x16\x00\x21\x00\x0d\x00\x0e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x18\x00\x00\x00\x0f\x00\x10\x00\x00\x00\x03\x00\x04\x00\x05\x00\x00\x00\x06\x00\x11\x00\x07\x00\x00\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x03\x00\x00\x00\x05\x00\x0b\x00\x06\x00\x00\x00\x07\x00\x00\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x03\x00\x00\x00\x05\x00\x4a\x00\x06\x00\x00\x00\x07\x00\x00\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x03\x00\x00\x00\x05\x00\x4c\x00\x06\x00\x00\x00\x07\x00\x00\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x03\x00\x00\x00\x05\x00\x33\x00\x06\x00\x1e\x00\x07\x00\x00\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x1f\x00\x00\x00\x03\x00\x26\x00\x34\x00\x00\x00\x06\x00\x20\x00\x07\x00\x00\x00\x08\x00\x09\x00\x0a\x00\x03\x00\x00\x00\x3c\x00\x00\x00\x06\x00\x00\x00\x07\x00\x00\x00\x08\x00\x09\x00\x0a\x00\x37\x00\x38\x00\x42\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x39\x00\x3a\x00\x3b\x00\x2d\x00\x2e\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x00\x00\x00\x00\x00\x00\x2d\x00\x2e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (1, 44) [
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
	(44 , happyReduce_44)
	]

happy_n_terms = 35 :: Int
happy_n_nonterms = 20 :: Int

happyReduce_1 = happySpecReduce_1  0# happyReduction_1
happyReduction_1 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn4
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = ((read ( happy_var_1 )) :: Integer)  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_2 = happySpecReduce_1  1# happyReduction_2
happyReduction_2 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn5
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = ((read ( happy_var_1 )) :: Double)  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_3 = happySpecReduce_1  2# happyReduction_3
happyReduction_3 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn6
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = ((read ( happy_var_1 )) :: Char)  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_4 = happySpecReduce_1  3# happyReduction_4
happyReduction_4 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn7
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = ( happy_var_1 )  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_5 = happySpecReduce_1  4# happyReduction_5
happyReduction_5 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Iden happy_var_1)) -> 
	happyIn8
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (Iden ( happy_var_1 ))  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_6 = happySpecReduce_1  5# happyReduction_6
happyReduction_6 happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn9
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_1) , envIn = [] , tip = TypeVoid , parsetree = RProg (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_7 = happySpecReduce_3  6# happyReduction_7
happyReduction_7 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut13 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkDefVar (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envOut = (envIn happySelfAttrs) , tip = TypeVoid , parsetree = RAssign (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = [( if ( (tip happySubAttrs_1) ==VarNotDec) then (Bad $ (prntErrNotDec (parsetree happySubAttrs_1) )) else ( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrAss happy_var_2 (tip happySubAttrs_1) (tip happySubAttrs_3) )) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_8 = happySpecReduce_1  6# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_1) , parsetree = RDecVar (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_9 = happySpecReduce_1  6# happyReduction_9
happyReduction_9 happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_1) , parsetree = Cond (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_10 = happySpecReduce_1  6# happyReduction_10
happyReduction_10 happy_x_1
	 =  case happyOut17 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_1) , parsetree = While (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_11 = happySpecReduce_1  6# happyReduction_11
happyReduction_11 happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_1) , parsetree = For (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_12 = happySpecReduce_1  7# happyReduction_12
happyReduction_12 happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ addr = show (parsetree happySubAttrs_1) , err = "" , tip = RTypeInt , parsetree = RInt (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_13 = happySpecReduce_1  7# happyReduction_13
happyReduction_13 happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ addr = show (parsetree happySubAttrs_1) , err = "" , tip = RTypeFloat , parsetree = RFloat (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_14 = happySpecReduce_1  7# happyReduction_14
happyReduction_14 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = RTypeChar , parsetree = RChar (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_15 = happySpecReduce_1  7# happyReduction_15
happyReduction_15 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = RTypeString , parsetree = RString (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_16 = happySpecReduce_1  7# happyReduction_16
happyReduction_16 happy_x_1
	 =  case happyOut20 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = RTypeBool , parsetree = RBoolean (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_17 = happySpecReduce_1  8# happyReduction_17
happyReduction_17 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (getVarTip (envIn happySelfAttrs) (parsetree happySubAttrs_1) ) , envOut = (envIn happySelfAttrs) , parsetree = RLExpr (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [( if ( (tip happySelfAttrs) ==VarNotDec) then (Bad $ (prntErrNotDec (parsetree happySubAttrs_1) )) else (Ok()) ) ]++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_18 = happySpecReduce_3  9# happyReduction_18
happyReduction_18 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut13 happy_x_3 of { happy_var_3 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , tip = (tip happySubAttrs_1) , parsetree = RAdd (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrAdd happy_var_2 )) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_19 = happySpecReduce_3  9# happyReduction_19
happyReduction_19 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut13 happy_x_3 of { happy_var_3 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envOut = (envIn happySelfAttrs) , tip = RTypeBool , parsetree = RGre (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else ( if ( (tip happySubAttrs_1) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_1) ) else ( if ( (tip happySubAttrs_3) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_3) ) else Bad $ (prntErrComp happy_var_2 ) ) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_20 = happySpecReduce_3  9# happyReduction_20
happyReduction_20 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOut13 happy_x_3 of { happy_var_3 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = RDiv (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_21 = happySpecReduce_3  9# happyReduction_21
happyReduction_21 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut13 happy_x_3 of { happy_var_3 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envOut = (envIn happySelfAttrs) , tip = RTypeBool , parsetree = RComp (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else ( if ( (tip happySubAttrs_1) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_1) ) else ( if ( (tip happySubAttrs_3) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_3) ) else Bad $ (prntErrComp happy_var_2 ) ) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_22 = happySpecReduce_1  9# happyReduction_22
happyReduction_22 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (tip happySubAttrs_1) , parsetree = RElem (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_23 = happySpecReduce_1  9# happyReduction_23
happyReduction_23 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_1) , tip = (tip happySubAttrs_1) , parsetree = LExprR (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_24 = happySpecReduce_2  10# happyReduction_24
happyReduction_24 happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_2 of { happy_var_2 -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_2) , parsetree = RVarBlock (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_25 = happyReduce 5# 11# happyReduction_25
happyReduction_25 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut21 happy_x_3 of { happy_var_3 -> 
	case happyOut13 happy_x_5 of { happy_var_5 -> 
	happyIn15
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkDefVar (parsetree happySubAttrs_3) (tip happySubAttrs_5) ) , envOut = (insVarEnv (Var (parsetree happySubAttrs_1) (tip happySubAttrs_3) ) (envIn happySelfAttrs) ) , parsetree = RBlockVar (parsetree happySubAttrs_1) (parsetree happySubAttrs_3) (parsetree happySubAttrs_5)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrDiffType happy_var_2 )) ) ]++happyConditions_1++happyConditions_3++happyConditions_5 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}

happyReduce_26 = happyReduce 4# 12# happyReduction_26
happyReduction_26 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut13 happy_x_2 of { happy_var_2 -> 
	case happyOut10 happy_x_4 of { happy_var_4 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_2) RTypeBool) , envOut = (envOut happySubAttrs_4) , parsetree = If1 (parsetree happySubAttrs_2) (parsetree happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrCondNotBool happy_var_1 )) ) ]++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_27 = happyReduce 7# 12# happyReduction_27
happyReduction_27 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut13 happy_x_3 of { happy_var_3 -> 
	case happyOut23 happy_x_6 of { happy_var_6 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_3) RTypeBool) , envOut = (envOut happySubAttrs_6) , parsetree = If2 (parsetree happySubAttrs_3) (parsetree happySubAttrs_6)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrCondNotBool happy_var_1 )) ) ]++happyConditions_3++happyConditions_6 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_28 = happyReduce 4# 13# happyReduction_28
happyReduction_28 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut13 happy_x_2 of { happy_var_2 -> 
	case happyOut10 happy_x_4 of { happy_var_4 -> 
	happyIn17
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_2) RTypeBool) , envOut = (envOut happySubAttrs_4) , parsetree = WhileDo (parsetree happySubAttrs_2) (parsetree happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrCondNotBool happy_var_1 )) ) ]++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_29 = happyReduce 5# 13# happyReduction_29
happyReduction_29 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut13 happy_x_2 of { happy_var_2 -> 
	case happyOut23 happy_x_4 of { happy_var_4 -> 
	happyIn17
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_2) RTypeBool) , envOut = (envOut happySubAttrs_4) , parsetree = WhileDoS (parsetree happySubAttrs_2) (parsetree happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrCondNotBool happy_var_1 )) ) ]++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_30 = happyReduce 7# 14# happyReduction_30
happyReduction_30 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_4 of { happy_var_4 -> 
	case happyOut23 happy_x_6 of { happy_var_6 -> 
	happyIn18
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envIn happySelfAttrs) , parsetree = SForDoBloc (parsetree happySubAttrs_2) (parsetree happySubAttrs_4) (parsetree happySubAttrs_6)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs{ envIn = (insVarEnv (Var (parsetree happySubAttrs_2) RTypeInt) (envIn happySelfAttrs) )  }; happyConditions = []++happyConditions_2++happyConditions_4++happyConditions_6 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_31 = happySpecReduce_3  15# happyReduction_31
happyReduction_31 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOut4 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = ForAggr (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_32 = happySpecReduce_1  16# happyReduction_32
happyReduction_32 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = RTrue  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_33 = happySpecReduce_1  16# happyReduction_33
happyReduction_33 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = RFalse  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_34 = happySpecReduce_1  17# happyReduction_34
happyReduction_34 happy_x_1
	 =  happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (parsetree happySelfAttrs) , parsetree = RTypeInt  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_35 = happySpecReduce_1  17# happyReduction_35
happyReduction_35 happy_x_1
	 =  happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (parsetree happySelfAttrs) , parsetree = RTypeFloat  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_36 = happySpecReduce_1  17# happyReduction_36
happyReduction_36 happy_x_1
	 =  happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (parsetree happySelfAttrs) , parsetree = RTypeChar  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_37 = happySpecReduce_1  17# happyReduction_37
happyReduction_37 happy_x_1
	 =  happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (parsetree happySelfAttrs) , parsetree = RTypeString  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_38 = happySpecReduce_1  17# happyReduction_38
happyReduction_38 happy_x_1
	 =  happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (parsetree happySelfAttrs) , parsetree = RTypeBool  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_39 = happySpecReduce_0  18# happyReduction_39
happyReduction_39  =  happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envIn happySelfAttrs) , parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_40 = happySpecReduce_1  18# happyReduction_40
happyReduction_40 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_41 = happySpecReduce_3  18# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_3 of { happy_var_3 -> 
	happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_3) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envOut happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_42 = happySpecReduce_0  19# happyReduction_42
happyReduction_42  =  happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envIn happySelfAttrs) , parsetree = ([])  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_43 = happySpecReduce_1  19# happyReduction_43
happyReduction_43 happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_1) , parsetree = ((:[]) (parsetree happySubAttrs_1) )  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_44 = happySpecReduce_3  19# happyReduction_44
happyReduction_44 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	case happyOut23 happy_x_3 of { happy_var_3 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_3) , parsetree = ((:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3) )  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envOut happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyNewToken action sts stk [] =
	happyDoAction 34# notHappyAtAll action sts stk []

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
	PT _ (TI happy_dollar_dollar) -> cont 28#;
	PT _ (TD happy_dollar_dollar) -> cont 29#;
	PT _ (TC happy_dollar_dollar) -> cont 30#;
	PT _ (TL happy_dollar_dollar) -> cont 31#;
	PT _ (T_Iden happy_dollar_dollar) -> cont 32#;
	_ -> cont 33#;
	_ -> happyError' (tk:tks)
	}

happyError_ 34# tk tks = happyError' tks
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

do_pProgram tks = happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut9 x))

pProgram toks = do { f <- do_pProgram toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (parsetree attrs) }}

happySeq = happyDontSeq

data MyAttribute a = HappyAttributes {parsetree :: a, tip :: Type, err :: String, addr :: String, envIn :: [Env], envOut :: [Env]}
happyEmptyAttrs = HappyAttributes {parsetree = error "invalid reference to attribute 'parsetree'", tip = error "invalid reference to attribute 'tip'", err = error "invalid reference to attribute 'err'", addr = error "invalid reference to attribute 'addr'", envIn = error "invalid reference to attribute 'envIn'", envOut = error "invalid reference to attribute 'envOut'"}

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
