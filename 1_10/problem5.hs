myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

testMyReverse = myReverse [1,2,3] == [3,2,1]
            &&  myReverse "hello" == "olleh"
            &&  myReverse      "" == []
