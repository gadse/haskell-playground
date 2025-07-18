module Main (main) where

import System.Random

main :: IO ()
main = do
    putStrLn "What's your guess?"
    input <- getLine
    putStrLn input
    
    coinToss <- randomRIO (0, 1) :: IO Int
    putStrLn "Coin Toss:"
    print coinToss

    let guess = read input :: Int

    putStrLn $ playerWins guess coinToss

playerWins guess coinToss
    | (guess == coinToss) = "You win!"
    | otherwise = "You lose :("