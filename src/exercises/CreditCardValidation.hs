module Exercises where

toDigits :: Integer -> [Integer]
toDigits d | d <= 0 = []
           | otherwise = toDigits (d `div` 10) ++ [d `mod` 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev d | d <= 0 = []
              | otherwise = d `mod` 10 : toDigits (d `div` 10)
  