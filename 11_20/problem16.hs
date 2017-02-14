dropEveryNth' :: [a] -> Int -> Int -> [a]
dropEveryNth'     [] _ _ = []
dropEveryNth' (x:xs) i n |    i `mod` n == 0 = dropEveryNth' xs (i+1) n 
                         |         otherwise = x:dropEveryNth' xs (i+1) n

dropEveryNth :: [a] -> Int -> [a]
dropEveryNth xs 0 = xs
dropEveryNth xs n = dropEveryNth' xs 1 n

testDropEveryNth :: Bool
testDropEveryNth = dropEveryNth [1,2,3,4,5,6] 2 == [1,3,5]
                && dropEveryNth  "abcdefghik" 3 == "abdeghk"
                && dropEveryNth [1,2,3,4,5,6] 0 == [1,2,3,4,5,6]
