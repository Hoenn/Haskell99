--This solution assumes zero based indexing, differing from the given problem.
--This solution also allows integers > the length of the list, which
--always insert at the last position
insertAt :: Integer -> [a] -> a -> [a]
insertAt n xs z | n == 0    = z:xs 
                | null xs   = [z]
                | otherwise = head xs : insertAt (n-1) (tail xs) z

testInsertAt :: Bool
testInsertAt = insertAt 0 [1,2,3,4] 9 == [9,1,2,3,4]
            && insertAt 1 [1,2,3,4] 9 == [1,9,2,3,4]
            && insertAt 8 [1,2,3,4] 9 == [1,2,3,4,9]
