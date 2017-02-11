--Pack consecutive duplicates of list elements into sublists

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack xs = left:pack right
        where 
              result = span (== head xs) xs
              left = fst result
              right = snd result
              
testPack :: Bool
testPack = pack "aaaabccaadeeee" == ["aaaa", "b", "cc", "aa", "d", "eeee"]
        && pack "123"            == ["1","2","3"]
        
