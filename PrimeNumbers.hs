module PrimeNumbers where

isPrime :: Int -> Bool
isPrime n | n <= 0 = False
          | n == 1 = False
          | (div n 1 == n && div n n == 1) && (mod n 2 /= 0) = True
          | otherwise = False

getPrimes :: Int -> [Int]
getPrimes n = [x | x <- [2..n], isPrime x]

getPrimes' :: Int -> [Int]
getPrimes' n = filter isPrime [2..n]
