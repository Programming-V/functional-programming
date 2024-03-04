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

{-
  7. Define a recursive function merge :: Ord a => [a] -> [a] -> [a] that merges two sorted
    lists to give a single sorted list. For example:
      > merge [2,5,6] [1,3,4]
      [1,2,3,4,5,6]
  Note: your definition should not use other functions on sorted lists such as insert or isort, 
  but should be defined using explicit recursion.
-}

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs  
merge [] ys = ys  
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)  
                    | otherwise = y : merge (x:xs) ys  

{-
  8. Using merge, define a function msort :: Ord a => [a] -> [a] that implements merge sort, 
    in which the empty list and singleton lists are already sorted, and any other list is 
    sorted by merging together the two lists that result from sorting the two halves of the 
    list separately.
  Hint: first define a function halve :: [a] -> ([a],[a]) that splits a list into two halves whose
  lengths differ by at most one.
-}

msort :: Ord a => [a] -> [a]
msort [] = [] 
msort [x] = [x]  
msort xs = merge (msort left) (msort right)
  where
    (left, right) = halve xs

halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

{-
  9. Using the five-step process, construct the library functions that:
    a. calculate the sum of a list of numbers;
    b. take a given number of elements from the start of a list;
    c. select the last element of a non-empty list.
-}

-- a.
sumList :: Num a => [a] -> a
sumList [] = 0
sumList (x:xs) = x + sumList xs

-- b.
takeFromStart :: Int -> [a] -> [a]
takeFromStart 0 _ = []
takeFromStart n (x:xs) = x : takeFromStart (n-1) xs

-- c.
lastElement :: [a] -> a
lastElement [x] = x
lastElement (_:xs) = lastElement xs
