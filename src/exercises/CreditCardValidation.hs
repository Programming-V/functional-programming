module Exercises where

toDigits :: Integer -> [Integer]
toDigits d | d <= 0 = []
           | otherwise = toDigits (d `div` 10) ++ [d `mod` 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev d | d <= 0 = []
              | otherwise = d `mod` 10 : toDigits (d `div` 10)

hasEvenIndex :: (Integer, Integer) -> Integer
hasEvenIndex (index, d) | index `mod` 2 == 0 = d * 2
                        | otherwise = d

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther digits = map hasEvenIndex (zip [1..] digits)

mySum :: Integer -> Integer
mySum d = (d `mod` 10) + (d `div` 10)

sumDigits :: [Integer] -> Integer
sumDigits [x] = mySum x
sumDigits (x:xs) = mySum x + sumDigits xs
