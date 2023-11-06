pascals :: [[Integer]]
pascals = [1] : map (\xs -> zipWith (+) ([0] ++ xs) (xs ++ [0])) pascals

pascal :: Int -> [[Integer]]
pascal n = take n $ pascals

main = do
    n <- readLn
    mapM_ putStrLn $ map unwords $ map (\i -> map show i) $ pascal n
