module Game (
    main
) where

import System.Random

import Logic

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

    if null input
        then putStrLn "bye!"
        else main
    
