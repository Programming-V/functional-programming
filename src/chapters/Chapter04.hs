{-
  Defining Functions
-}


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
