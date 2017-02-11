myLength :: (Num b) => [a] -> b
myLength [] = 0
myLength (x:xs) = 1 + myLength xs


testMyLength = myLength [1..20] == 20
        &&     myLength "hello" == 5
        &&     myLength []      == 0
