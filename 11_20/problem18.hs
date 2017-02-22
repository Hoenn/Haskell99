slice :: [a] -> Int -> Int -> [a]
slice xs a b = let mid = drop (a-1) xs
                in take (b-(a-1)) mid 
