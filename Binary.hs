module Binary
( toDecimal
) where

toDecimal :: String -> Int
toDecimal [] = 0
toDecimal (x:xs) = toDecimal xs + digit x (length (x:xs) - 1)
 
-- receives a binary digit and a position and returns its value in decimal
digit :: Char -> Int -> Int
digit x y = (read [x]) * (2 ^ y)
