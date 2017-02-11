fullWords :: Integer->[Char]
fullWords x = fullWordsHelper $ show x

fullWordsHelper :: [Char] -> [Char]
fullWordsHelper [] = ""
fullWordsHelper (x:xs) | null xs = convertToWord x
                       | otherwise = convertToWord x ++ "-" ++ fullWordsHelper xs

convertToWord :: Char -> String
convertToWord '0' = "zero"
convertToWord '1' = "one"
convertToWord '2' = "two"
convertToWord '3' = "three"
convertToWord '4' = "four"
convertToWord '5' = "five"
convertToWord '6' = "six"
convertToWord '7' = "seven"
convertToWord '8' = "eight"
convertToWord '9' = "nine"
