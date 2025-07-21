module Logic
    ( 
        playerWins,
        heads,
        tails,
        message_win,
        message_loss
    ) where

type Coin = Int

playerWins :: Coin -> Coin -> String
playerWins guess coinToss
    | (guess == coinToss) = message_win
    | otherwise = message_loss

heads :: Coin
heads = 0

tails :: Coin
tails = 1

message_win = "You win! :3"
message_loss = "You lose :("

