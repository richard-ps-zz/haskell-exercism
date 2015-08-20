module Allergies
( allergies
) where

allergies :: Int -> [String]
allergies x
		| x >= 128 = allergies (x `mod` 128) ++ ["cats"]
		| x >= 64 = allergies (x `mod` 64) ++ ["pollen"]
		| x >= 32 = allergies (x `mod` 32) ++ ["chocolate"]
		| x >= 16 = allergies (x `mod` 16) ++ ["tomatoes"]
		| x >= 8 = allergies (x `mod` 8) ++ ["strawberries"]
		| x >= 4 = allergies (x `mod` 4) ++ ["shellfish"]
		| x >= 2 = allergies (x `mod` 2) ++ ["peanuts"]
		| x >= 1 = allergies (x `mod` 1) ++ ["eggs"]
		| x == 0 = []