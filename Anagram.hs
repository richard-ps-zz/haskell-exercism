module Anagram
( anagramsFor
) where

import Data.List  

-- receives two string and returns if they are anagrams
isAnagram :: String -> String -> Bool
isAnagram [] [] = True
isAnagram (x:xs) y
   | elem x y == True = isAnagram xs (delete x y)
   | elem x y == False = False

-- receives a word and a list of words and return the sublist of words that are anagrams of that word
anagramsFor :: String -> [String] -> [String]
anagramsFor [] [] = []
anagramsFor x y = [z | z <- filter (isAnagram x) y]