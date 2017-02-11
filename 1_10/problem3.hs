elemAt' :: [a] -> Int -> a
elemAt' [] n = error  "Index out of bounds"
elemAt' (x:xs) 0 = x
elemAt' (x:xs) n = elemAt' xs (n-1)

elemAt x n = elemAt' x (n-1)

testElemAt = elemAt   [1,2] 1  == 1
          && elemAt [1..20] 20 == 20
          && elemAt "hello" 2  == 'e' 

