module Gyak5 where

import Prelude hiding(sum, product, last, init, minimum, maximum, (++), zip, (^))
import Data.Char

list :: Int -> Int -> [Int]
list a b = [a, a+2 ..b] 

-- rekurzió: egy fv saját magát hívja meg
fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact (n-1) -- n=5 --> fact 5 = 5 * fact 4 = 5*4*fact3 ... = 5*4*3*2*1*fact 0  (fact 0 = 1) --> 5*4*3*2*1

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

pow :: Int -> Int -> Int
pow _ 0 = 1
pow a n = a * pow a (n-1)

sum :: Num a => [a] -> a
sum [] = 0
sum (x:xs) = x + sum xs

product :: Num a => [a] -> a
product [] = 1
product (x:xs) = x * product xs

last :: [a] -> a
last [x] = x
last (x:xs) = last xs

init :: [a] -> [a]
init [x] = [] 
init (x:xs) = x : init xs

minimum :: Ord a => [a] -> a --Ord: típusosztály
minimum [x] = x
minimum (x:xs) = min x (minimum xs)

(++) :: [a] -> [a] -> [a]
[] ++ l = l
(x:xs) ++ l = x : (xs ++ l)

(<!>) :: String -> String -> String
a <!> b = a ++ "bchsbvhbWJEN" ++ b

merge :: [a] -> [a] -> [a]
merge [] l2 = l2
merge l1 [] = l1
merge (x:xs) (y:ys) = x : y : merge xs ys

zip :: [a] -> [b] -> [(a,b)]
zip [] _ = []
zip _ [] = []
zip (x:xs) (y:ys) = (x,y) : zip xs ys

upperLower :: Char -> Char
upperLower c
 | isLower c = toUpper c
 | isUpper c = toLower c
 | otherwise = c


(^) :: Num a => a -> Integer -> a
x (^) 0 = 1
x (^) n
 | n == 0 = 1
 | n `mod` 2 == 1 = x * (x (^) (n - 1))
 | even n = sqr (x (^) (n `div` 2))