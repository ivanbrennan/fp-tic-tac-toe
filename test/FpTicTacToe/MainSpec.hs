module FpTicTacToe.MainSpec (spec) where

import Test.Hspec (Spec, describe, it, shouldBe)

spec :: Spec
spec = describe "test" $ do
  it "runs" $ do
    True `shouldBe` True
