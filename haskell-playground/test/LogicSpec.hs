module LogicSpec
  ( spec
  ) where

import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

import Logic

spec :: Spec
spec = 
  describe "Game Logic" $ do
    
    describe "Prelude.head" $ do
      it "returns the first element of a list" $ do
        head [23 ..] `shouldBe` (23 :: Int)

      it "returns the first element of an *arbitrary* list" $
        property $ \x xs -> head (x:xs) == (x :: Int)

      it "throws an exception if used with an empty list" $ do
        evaluate (head []) `shouldThrow` anyException
    
    describe "Logic.playerWins" $ do
      it "guessing the same as the coin wins" $ do
        playerWins heads heads `shouldBe` message_win
        playerWins tails tails `shouldBe` message_win
      it "guessing different from the coin loses" $ do
        playerWins heads tails `shouldBe` message_loss
        playerWins tails heads `shouldBe` message_loss