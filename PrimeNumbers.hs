module PrimeNumbers where

isPrime :: Int -> Bool
isPrime n | n <= 0 = False
isPrime 1 = False
isPrime n = null [x | x <- [2..n-1], mod n x == 0]

getPrimes :: Int -> [Int]
getPrimes n = [x | x <- [2..n], isPrime x]

getPrimes' :: Int -> [Int]
getPrimes' n = filter isPrime [2..n]
