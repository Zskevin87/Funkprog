module Zarthelyi1 where

-- 1. x nincs definiálva számként (Num)

-- 2. Megvan adva, milyen típusú egy változó: valami :: Num a -> ...

--3.

scalar :: (Int, Int, Int) -> (Int, Int, Int) -> Int
scalar (a,b,c) (d,e,f) = a*d+b*e+c*f 

--4.

numbers :: [Int]
numbers = (1000>= Int) && (Int `mod` 5 == 3) && (((3* Int) `mod` 7) == 2)

--5.

logicalFunctionA :: Bool -> Bool -> Bool -> Bool
logicalFunctionA a b c = (a || b) && c
