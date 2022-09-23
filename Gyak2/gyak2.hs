module Gyak2 where

    idInt :: Int -> Int
    idInt a=a

    idBool :: Bool -> Bool
    idBool a = a

    id' :: a -> a
    id' b = b

    add' :: Num a => a -> a -> a
    add' a b = a + b

    not' :: Bool -> Bool
    not' True = False
    not' False = True

    and' :: Bool -> Bool -> Bool
    and' True True = True
    and' _ _ = False

    or' :: Bool -> Bool -> Bool
    or' False False = False
    or' _ _ = True

    -- Tuple: különböző változók listája

    tuple1 :: (Int, Int)
    tuple1 = (4, 2)

    tuple2 :: (Int, Char)
    tuple2 = (8, 'k')

    tuple3 :: (Int, Char, Bool)
    tuple3 = (8, 'k', False)

    triplicate :: a -> (a, a, a)
    triplicate x = (x, x, x) -- vagy x = (,,) x x x

    swap :: (a, b) -> (b, a)
    swap x = (snd x, fst x)

    swap' :: (a, b) -> (b, a)
    swap' (x, y) = (y, x)

    doubleTheTuple :: (a, b) -> ((a, b), (a, b))
    doubleTheTuple x = (x, x)

    addTwo :: Num a => a -> a
    addTwo x = x + 2 -- vagy addTwo = (2+) -> ez a 2+ fv!!

    add'' :: Num a => a -> a -> a
    add'' = (+)

    cica :: Int -> Int -> Int
    cica x y = x ^ 2 + y 

    kutya :: Int -> Int -> Int
    -- kutya x y = cica (3 * x + y) (3 * x + y)  --->>>
    kutya x y = cica z z
        where
            z :: Int
            z = 3 * x + y