{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module Parchapel where
import Abschapel
import Lexchapel
import ErrM
import Envchapel
import Tac
import qualified Data.Array as Happy_Data_Array
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))

-- parser produced by Happy Version 1.19.4

newtype HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: t4 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t4
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: t5 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t5
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: t6 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t6
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: t7 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t7
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: t8 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t8
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: t9 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t9
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: t10 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t10
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: t11 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t11
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: t12 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t12
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: t13 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t13
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: t14 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: t15 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t15
happyOut15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: t16 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t16
happyOut16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: t17 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t17
happyOut17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: t18 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t18
happyOut18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: t19 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t19
happyOut19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: t20 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t20
happyOut20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: t21 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t21
happyOut21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: t22 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t22
happyOut22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: t23 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t23
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: t24 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t24
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: t25 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t25
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: t26 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t26
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: t27 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t27
happyOut27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: t28 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t28
happyOut28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: t29 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t29
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: t30 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t30
happyOut30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: t31 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t31
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: t32 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyIn32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> t32
happyOut32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyInTok :: (Token) -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x81\x01\xdf\x00\x00\x00\x0f\x01\xd1\x00\xfe\x00\x16\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd2\x00\x00\x00\xd3\x00\xce\x00\xce\x00\x01\x00\xf9\x00\xf2\x00\xef\x00\xee\x00\xb5\x00\xfb\xff\xea\x00\xe7\x00\xdb\x00\xd9\x00\xab\x00\xaa\x00\xa6\x00\xa8\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc4\x00\x3c\x00\x00\x00\x00\x00\xfb\xff\xfb\xff\xfb\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc9\x00\xcc\x00\x00\x00\x93\x00\x96\x00\x8e\x00\x88\x00\xe6\x00\xfb\xff\xb4\x00\x94\x00\x81\x01\x00\x00\xfb\xff\xfb\xff\x81\x01\xfb\xff\xc8\x00\xaf\x00\x00\x00\xb0\x00\xff\x00\x7a\x00\x77\x00\xfa\xff\x8a\x00\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\xfb\xff\x81\x01\xfb\xff\xfb\xff\xa7\x00\xa5\x00\xa4\x00\xa2\x00\x6d\x00\x00\x04\x00\x00\x8c\x01\x72\x00\x81\x01\x81\x01\x95\x00\x92\x00\x91\x00\x8d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5a\x00\x00\x00\x00\x00\x6f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x79\x01\xcb\x01\x00\x00\x9d\x00\x63\x01\x63\x01\x63\x01\x63\x01\x63\x01\x00\x00\x0e\x00\x8c\x01\x8c\x01\x00\x00\x4b\x01\xa0\x00\x00\x00\x1d\x01\x35\x01\x51\x00\x6e\x00\x76\x00\x71\x00\x3b\x00\x62\x00\xeb\xff\x3f\x00\x00\x00\x00\x00\xfb\xff\x00\x00\xfb\xff\x38\x00\x81\x01\x2a\x00\x5c\x00\x2b\x00\xfa\xff\x00\x04\x81\x01\xfb\xff\x00\x00\xff\x00\x30\x00\x00\x00\x00\x00\x81\x01\x00\x04\x00\x00\x25\x00\x81\x01\x54\x00\x00\x00\x1d\x00\x00\x00\x00\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\xdb\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x00\x00\x00\x00\x4e\x00\x4b\x00\xe3\x03\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\xda\x03\x00\x00\x00\x00\x00\x00\x00\x00\x46\x00\x44\x00\x42\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc9\x03\xc0\x03\xaf\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2c\x00\x2d\x00\x28\x00\x20\x00\x00\x00\xa6\x03\x00\x00\x00\x00\x6e\x02\x00\x00\x95\x03\x8c\x03\x59\x02\xc3\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0d\x00\x08\x00\x00\x00\x7b\x03\x72\x03\x61\x03\x58\x03\x47\x03\x3e\x03\x2d\x03\x24\x03\x13\x03\x0a\x03\xf9\x02\xf0\x02\xdf\x02\xd6\x02\xc5\x02\xbc\x02\x04\x04\xab\x02\xa2\x02\x00\x00\x00\x00\x00\x00\x00\x00\x0f\x00\xfd\xff\x00\x00\x00\x00\x00\x00\xf5\x03\x44\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x14\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xba\x01\x00\x00\x91\x02\x00\x00\x2f\x02\x0c\x00\x00\x00\x00\x00\x03\x00\xf3\xff\x1a\x02\x88\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x02\xed\xff\x00\x00\x00\x00\xf0\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xaf\xff\x00\x00\xfe\xff\xed\xff\x00\x00\xae\xff\x00\x00\xf2\xff\xf1\xff\xf7\xff\xf6\xff\xf5\xff\xf4\xff\xf3\xff\xf0\xff\xef\xff\xee\xff\xf9\xff\xc4\xff\xa9\xff\xc3\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa9\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xed\xff\xbb\xff\xba\xff\xb9\xff\xb8\xff\xd6\xff\x00\x00\xd7\xff\xb7\xff\x00\x00\x00\x00\x00\x00\xb5\xff\xb6\xff\xfd\xff\xfc\xff\xfb\xff\xfa\xff\x00\x00\xa8\xff\xc2\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaf\xff\xc1\xff\x00\x00\x00\x00\xaf\xff\xac\xff\xab\xff\x00\x00\xad\xff\x00\x00\xf8\xff\x00\x00\x00\x00\xa6\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa9\xff\x00\x00\xdb\xff\xdc\xff\x00\x00\x00\x00\xaf\xff\x00\x00\x00\x00\x00\x00\x00\x00\xd1\xff\xd3\xff\xd4\xff\xd2\xff\x00\x00\xca\xff\xd5\xff\x00\x00\xb0\xff\xb2\xff\xb4\xff\xb3\xff\xb1\xff\xa7\xff\xcd\xff\xcf\xff\xd0\xff\xce\xff\xea\xff\xdf\xff\xcc\xff\xde\xff\xe5\xff\xe3\xff\xe8\xff\xe6\xff\xe4\xff\xd9\xff\xe2\xff\xe0\xff\xe1\xff\xda\xff\xe9\xff\xdd\xff\xd8\xff\xeb\xff\xe7\xff\xd5\xff\x00\x00\xa5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xec\xff\xbe\xff\xac\xff\xaa\xff\x00\x00\x00\x00\xaf\xff\x00\x00\x00\x00\x00\x00\xa6\xff\x00\x00\xaf\xff\x00\x00\xc9\xff\xc0\xff\x00\x00\xbd\xff\xa4\xff\xaf\xff\x00\x00\xc5\xff\x00\x00\xaf\xff\x00\x00\xc8\xff\x00\x00\xc6\xff\xbc\xff\x00\x00\xcb\xff\xbf\xff\xc7\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x06\x00\x08\x00\x00\x00\x09\x00\x18\x00\x0b\x00\x06\x00\x00\x00\x1e\x00\x09\x00\x18\x00\x0b\x00\x01\x00\x01\x00\x00\x00\x00\x00\x03\x00\x04\x00\x00\x00\x00\x00\x18\x00\x08\x00\x09\x00\x15\x00\x0b\x00\x1f\x00\x0d\x00\x0f\x00\x15\x00\x33\x00\x1c\x00\x1f\x00\x12\x00\x12\x00\x03\x00\x1c\x00\x12\x00\x18\x00\x2c\x00\x12\x00\x01\x00\x1b\x00\x1b\x00\x16\x00\x2c\x00\x1b\x00\x02\x00\x04\x00\x37\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x03\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x34\x00\x01\x00\x08\x00\x09\x00\x02\x00\x0b\x00\x0c\x00\x0d\x00\x04\x00\x00\x00\x10\x00\x11\x00\x00\x00\x13\x00\x14\x00\x15\x00\x36\x00\x36\x00\x18\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x1e\x00\x36\x00\x08\x00\x09\x00\x33\x00\x0b\x00\x0c\x00\x0d\x00\x38\x00\x0f\x00\x10\x00\x11\x00\x36\x00\x13\x00\x14\x00\x15\x00\x0e\x00\x33\x00\x18\x00\x2e\x00\x0c\x00\x33\x00\x34\x00\x35\x00\x37\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x07\x00\x07\x00\x08\x00\x09\x00\x0e\x00\x0b\x00\x0c\x00\x0d\x00\x0a\x00\x12\x00\x10\x00\x11\x00\x33\x00\x13\x00\x14\x00\x15\x00\x34\x00\x35\x00\x18\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x36\x00\x07\x00\x08\x00\x09\x00\x07\x00\x0b\x00\x0c\x00\x0d\x00\x07\x00\x07\x00\x10\x00\x11\x00\x07\x00\x13\x00\x14\x00\x15\x00\x03\x00\x04\x00\x18\x00\x03\x00\x37\x00\x08\x00\x34\x00\x35\x00\x08\x00\x07\x00\x0d\x00\x07\x00\x07\x00\x0d\x00\x07\x00\x38\x00\x36\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x07\x00\x23\x00\x08\x00\x09\x00\x06\x00\x0b\x00\x0c\x00\x0d\x00\x34\x00\x35\x00\x10\x00\x11\x00\x3a\x00\x13\x00\x14\x00\x15\x00\x38\x00\x17\x00\x18\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x3b\x00\x39\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0a\x00\x0e\x00\x10\x00\x11\x00\x16\x00\x13\x00\x14\x00\x15\x00\x38\x00\x06\x00\x18\x00\x06\x00\x3a\x00\x39\x00\x34\x00\x35\x00\x3b\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x37\x00\x06\x00\x08\x00\x09\x00\x06\x00\x0b\x00\x0c\x00\x0d\x00\x06\x00\x06\x00\x10\x00\x11\x00\x06\x00\x13\x00\x14\x00\x15\x00\x34\x00\x35\x00\x18\x00\x06\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x37\x00\x33\x00\x08\x00\x09\x00\x37\x00\x0b\x00\x0c\x00\x0d\x00\x0f\x00\x3d\x00\x10\x00\x11\x00\x2b\x00\x13\x00\x14\x00\x15\x00\x06\x00\x37\x00\x18\x00\xff\xff\xff\xff\x34\x00\x35\x00\xff\xff\xff\xff\x01\x00\xff\xff\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\x0d\x00\xff\xff\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x15\x00\x34\x00\x35\x00\x18\x00\x01\x00\xff\xff\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\x0d\x00\xff\xff\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x15\x00\xff\xff\x01\x00\x18\x00\x03\x00\x04\x00\xff\xff\x34\x00\x35\x00\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\x0d\x00\xff\xff\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x18\x00\x01\x00\xff\xff\x03\x00\x04\x00\xff\xff\x34\x00\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\x0d\x00\xff\xff\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x15\x00\xff\xff\x01\x00\x18\x00\x03\x00\x04\x00\xff\xff\x34\x00\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\x0d\x00\xff\xff\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x15\x00\x03\x00\x04\x00\x18\x00\xff\xff\xff\xff\x08\x00\xff\xff\xff\xff\x34\x00\xff\xff\x0d\x00\xff\xff\x1a\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\xff\xff\x20\x00\x21\x00\x22\x00\x18\x00\xff\xff\x25\x00\x26\x00\x27\x00\x28\x00\xff\xff\xff\xff\xff\xff\x34\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\xff\xff\xff\xff\xff\xff\xff\xff\x37\x00\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x34\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\x03\x00\x04\x00\x16\x00\x17\x00\xff\xff\x08\x00\x1a\x00\xff\xff\xff\xff\xff\xff\x0d\x00\x16\x00\x17\x00\x00\x00\xff\xff\x1a\x00\xff\xff\xff\xff\x05\x00\x06\x00\x07\x00\x18\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x00\x00\xff\xff\xff\xff\xff\xff\x19\x00\xff\xff\x06\x00\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x00\x00\xff\xff\xff\xff\xff\xff\x19\x00\xff\xff\x06\x00\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x00\x00\xff\xff\xff\xff\xff\xff\x19\x00\xff\xff\x06\x00\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x00\x00\xff\xff\xff\xff\xff\xff\x19\x00\xff\xff\x06\x00\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x00\x00\xff\xff\xff\xff\xff\xff\x19\x00\xff\xff\x06\x00\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x00\x00\xff\xff\xff\xff\xff\xff\x19\x00\xff\xff\x06\x00\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x00\x00\xff\xff\xff\xff\xff\xff\x19\x00\xff\xff\x06\x00\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\xff\xff\xff\xff\xff\xff\xff\xff\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x17\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\xff\xff\xff\xff\xff\xff\x00\x00\xff\xff\xff\xff\xff\xff\x16\x00\x17\x00\x06\x00\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x06\x00\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\xff\xff\x13\x00\x14\x00\x19\x00\xff\xff\x1b\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x24\x00\xff\xff\xff\xff\xff\xff\xff\xff\x29\x00\x2a\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x31\x00\x9f\x00\x9b\x00\x32\x00\xbe\x00\x33\x00\x42\x00\x9b\x00\xa8\x00\x32\x00\xb3\x00\x33\x00\xb7\x00\x9f\x00\x39\x00\x39\x00\x56\x00\x57\x00\x39\x00\xaa\x00\x7c\x00\x59\x00\x5a\x00\x9c\x00\x5b\x00\x34\x00\x5d\x00\xa0\x00\x9c\x00\xa9\x00\xb4\x00\x34\x00\x3a\x00\x3a\x00\x66\x00\x9d\x00\x3a\x00\x63\x00\x35\x00\x47\x00\x67\x00\x82\x00\x3b\x00\x48\x00\x35\x00\x45\x00\x68\x00\x69\x00\x03\x00\x03\x00\x36\x00\x37\x00\x38\x00\x39\x00\x71\x00\x03\x00\x36\x00\x37\x00\x38\x00\x39\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x65\x00\x72\x00\x59\x00\x5a\x00\x73\x00\x5b\x00\x5c\x00\x5d\x00\x74\x00\x42\x00\x5e\x00\x5f\x00\x43\x00\x60\x00\x61\x00\x62\x00\xc2\x00\xc3\x00\x63\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x70\x00\xbe\x00\x59\x00\x5a\x00\xb6\x00\x5b\x00\x5c\x00\x5d\x00\x36\x00\xbc\x00\x5e\x00\x5f\x00\xc1\x00\x60\x00\x61\x00\x62\x00\xb7\x00\xba\x00\x63\x00\xa7\x00\xaa\x00\x71\x00\x65\x00\x66\x00\x03\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\xac\x00\x7c\x00\x59\x00\x5a\x00\xae\x00\x5b\x00\x5c\x00\x5d\x00\xad\x00\xb0\x00\x5e\x00\x5f\x00\xaf\x00\x60\x00\x61\x00\x62\x00\x65\x00\x66\x00\x63\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\xb1\x00\x9b\x00\x59\x00\x5a\x00\x76\x00\x5b\x00\x5c\x00\x5d\x00\x77\x00\x78\x00\x5e\x00\x5f\x00\x79\x00\x60\x00\x61\x00\x62\x00\x56\x00\x57\x00\x63\x00\x56\x00\x03\x00\x59\x00\x65\x00\x66\x00\x59\x00\x84\x00\x5d\x00\x85\x00\x86\x00\x5d\x00\x87\x00\x36\x00\xa2\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\xa4\x00\x51\x00\x59\x00\x5a\x00\x52\x00\x5b\x00\x5c\x00\x5d\x00\x65\x00\x66\x00\x5e\x00\x5f\x00\x38\x00\x60\x00\x61\x00\x62\x00\x36\x00\xa3\x00\x63\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x39\x00\x37\x00\x59\x00\x5a\x00\xa5\x00\x5b\x00\x5c\x00\x5d\x00\x6b\x00\x6c\x00\x5e\x00\x5f\x00\x48\x00\x60\x00\x61\x00\x62\x00\x36\x00\x24\x00\x63\x00\x25\x00\x38\x00\x37\x00\x65\x00\x66\x00\x39\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x03\x00\x26\x00\x59\x00\x5a\x00\x27\x00\x5b\x00\x5c\x00\x5d\x00\x3d\x00\x3e\x00\x5e\x00\x5f\x00\x3f\x00\x60\x00\x61\x00\x62\x00\x65\x00\x66\x00\x63\x00\x40\x00\x54\x00\x55\x00\x56\x00\x57\x00\x58\x00\x03\x00\x45\x00\x59\x00\x5a\x00\x03\x00\x5b\x00\x5c\x00\x5d\x00\x49\x00\xff\xff\x5e\x00\x5f\x00\x64\x00\x60\x00\x61\x00\x62\x00\x4a\x00\x03\x00\x63\x00\x00\x00\x00\x00\x65\x00\x66\x00\x00\x00\x00\x00\x54\x00\x00\x00\x56\x00\x57\x00\x58\x00\x00\x00\x00\x00\x59\x00\x5a\x00\x00\x00\x5b\x00\x5c\x00\x5d\x00\x00\x00\x00\x00\x5e\x00\x5f\x00\x00\x00\x60\x00\x61\x00\x62\x00\x65\x00\x66\x00\x63\x00\x00\x00\x00\x00\x56\x00\x57\x00\x00\x00\x00\x00\x00\x00\x59\x00\x5a\x00\x00\x00\x5b\x00\x5c\x00\x5d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x54\x00\x63\x00\x56\x00\x57\x00\x00\x00\x65\x00\x66\x00\x59\x00\x5a\x00\x00\x00\x5b\x00\x5c\x00\x5d\x00\x00\x00\x00\x00\x5e\x00\x5f\x00\x00\x00\x60\x00\x61\x00\x62\x00\x00\x00\x00\x00\x63\x00\x00\x00\x00\x00\x56\x00\x57\x00\x00\x00\x65\x00\x00\x00\x59\x00\x5a\x00\x00\x00\x5b\x00\x5c\x00\x5d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x54\x00\x63\x00\x56\x00\x57\x00\x00\x00\x65\x00\x00\x00\x59\x00\x5a\x00\x00\x00\x5b\x00\x5c\x00\x5d\x00\x00\x00\x00\x00\x5e\x00\x5f\x00\x00\x00\x60\x00\x61\x00\x62\x00\x56\x00\x57\x00\x63\x00\x00\x00\x00\x00\x59\x00\x00\x00\x00\x00\x65\x00\x00\x00\x5d\x00\x00\x00\x13\x00\x00\x00\x14\x00\x15\x00\x16\x00\x00\x00\x17\x00\x18\x00\x19\x00\x63\x00\x00\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x00\x00\x00\x00\x00\x00\x65\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x00\x00\x00\x00\x00\x00\x00\x00\x03\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x65\x00\x2c\x00\x4a\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x4a\x00\x00\x00\x00\x00\x56\x00\x57\x00\x2e\x00\x2f\x00\x00\x00\x59\x00\xa5\x00\x00\x00\x00\x00\x00\x00\x5d\x00\x2e\x00\x2f\x00\x03\x00\x00\x00\x4b\x00\x00\x00\x00\x00\x04\x00\x05\x00\x06\x00\x63\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x03\x00\x00\x00\x00\x00\x00\x00\x11\x00\x00\x00\x05\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x03\x00\x00\x00\x00\x00\x00\x00\xbc\x00\x00\x00\x05\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x03\x00\x00\x00\x00\x00\x00\x00\xbf\x00\x00\x00\x05\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x03\x00\x00\x00\x00\x00\x00\x00\xb2\x00\x00\x00\x05\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x03\x00\x00\x00\x00\x00\x00\x00\xb8\x00\x00\x00\x05\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x03\x00\x00\x00\x00\x00\x00\x00\x79\x00\x00\x00\x05\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x03\x00\x00\x00\x00\x00\x00\x00\x4c\x00\x00\x00\x05\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4f\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\xb1\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\xba\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x87\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x88\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x8a\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x8b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x8c\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x8d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x8e\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x8f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x90\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x91\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x92\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x93\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x94\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x95\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x96\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x97\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x98\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x99\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x4d\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x4e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x52\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x6c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x6d\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x6e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2e\x00\x2f\x00\x2c\x00\x2d\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x00\x00\x00\x00\x2c\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x00\x00\x00\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x2f\x00\x7a\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x03\x00\x0d\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x89\x00\x06\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x0d\x00\x0e\x00\x00\x00\x0f\x00\x10\x00\x7e\x00\x00\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x81\x00\x82\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (1, 91) [
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
	(91 , happyReduce_91)
	]

