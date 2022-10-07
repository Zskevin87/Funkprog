module Gyak4 where

-- ZIP FV:  zip [1..10] [22..32] --->  [(1,22), (2,23)...stb]

-- words "Szijja cicca, van gazdád?"  ---> ["Szijja","cicca,","van","gazdád?"]
-- unword: words inverz függvénye
-- concat: 
-- take [1..10] ---> [1,2,3,4,5]
-- drop [1..10] ---> [6,7,8,9,10]

import Prelude hiding(head, tail) -- nem veszi figyelembe a beépített fv-t ==> mi fogjuk definiálni

head :: [a] -> a
head (x:xs) = x

tail :: [a] -> [a]
tail (x:xs) = xs


-- Mire illeszkedik?
--[] --> üres listára
--[x] --> egy elemű listára
--(x:xs) --> első  elemtől a maradékig
--(_:_) --> same
--[X:XS] --> listán belül mégegy lista
--([]:[]) --> [[]]
--(3:[]) --> olyan listára illeszkedik, amelynek egyetlen eleme a 3
--(zs:ab:cicca) --> legalább két elemű listára fog illeszkedni
--((x:y):xs) --> [[1],46]
--([x,_]) --> zárójel felesleges
--[(x,_)] --> lista, amiben van egy két elemű tuple
--((,) x y:_) --> ((x,y):_) --> ((x,y):xs)
--([xs:ys:_]) --> 
