{-
  List Comprehensions
-}

{-
  6. A positive integer is perfect if it equals the sum of all of its factors, excluding 
    the number itself. Using a list comprehension and the function factors, define a 
    function perfects :: Int -> [Int] that returns the list of all perfect numbers up 
    to a given limit. 
    For example:
    > perfects 500
    [6,28,496]
-}

divisors :: Int -> [Int]
divisors n = [x | x <- [1..(n `div` 2)], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (divisors x) == x]

{-
  9. The scalar product of two lists of integers xs and ys of length n is given by the sum 
  of the products of corresponding integers:
  In a similar manner to chisqr, show how a list comprehension can be used to define a function
  scalarproduct :: [Int] -> [Int] -> Int that returns the scalar product of two lists. 
  For example:
    > scalarproduct [1,2,3] [4,5,6]
    32
-}

scalarProduct :: [Int] -> [Int] -> Int
scalarProduct [] [] = 0
scalarProduct (x:xs) (y:ys) = x * y + sum [x * y | (x, y) <- zip xs ys]

scalarProduct' :: [Int] -> [Int] -> Int
scalarProduct' [] [] = 0
scalarProduct' (x:xs) (y:ys) = x * y + scalarProduct xs ys
