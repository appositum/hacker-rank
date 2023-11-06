-- Enter your code here. Read input from STDIN. Print output to STDOUT

-- f arr = [abs a | a <- arr]
f arr = [if a < 0 then (a*(-1)) else a | a <- arr] -- without abs

-- This section handles the Input/Output and can be used as it is. Do not modify it.
main = do
    inputdata <- getContents
    mapM_ putStrLn $ map show $ f $ map (read :: String -> Int) $ lines inputdata
