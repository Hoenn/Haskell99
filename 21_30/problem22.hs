range :: Integer -> Integer -> [Integer]
range x y = [x..y]


testRange :: Bool
testRange = range 4 9 == [4,5,6,7,8,9]
         && range 0 1 == [0,1]
