{-
  Recursive Functions
-}

{-
  5. Using the recursive definitions given in this chapter, show how length [1,2,3], 
    drop 3 [1,2,3,4,5], and init [1,2,3] are evaluated.
-}

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + length xs
