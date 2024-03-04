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

{-
  5. Why is it not feasible in general for function types to be instances of the Eq class? 
  When is it feasible? 
  Hint: two functions of the same type are equal if they always return equal 
  results for equal arguments.
-}

{-
  It's not feasible due to there is no general algorithm that can decide whether an arbitrary 
  program will halt or continue running indefinitely, leading to Halting Problem.
  On the other hand, it can be feasible when a function's output only depends on its inputs, 
  and there are no side effects (pure functions), which are transparent and has the same 
  output for the same input, so it can be consider them equal for the purposes of equality 
  comparison.
-}
