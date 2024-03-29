{-
  Defining Functions
-}

{-
  5. Without using any other library functions or operators, show how the meaning of the 
  following pattern matching definition for logical conjunction && can be formalised 
  using conditional expressions:
  Hint: use two nested conditional expressions.
  True && True = True
  _ && _ = False
-}

myAnd :: Bool -> Bool -> Bool
myAnd x y =
  if x
    then if y
           then True
           else False
    else False

{-
  6. Do the same for the following alternative definition, and note the difference 
  in the number of conditional expressions that are required
  True && b = b
  False && _ = False
-}

myAnd' :: Bool -> Bool -> Bool
myAnd' x y = 
    if x
      then y
    else False

{-
  7. Show how the meaning of the following curried function definition 
  can be formalised in terms of lambda expressions:
  mult :: Int -> Int -> Int -> Int
  mult x y z = x*y*z
-}

mult :: Int -> Int -> Int -> Int
mult x y z = x*y*z

mult' :: Int -> Int -> Int -> Int
mult' = \x -> \y -> \z -> x * y * z

{-
  8. The Luhn algorithm is used to check bank card numbers for simple errors such 
  as mistyping a digit, and proceeds as follows:
    - consider each digit as a separate number;
    - moving left, double every other number from the second last;
    - subtract 9 from each number that is now greater than 9;
    - add all the resulting numbers together;
    - if the total is divisible by 10, the card number is valid.

  Define a function luhnDouble :: Int -> Int that doubles a digit and subtracts 9 
  if the result is greater than 9. 
  For example:
    > luhnDouble 3
    6

    > luhnDouble 6
    3

  Using luhnDouble and the integer remainder function mod, define a function 
  luhn :: Int -> Int -> Int -> Int -> Bool that decides if a four-digit bank 
  card number is valid. 
  For example:
    > luhn 1 7 8 4
    True

    > luhn 4 7 8 3
    False  
-}

luhnDouble :: Int -> Int
luhnDouble x | doubleDigit > 9 = doubleDigit - 9
             | otherwise = doubleDigit 
             where
               doubleDigit = x * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d =
  totalSum `mod` 10 == 0
  where
    digit1 = luhnDouble a
    digit2 = b
    digit3 = luhnDouble c
    digit4 = d
  
    totalSum = digit1 + digit2 + digit3 + digit4
