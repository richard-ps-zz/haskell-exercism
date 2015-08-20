module Atbash
( encode
) where

import Data.List  

encode :: String -> String
encode [] = []
encode (x:xs) = case (elemIndex x common_alphabet) of
  					Just n  -> atbash_alphabet !! n : encode xs
  					Nothing -> "Invalid number!"
	where 
		common_alphabet = "abcdefghijklmnopqrstuvwxyz"
		atbash_alphabet = "zyxwvutsrqponmlkjihgfedcba"