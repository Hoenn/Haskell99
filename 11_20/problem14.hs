dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x:x:dupli xs

testDupli :: Bool
testDupli = null (dupli [])
         && dupli [1,2,3] == [1,1,2,2,3,3]
