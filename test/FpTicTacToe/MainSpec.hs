module FpTicTacToe.MainSpec (spec) where

import Test.Hspec (Spec, describe, it, shouldBe)

spec :: Spec
spec = describe "test" $
  it "runs" $
    True `shouldBe` True
