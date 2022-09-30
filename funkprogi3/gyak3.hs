module Gyak3 where


default (Int, Float)
cica = 5

kutya = 4.8

division :: Integer -> Float
division x = fromIntegral (x) / 5

--toEnum, fromEnum Fontos!!

--LISTÁK: 
-- [] - jelölés
-- homogének: csak egyfajta típust tartalmazhat!
-- sok elemük lehet
-- lehet velük műveleteket végezni

bools :: [Bool] -- a Bool egy függvény!
bools = [True, False, False]

empty1 :: [Bool]
empty1 = []

empty2 :: [Float]
empty2 = []

addElem :: a -> [a] -> [a] -- listához adás
addElem x l = x : l -- lista elejére fűzés

concatList :: [a] -> [a] -> [a] -- listaösszefűzés (konkatizáció)
concatList l1 l2 = l1 ++ l2
-- concatList = (++)

indexing :: [a] -> Int -> a -- lista indexelés
indexing l n = l !! n -- 0. index az első eleme a listának

--length [1,2,3,4,5] -> kiszámolja a lista hosszát (5)

szoveg :: String
--szoveg = ['a','l','m','a'] helyett
szoveg = "alma"

-- lista elemeinek felsorolása: [1,2,3,4,5] helyett [1..5]          karaktereknél: ['a'..'z']     páratlan számok: [1, 99..100]            végtelen lista: [1..]


--Logikai függvények:
-- and [True, False, True] = False
-- or [True, False, True] = True
-- sum [1..5] = 15
-- product [1..5] = 120 (összeszorozza az elemeket)

--head [1..20]  --> lista első elemét adja vissza                             last [1..20] --> utolsó elemet adja vissza (hosszabb listáknál sokáig tart a végig lépegetés)

--tail [1..20] --> első elem nélküli lista                                    init [1..20] --> utolsó elem nélküli lista

foo :: [Int] -> [Int]
foo [] = [0]
--foo (x:xs) = [89] ++ [x]  -->
--foo (x:y:xs) = [8] ++ xs  -->  MINDIG SPECIÁLISABB ESETEKTŐL KELL HALADNI A NEM SPECIÁLISABB FELÉ! ITT A MÁSODIK SOR SPECIÁLISABB, EZÉRT HELYET KELL CSERÉLNIE AZ ELŐTTE LÉVŐVEL!
foo (x:y:xs) = [8] ++ xs
foo (x:xs) = [89] ++ [x]

bar [x:xs] = xs

-- [x^2 | x <- [1..10], even x]  --> olyan lista generálása, amely négyzetszámokat generál a lista páros számaiból 
-- [(x,y) | x <- [0..3], y <- [x..6], even y]


powersOf2 :: [Int]
powersOf2 = [2^x | x <- [1..10]]