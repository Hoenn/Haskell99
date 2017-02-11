
pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack xs = left:pack right
        where 
              result = span (== head xs) xs
              left = fst result
              right = snd result

encode :: (Eq a) => [a] -> [(Int,a)]
encode xs = zip (map length $ packed) (map head $ packed)
        where
            packed = pack xs

testEncode :: Bool
testEncode = encode      "aaaabccaadeeee" == [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
          && encode [1,2,2,3,3,3,4,4,4,4] == [(1,1), (2,2), (3,3), (4,4)]


