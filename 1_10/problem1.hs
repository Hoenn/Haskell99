myLast :: [a] -> a
myLast [] = error "Empty list does not have a last element" 
myLast (x:xs) | null xs   = x
              | otherwise = myLast xs
