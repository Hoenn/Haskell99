split' :: [a] -> Int -> ([a], [a])
split' xs n = ((take' xs n), (drop' xs n))
    where
        take' (y:ys) m | m == 1 = [y] 
                       | otherwise = y:(take' ys (m-1))

        drop' (z:zs) o | o == 1 = zs
                       | otherwise = drop' zs (o-1)
