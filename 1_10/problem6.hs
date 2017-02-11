isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome     [] = True
isPalindrome (x:xs) | null xs      = True 
                    | x == last xs = isPalindrome $ init xs
                    | otherwise    =  False


testIsPalindrome = isPalindrome [1,2,3]   == False
                && isPalindrome "racecar" == True
                && isPalindrome [1]       == True
