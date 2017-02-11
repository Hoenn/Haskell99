myButLast :: [a] -> a
myButLast [] = error "Empty list does not have a second to last element"
myButLast (x:y:xs)  | null xs        = x
                    | null $ tail xs = y
                    | otherwise      = myButLast (y:xs)

testMyButLast = myButLast [1,2,3] == 2
             && myButLast [1,2]   == 1
             && myButLast [1..20] == 19
             && myButLast ['a'..'z'] == 'y'
