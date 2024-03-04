module Chapters where

{-
  Types and Classes
-}

{-
  3. What are the types of the following functions?
  Hint: take care to include the necessary class constraints in the types 
  if the functions are defined using overloaded operators
-}

second :: [a] -> a
second xs = head (tail xs)

swap :: (a, a) -> (a, a)
swap (x,y) = (y,x)

pair :: a -> a -> (a, a)
pair x y = (x,y)

double :: Num a => a -> a 
double x = x*2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)

-- 4. Check your answers to the preceding three questions using GHCi.

-- All the types written above have been compiled.
