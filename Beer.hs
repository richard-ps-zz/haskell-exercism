module Beer
( sing
) where

sing :: Int -> Int -> IO ()
sing x y = putStrLn (song x y)

song :: Int -> Int -> String
song x y
	| x > y = verse x ++ song (x-1) y
	| x == y = verse 0

verse :: Int -> String
verse x
	  | x /= 0 = (show x) ++ pieces !! 0 ++ (show x) ++ pieces !! 1 ++ show (x-1) ++ pieces !! 2
	  | x == 0 = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
	  where 
	  	pieces = [" bottles of beer on the wall, ", " bottles of beer.\nTake one down and pass it around, ", " bottles of beer on the wall.\n\n"]