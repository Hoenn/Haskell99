repli :: [a] -> Int -> [a]
repli [] _ = []
repli xs 0 = xs
repli (x:xs) n = rep x (n-1) ++ repli xs n
        where 
            rep x 0 = [x]
            rep x n = x:rep x (n-1)
testRepli :: Bool
testRepli = null (repli [] 3)
         && repli[1,2,3] 3 == [1,1,1,2,2,2,3,3,3]