happy_n_terms = 62 :: Int
happy_n_nonterms = 29 :: Int

happyReduce_1 = happySpecReduce_1  0# happyReduction_1
happyReduction_1 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TV happy_var_1)) -> 
	happyIn4
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = Ident happy_var_1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_2 = happySpecReduce_1  1# happyReduction_2
happyReduction_2 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn5
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (read ( happy_var_1 )) :: Integer  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_3 = happySpecReduce_1  2# happyReduction_3
happyReduction_3 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn6
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (read ( happy_var_1 )) :: Double  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_4 = happySpecReduce_1  3# happyReduction_4
happyReduction_4 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn7
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (read ( happy_var_1 )) :: Char  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_5 = happySpecReduce_1  4# happyReduction_5
happyReduction_5 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn8
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = happy_var_1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_6 = happySpecReduce_1  5# happyReduction_6
happyReduction_6 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn9
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ labelOut = (labelOut happySubAttrs_1) , labelIn = 0 , countOut = (countOut happySubAttrs_1) , countIn = 0 , tac = (tac happySubAttrs_1) , envFunOut = (envFunOut happySubAttrs_1) , envFunIn = [] , envOut = (envOut happySubAttrs_1) , envIn = [] , tip = TypeVoid , parsetree = ( Prog (parsetree happySubAttrs_1) , (tac happySelfAttrs) )  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ countIn = 0 , inLoop = False , envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , labelIn = 0  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_7 = happySpecReduce_3  6# happyReduction_7
happyReduction_7 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [SimpleAssignment (showIdentificator (tmp happySubAttrs_1) ) ( (addr happySubAttrs_3) )] , labelOut = (labelOut happySubAttrs_3) , countOut = (countOut happySubAttrs_3) , err = (checkDefVar (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunOut happySubAttrs_3) , envOut = (envIn happySelfAttrs) , tip = TypeVoid , parsetree = Assgn (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ countIn = (countIn happySelfAttrs) , envFunIn = (envFunOut happySubAttrs_1) , envIn = (envIn happySelfAttrs) , labelIn = (labelIn happySelfAttrs)  }; happyConditions = [( if ( (tip happySubAttrs_1) ==VarNotDec) then (Bad $ (prntErrNotDec (parsetree happySubAttrs_1) )) else ( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrAss happy_var_2 (tip happySubAttrs_1) (tip happySubAttrs_3) )) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_8 = happySpecReduce_1  6# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , countOut = (countOut happySubAttrs_1) , labelOut = (labelOut happySubAttrs_1) , envFunOut = (envFunOut happySubAttrs_1) , envOut = (envOut happySelfAttrs) , tip = TypeVoid , parsetree = Cond (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ countIn = (countIn happySelfAttrs) , labelIn = (labelIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , inLoop = (inLoop happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_9 = happySpecReduce_1  6# happyReduction_9
happyReduction_9 happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunOut happySubAttrs_1) , envOut = (envOut happySelfAttrs) , tip = TypeVoid , parsetree = While (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , inLoop = (inLoop happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_10 = happySpecReduce_1  6# happyReduction_10
happyReduction_10 happy_x_1
	 =  case happyOut17 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunOut happySubAttrs_1) , envOut = (envOut happySelfAttrs) , tip = TypeVoid , parsetree = Do (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , inLoop = (inLoop happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_11 = happySpecReduce_1  6# happyReduction_11
happyReduction_11 happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunOut happySubAttrs_1) , envOut = (envIn happySelfAttrs) , tip = TypeVoid , parsetree = For (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , inLoop = (inLoop happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_12 = happySpecReduce_1  6# happyReduction_12
happyReduction_12 happy_x_1
	 =  case happyOut20 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunOut happySubAttrs_1) , envOut = (envIn happySelfAttrs) , tip = TypeVoid , parsetree = Jump (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , inLoop = (inLoop happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_13 = happySpecReduce_1  6# happyReduction_13
happyReduction_13 happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ countOut = (countIn happySelfAttrs) , tac = (tac happySubAttrs_1) , envOut = (envIn happySelfAttrs) , tip = TypeVoid , parsetree = Write (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_14 = happySpecReduce_1  6# happyReduction_14
happyReduction_14 happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ countOut = (countOut happySubAttrs_1) , tac = (tac happySubAttrs_1) , envOut = (envIn happySelfAttrs) , tip = TypeVoid , parsetree = Read (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , countIn = (countIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_15 = happySpecReduce_1  6# happyReduction_15
happyReduction_15 happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ labelOut = (labelIn happySelfAttrs) , countOut = (countIn happySelfAttrs) , tac = (tac happySubAttrs_1) , envFunOut = (envFunOut happySubAttrs_1) , envOut = (envOut happySubAttrs_1) , parsetree = VarD (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_16 = happySpecReduce_1  6# happyReduction_16
happyReduction_16 happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunOut happySubAttrs_1) , envOut = (envIn happySelfAttrs) , tip = TypeVoid , parsetree = DFunc (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_17 = happySpecReduce_1  6# happyReduction_17
happyReduction_17 happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = TypeVoid , parsetree = CFunc (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_18 = happySpecReduce_1  7# happyReduction_18
happyReduction_18 happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ countOut = (countIn happySelfAttrs) , labelOut = (labelIn happySelfAttrs) , tac = [] , tmp = (parsetree happySubAttrs_1) , addr = showIdentificator (parsetree happySubAttrs_1) , tip = (getVarTip (envIn happySelfAttrs) (parsetree happySubAttrs_1) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , parsetree = Id (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [( if ( (tip happySelfAttrs) ==VarNotDec) then (Bad $ (prntErrNotDec (parsetree happySubAttrs_1) )) else (Ok()) ) ]++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_19 = happyReduce 4# 7# happyReduction_19
happyReduction_19 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = ArrayEl (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}

happyReduce_20 = happySpecReduce_3  8# happyReduction_20
happyReduction_20 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = RTypeInt , parsetree = Ecount (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_21 = happySpecReduce_3  8# happyReduction_21
happyReduction_21 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualAndBoolType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = RTypeBool , parsetree = Elor (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrBothBool (err happySelfAttrs) happy_var_2 )) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_22 = happySpecReduce_3  8# happyReduction_22
happyReduction_22 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualAndBoolType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = RTypeBool , parsetree = Eland (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrBothBool (err happySelfAttrs) happy_var_2 )) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_23 = happySpecReduce_3  8# happyReduction_23
happyReduction_23 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = RTypeBool , parsetree = Eeq (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else ( if ( (tip happySubAttrs_1) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_1) ) else ( if ( (tip happySubAttrs_3) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_3) ) else Bad $ (prntErrComp happy_var_2 ) ) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_24 = happySpecReduce_3  8# happyReduction_24
happyReduction_24 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = RTypeBool , parsetree = Eneq (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else ( if ( (tip happySubAttrs_1) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_1) ) else ( if ( (tip happySubAttrs_3) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_3) ) else Bad $ (prntErrComp happy_var_2 ) ) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_25 = happySpecReduce_3  8# happyReduction_25
happyReduction_25 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = RTypeBool , parsetree = Eleq (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else ( if ( (tip happySubAttrs_1) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_1) ) else ( if ( (tip happySubAttrs_3) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_3) ) else Bad $ (prntErrComp happy_var_2 ) ) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_26 = happySpecReduce_3  8# happyReduction_26
happyReduction_26 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = RTypeBool , parsetree = Egeq (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else ( if ( (tip happySubAttrs_1) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_1) ) else ( if ( (tip happySubAttrs_3) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_3) ) else Bad $ (prntErrComp happy_var_2 ) ) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_27 = happySpecReduce_3  8# happyReduction_27
happyReduction_27 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [BinaryOperation " < " (addr happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) ] , addr = "t" ++ show (countOut happySubAttrs_3) , labelOut = (labelOut happySubAttrs_3) , countOut = (countOut happySubAttrs_3) + 1 , err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = RTypeBool , parsetree = El (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ countIn = (countIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , labelIn = (labelIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ countIn = (countOut happySubAttrs_1) , envIn = (envIn happySelfAttrs) , labelIn = (labelOut happySubAttrs_1)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else ( if ( (tip happySubAttrs_1) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_1) ) else ( if ( (tip happySubAttrs_3) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_3) ) else Bad $ (prntErrComp happy_var_2 ) ) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_28 = happySpecReduce_3  8# happyReduction_28
happyReduction_28 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = RTypeBool , parsetree = Eg (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else ( if ( (tip happySubAttrs_1) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_1) ) else ( if ( (tip happySubAttrs_3) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_3) ) else Bad $ (prntErrComp happy_var_2 ) ) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_29 = happySpecReduce_3  8# happyReduction_29
happyReduction_29 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = RTypeBool , parsetree = Erange (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else ( if ( (tip happySubAttrs_1) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_1) ) else ( if ( (tip happySubAttrs_3) ==VarNotDec) then Bad $ (prntErrNotDec (parsetree happySubAttrs_3) ) else Bad $ (prntErrComp happy_var_2 ) ) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_30 = happySpecReduce_3  8# happyReduction_30
happyReduction_30 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [BinaryOperation " + " (addr happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) ] , addr = "t"++ show (countOut happySubAttrs_3) , labelOut = (labelIn happySelfAttrs) , countOut = (countOut happySubAttrs_3) + 1 , err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = (tip happySubAttrs_1) , parsetree = Eadd (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , countIn = (countIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , countIn = (countOut happySubAttrs_1)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrAdd happy_var_2 )) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_31 = happySpecReduce_3  8# happyReduction_31
happyReduction_31 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [BinaryOperation " - " (addr happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) ] , addr = "t"++ show (countOut happySubAttrs_3) , labelOut = (labelIn happySelfAttrs) , countOut = (countOut happySubAttrs_3) + 1 , err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = (tip happySubAttrs_1) , parsetree = Esub (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , countIn = (countIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , countIn = (countOut happySubAttrs_1)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrAdd happy_var_2 )) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_32 = happySpecReduce_3  8# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = (tip happySubAttrs_1) , parsetree = Ebitor (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_33 = happySpecReduce_3  8# happyReduction_33
happyReduction_33 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = (tip happySubAttrs_1) , parsetree = Ebitxor (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_34 = happySpecReduce_3  8# happyReduction_34
happyReduction_34 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = (tip happySubAttrs_1) , parsetree = Ebitand (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_35 = happySpecReduce_2  8# happyReduction_35
happyReduction_35 happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = (tip happySubAttrs_2) , parsetree = Eupos (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_36 = happySpecReduce_2  8# happyReduction_36
happyReduction_36 happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = (tip happySubAttrs_2) , parsetree = Euneg (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_37 = happySpecReduce_3  8# happyReduction_37
happyReduction_37 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [BinaryOperation " * " (addr happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) ] , addr = "t"++ show (countOut happySubAttrs_3) , labelOut = (labelIn happySelfAttrs) , countOut = (countOut happySubAttrs_3) + 1 , err = (checkEqualType (tip happySubAttrs_1) (tip happySubAttrs_3) ) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = (tip happySubAttrs_1) , parsetree = Emul (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , countIn = (countIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , countIn = (countOut happySubAttrs_1)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrAdd happy_var_2 )) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_38 = happySpecReduce_3  8# happyReduction_38
happyReduction_38 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = (tip happySubAttrs_1) , parsetree = Ediv (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_39 = happySpecReduce_3  8# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = (tip happySubAttrs_1) , parsetree = Emod (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_40 = happySpecReduce_1  8# happyReduction_40
happyReduction_40 happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ countOut = (countIn happySelfAttrs) , labelOut = (labelIn happySelfAttrs) , addr = (addr happySubAttrs_1) , tac = [] , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , tip = (tip happySubAttrs_1) , parsetree = Econs (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_41 = happySpecReduce_1  8# happyReduction_41
happyReduction_41 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ labelOut = (labelIn happySelfAttrs) , countOut = (countIn happySelfAttrs) , addr = (addr happySubAttrs_1) , tac = [] , envFunOut = (envFunIn happySelfAttrs) , envOut = (envOut happySubAttrs_1) , tip = (tip happySubAttrs_1) , parsetree = LExprR (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_42 = happySpecReduce_3  8# happyReduction_42
happyReduction_42 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_43 = happyReduce 4# 9# happyReduction_43
happyReduction_43 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut5 happy_x_3 of { happy_var_3 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [WriteIntOperation (parsetree happySubAttrs_3) ] , labelOut = (labelIn happySelfAttrs) , countOut = (countIn happySelfAttrs) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , parsetree = WriteInt (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}

happyReduce_44 = happyReduce 4# 9# happyReduction_44
happyReduction_44 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_3 of { happy_var_3 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = WriteReal (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}

happyReduce_45 = happyReduce 4# 9# happyReduction_45
happyReduction_45 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = WriteChar (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}

happyReduce_46 = happyReduce 4# 9# happyReduction_46
happyReduction_46 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = WriteString (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}

happyReduce_47 = happyReduce 4# 10# happyReduction_47
happyReduction_47 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut5 happy_x_3 of { happy_var_3 -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [ReadntOperation (parsetree happySubAttrs_3) (addr happySelfAttrs) ] , addr = "t"++ show (countIn happySelfAttrs) , labelOut = (labelIn happySelfAttrs) , countOut = (countIn happySelfAttrs) + 1 , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , parsetree = ReadInt (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}

happyReduce_48 = happyReduce 4# 10# happyReduction_48
happyReduction_48 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_3 of { happy_var_3 -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = ReadReal (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}

happyReduce_49 = happyReduce 4# 10# happyReduction_49
happyReduction_49 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = ReadChar (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}

happyReduce_50 = happyReduce 4# 10# happyReduction_50
happyReduction_50 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = ReadString (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}

happyReduce_51 = happyReduce 4# 11# happyReduction_51
happyReduction_51 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_2 of { happy_var_2 -> 
	case happyOut10 happy_x_4 of { happy_var_4 -> 
	happyIn15
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++ [Then (addr happySubAttrs_2) ( (labelOut happySubAttrs_4) +1)] ++ (tac happySubAttrs_4) ++ [Label ( (labelOut happySubAttrs_2) +1)] , labelOut = (labelOut happySubAttrs_4) + 2 , countOut = (countOut happySubAttrs_4) + 1 , err = (checkEqualType (tip happySubAttrs_2) RTypeBool) , envFunOut = (envFunOut happySubAttrs_4) , envOut = (envOut happySubAttrs_4) , parsetree = If1 (parsetree happySubAttrs_2) (parsetree happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ countIn = (countIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , labelIn = (labelIn happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ countIn = (countOut happySubAttrs_2) , inLoop = True , envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , labelIn = (labelOut happySubAttrs_2)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrCondNotBool happy_var_1 )) ) ]++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_52 = happyReduce 7# 11# happyReduction_52
happyReduction_52 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	case happyOut29 happy_x_6 of { happy_var_6 -> 
	happyIn15
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_3) RTypeBool) , envFunOut = (envFunOut happySubAttrs_6) , envOut = (envOut happySubAttrs_6) , parsetree = If2 (parsetree happySubAttrs_3) (parsetree happySubAttrs_6)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs)  }; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , inLoop = True  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrCondNotBool happy_var_1 )) ) ]++happyConditions_3++happyConditions_6 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_53 = happyReduce 4# 12# happyReduction_53
happyReduction_53 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_2 of { happy_var_2 -> 
	case happyOut10 happy_x_4 of { happy_var_4 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_2) RTypeBool) , envFunOut = (envFunOut happySubAttrs_4) , envOut = (envOut happySubAttrs_4) , parsetree = WhileDo (parsetree happySubAttrs_2) (parsetree happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , inLoop = True  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrCondNotBool happy_var_1 )) ) ]++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_54 = happyReduce 5# 12# happyReduction_54
happyReduction_54 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_2 of { happy_var_2 -> 
	case happyOut29 happy_x_4 of { happy_var_4 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_2) RTypeBool) , envFunOut = (envFunOut happySubAttrs_4) , envOut = (envOut happySubAttrs_4) , parsetree = WhileDoS (parsetree happySubAttrs_2) (parsetree happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , inLoop = True  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrCondNotBool happy_var_1 )) ) ]++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_55 = happyReduce 7# 13# happyReduction_55
happyReduction_55 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut29 happy_x_3 of { happy_var_3 -> 
	case happyOut12 happy_x_6 of { happy_var_6 -> 
	happyIn17
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkEqualType (tip happySubAttrs_6) RTypeBool) , envFunOut = (envFunOut happySubAttrs_3) , envOut = (envOut happySubAttrs_6) , parsetree = SDo (parsetree happySubAttrs_3) (parsetree happySubAttrs_6)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , inLoop = True  }; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs)  }; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrCondNotBool happy_var_1 )) ) ]++happyConditions_3++happyConditions_6 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_56 = happyReduce 8# 14# happyReduction_56
happyReduction_56 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut4 happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_4 of { happy_var_4 -> 
	case happyOut29 happy_x_7 of { happy_var_7 -> 
	happyIn18
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunOut happySubAttrs_7) , envOut = (envIn happySelfAttrs) , parsetree = SForDo (parsetree happySubAttrs_2) (parsetree happySubAttrs_4) (parsetree happySubAttrs_7)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (insVarEnv (Var (parsetree happySubAttrs_2) RTypeInt) (envIn happySelfAttrs) ) , inLoop = True  }; happyConditions = []++happyConditions_2++happyConditions_4++happyConditions_7 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_57 = happyReduce 7# 14# happyReduction_57
happyReduction_57 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut4 happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_4 of { happy_var_4 -> 
	case happyOut29 happy_x_6 of { happy_var_6 -> 
	happyIn18
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunOut happySubAttrs_6) , envOut = (envIn happySelfAttrs) , parsetree = SForDoBloc (parsetree happySubAttrs_2) (parsetree happySubAttrs_4) (parsetree happySubAttrs_6)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (insVarEnv (Var (parsetree happySubAttrs_2) RTypeInt) (envIn happySelfAttrs) ) , inLoop = True  }; happyConditions = []++happyConditions_2++happyConditions_4++happyConditions_6 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_58 = happySpecReduce_3  15# happyReduction_58
happyReduction_58 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	case happyOut5 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = ForAggr (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_59 = happySpecReduce_1  16# happyReduction_59
happyReduction_59 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (if ( (inLoop happySelfAttrs) ) then "" else ("Syntax error: break statement not in a loop statement! At " ++ (tokenPos2 happy_var_1 )) ) , envFunOut = (envFunIn happySelfAttrs) , envIn = (envOut happySelfAttrs) , parsetree = Break  }; happyConditions = [(if ( (inLoop happySelfAttrs) ) then Ok() else Bad $ ( (err happySelfAttrs) ) ) ] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_60 = happySpecReduce_1  16# happyReduction_60
happyReduction_60 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (if ( (inLoop happySelfAttrs) ) then "" else ("Syntax error: continue statement not in a loop statement! At " ++ (tokenPos2 happy_var_1 )) ) , envFunOut = (envFunIn happySelfAttrs) , envIn = (envOut happySelfAttrs) , parsetree = Continue  }; happyConditions = [(if ( (inLoop happySelfAttrs) ) then Ok() else Bad $ ( (err happySelfAttrs) ) ) ] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_61 = happySpecReduce_2  17# happyReduction_61
happyReduction_61 happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_2 of { happy_var_2 -> 
	happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) , labelOut = (labelOut happySubAttrs_2) , envFunOut = (envFunOut happySubAttrs_2) , envOut = (envOut happySubAttrs_2) , parsetree = SVarBlock (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , labelIn = (labelIn happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_62 = happySpecReduce_2  17# happyReduction_62
happyReduction_62 happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_2 of { happy_var_2 -> 
	happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunOut happySubAttrs_2) , envOut = (envOut happySubAttrs_2) , parsetree = SVarCon (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_63 = happyReduce 5# 18# happyReduction_63
happyReduction_63 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	case happyOut12 happy_x_5 of { happy_var_5 -> 
	happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [VariableDeclaration (showIdentificator (parsetree happySubAttrs_1) ) ] ++ [SimpleAssignment (showIdentificator (parsetree happySubAttrs_1) ) (printEcons (parsetree happySubAttrs_5) )] , envFunOut = (envFunIn happySelfAttrs) , err = (checkDefVar (parsetree happySubAttrs_3) (tip happySubAttrs_5) ) , envOut = (insVarEnv (Var (parsetree happySubAttrs_1) (tip happySubAttrs_3) ) (envIn happySelfAttrs) ) , parsetree = SBlockVar (parsetree happySubAttrs_1) (parsetree happySubAttrs_3) (parsetree happySubAttrs_5)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErrDiffType happy_var_2 )) ) ]++happyConditions_1++happyConditions_3++happyConditions_5 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}

happyReduce_64 = happyReduce 8# 19# happyReduction_64
happyReduction_64 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut4 happy_x_2 of { happy_var_2 -> 
	case happyOut32 happy_x_4 of { happy_var_4 -> 
	case happyOut29 happy_x_7 of { happy_var_7 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (checkDoubleFun (parsetree happySubAttrs_2) (envFunIn happySelfAttrs) ) , envFunOut = (envFunIn happySelfAttrs) ++ [ (parsetree happySubAttrs_2) ] , envOut = [] , tip = TypeVoid , parsetree = SDefFunc (parsetree happySubAttrs_2) (parsetree happySubAttrs_4) (parsetree happySubAttrs_7)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envIn = []  }; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) ++ [ (parsetree happySubAttrs_2) ] , envIn = (envOut happySubAttrs_4) , inLoop = False  }; happyConditions = [(if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErr (err happySelfAttrs) happy_var_1 )) ) ]++happyConditions_2++happyConditions_4++happyConditions_7 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}

happyReduce_65 = happyReduce 4# 20# happyReduction_65
happyReduction_65 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut30 happy_x_3 of { happy_var_3 -> 
	happyIn24
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , parsetree = SCallFunc (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = [( if ((checkDoubleFun (parsetree happySubAttrs_1) (envFunIn happySelfAttrs) ) =="") then (Bad $ (prntErr "Function is not defined." happy_var_2 )) else (Ok()) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_66 = happySpecReduce_3  21# happyReduction_66
happyReduction_66 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = checkDoubleParam (envOut happySelfAttrs) , envOut = (insVarFuncEnv (Var (parsetree happySubAttrs_1) (tip happySubAttrs_3) ) (envIn happySelfAttrs) ) , parsetree = SArg (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErr (err happySelfAttrs) happy_var_2 )) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_67 = happyReduce 4# 21# happyReduction_67
happyReduction_67 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut4 happy_x_2 of { happy_var_2 -> 
	case happyOutTok happy_x_3 of { happy_var_3 -> 
	case happyOut28 happy_x_4 of { happy_var_4 -> 
	happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = checkDoubleParam (envOut happySelfAttrs) , envOut = (insVarFuncEnv (Var (parsetree happySubAttrs_2) (tip happySubAttrs_4) ) (envIn happySelfAttrs) ) , parsetree = PArg (parsetree happySubAttrs_2) (parsetree happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; happyConditions = [( if ( (err happySelfAttrs) =="") then (Ok()) else (Bad $ (prntErr (err happySelfAttrs) happy_var_3 )) ) ]++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_68 = happySpecReduce_1  22# happyReduction_68
happyReduction_68 happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [] , addr = show (parsetree happySubAttrs_1) , err = "" , tip = RTypeInt , parsetree = RInt (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_69 = happySpecReduce_1  22# happyReduction_69
happyReduction_69 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = "" , tip = RTypeDouble , parsetree = RDouble (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_70 = happySpecReduce_1  22# happyReduction_70
happyReduction_70 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = RTypeChar , parsetree = RChar (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_71 = happySpecReduce_1  22# happyReduction_71
happyReduction_71 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = RTypeString , parsetree = RString (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_72 = happySpecReduce_1  22# happyReduction_72
happyReduction_72 happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = RTypeBool , parsetree = RBoolean (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_73 = happySpecReduce_1  23# happyReduction_73
happyReduction_73 happy_x_1
	 =  happyIn27
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = RTrue  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_74 = happySpecReduce_1  23# happyReduction_74
happyReduction_74 happy_x_1
	 =  happyIn27
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = RFalse  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_75 = happySpecReduce_1  24# happyReduction_75
happyReduction_75 happy_x_1
	 =  happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (parsetree happySelfAttrs) , parsetree = RTypeInt  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_76 = happySpecReduce_1  24# happyReduction_76
happyReduction_76 happy_x_1
	 =  happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (parsetree happySelfAttrs) , parsetree = RTypeDouble  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_77 = happySpecReduce_1  24# happyReduction_77
happyReduction_77 happy_x_1
	 =  happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (parsetree happySelfAttrs) , parsetree = RTypeChar  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_78 = happySpecReduce_1  24# happyReduction_78
happyReduction_78 happy_x_1
	 =  happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (parsetree happySelfAttrs) , parsetree = RTypeString  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_79 = happySpecReduce_1  24# happyReduction_79
happyReduction_79 happy_x_1
	 =  happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tip = (parsetree happySelfAttrs) , parsetree = RTypeBool  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_80 = happySpecReduce_0  25# happyReduction_80
happyReduction_80  =  happyIn29
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ labelOut = (labelIn happySelfAttrs) , countOut = (countIn happySelfAttrs) , tac = [] , envOut = (envIn happySelfAttrs) , parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_81 = happySpecReduce_1  25# happyReduction_81
happyReduction_81 happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	happyIn29
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ labelOut = (labelOut happySubAttrs_1) , countOut = (countOut happySubAttrs_1) , tac = (tac happySubAttrs_1) , envFunOut = (envFunOut happySubAttrs_1) , envOut = (envOut happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ countIn = (countIn happySelfAttrs) , inLoop = (inLoop happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , labelIn = (labelIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_82 = happySpecReduce_3  25# happyReduction_82
happyReduction_82 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	case happyOut29 happy_x_3 of { happy_var_3 -> 
	happyIn29
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ labelOut = (labelOut happySubAttrs_3) , countOut = (countOut happySubAttrs_3) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) , envFunOut = (envFunOut happySubAttrs_3) , envOut = (envOut happySubAttrs_3) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ countIn = (countIn happySelfAttrs) , inLoop = (inLoop happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , labelIn = (labelIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ countIn = (countOut happySubAttrs_1) , inLoop = (inLoop happySubAttrs_1) , envFunIn = (envFunOut happySubAttrs_1) , envIn = (envOut happySubAttrs_1) , labelIn = (labelOut happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_83 = happySpecReduce_0  26# happyReduction_83
happyReduction_83  =  happyIn30
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envIn happySelfAttrs) , parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_84 = happySpecReduce_1  26# happyReduction_84
happyReduction_84 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn30
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_85 = happySpecReduce_3  26# happyReduction_85
happyReduction_85 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut30 happy_x_3 of { happy_var_3 -> 
	happyIn30
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envOut = (envOut happySubAttrs_3) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envOut happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_86 = happySpecReduce_0  27# happyReduction_86
happyReduction_86  =  happyIn31
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ labelOut = (labelIn happySelfAttrs) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_87 = happySpecReduce_1  27# happyReduction_87
happyReduction_87 happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	happyIn31
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ labelOut = (labelOut happySubAttrs_1) , tac = (tac happySubAttrs_1) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envOut happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , labelIn = (labelIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_88 = happySpecReduce_3  27# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	case happyOut31 happy_x_3 of { happy_var_3 -> 
	happyIn31
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ labelOut = (labelOut happySubAttrs_3) , envFunOut = (envFunIn happySelfAttrs) , envOut = (envOut happySubAttrs_3) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFunIn = (envFunIn happySelfAttrs) , envIn = (envIn happySelfAttrs) , labelIn = (labelIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFunIn = (envFunOut happySubAttrs_1) , envIn = (envOut happySubAttrs_1) , labelIn = (labelOut happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_89 = happySpecReduce_0  28# happyReduction_89
happyReduction_89  =  happyIn32
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envIn happySelfAttrs) , parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_90 = happySpecReduce_1  28# happyReduction_90
happyReduction_90 happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envOut happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_91 = happySpecReduce_3  28# happyReduction_91
happyReduction_91 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ envFunOut = (envFunIn happySelfAttrs) , envOut = (envOut happySubAttrs_3) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envIn = (envIn happySelfAttrs) , envFunIn = (envFunIn happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envIn = (envOut happySubAttrs_1) , envFunIn = (envFunIn happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyNewToken action sts stk [] =
	happyDoAction 61# notHappyAtAll action sts stk []

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
	PT _ (TS _ 51) -> cont 51#;
	PT _ (TS _ 52) -> cont 52#;
	PT _ (TS _ 53) -> cont 53#;
	PT _ (TS _ 54) -> cont 54#;
	PT _ (TV happy_dollar_dollar) -> cont 55#;
	PT _ (TI happy_dollar_dollar) -> cont 56#;
	PT _ (TD happy_dollar_dollar) -> cont 57#;
	PT _ (TC happy_dollar_dollar) -> cont 58#;
	PT _ (TL happy_dollar_dollar) -> cont 59#;
	_ -> cont 60#;
	_ -> happyError' (tk:tks)
	}

happyError_ 61# tk tks = happyError' tks
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

data MyAttribute a = HappyAttributes {parsetree :: a, tip :: Type, err :: String, envIn :: [Env], envOut :: [Env], envFunIn :: [Ident], envFunOut :: [Ident], inLoop :: Bool, tac :: [TacEl], addr :: String, addrLs :: [String], countIn :: Int, countOut :: Int, labelIn :: Int, labelOut :: Int, tempSize :: Integer, tmp :: Ident}
happyEmptyAttrs = HappyAttributes {parsetree = error "invalid reference to attribute 'parsetree'", tip = error "invalid reference to attribute 'tip'", err = error "invalid reference to attribute 'err'", envIn = error "invalid reference to attribute 'envIn'", envOut = error "invalid reference to attribute 'envOut'", envFunIn = error "invalid reference to attribute 'envFunIn'", envFunOut = error "invalid reference to attribute 'envFunOut'", inLoop = error "invalid reference to attribute 'inLoop'", tac = error "invalid reference to attribute 'tac'", addr = error "invalid reference to attribute 'addr'", addrLs = error "invalid reference to attribute 'addrLs'", countIn = error "invalid reference to attribute 'countIn'", countOut = error "invalid reference to attribute 'countOut'", labelIn = error "invalid reference to attribute 'labelIn'", labelOut = error "invalid reference to attribute 'labelOut'", tempSize = error "invalid reference to attribute 'tempSize'", tmp = error "invalid reference to attribute 'tmp'"}

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
