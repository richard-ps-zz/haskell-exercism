module Squares
( sumOfSquares,
  squareOfSums,
  difference
) where


difference :: Int -> Int
difference x = squareOfSums x - sumOfSquares x  

sumOfSquares :: Int -> Int
sumOfSquares 0 = 0
sumOfSquares x = (x ^ 2) + sumOfSquares (x-1)

squareOfSums :: Int -> Int 
squareOfSums x = (sumOf 1 x) ^ 2 

sumOf :: Int -> Int -> Int
sumOf x y
    | x == y = y  
    | x < y = x + sumOf (x+1) y 