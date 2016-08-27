{-# LANGUAGE TemplateHaskell #-}
module TMP where

import Control.Lens

data Test = TestIntInt Int Int | TestBool {bool :: Bool} | TestVoid

$(makePrisms ''Test)
