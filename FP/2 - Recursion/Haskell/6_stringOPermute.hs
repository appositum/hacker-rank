stringPermute :: String -> String
stringPermute [] = []
stringPermute [x] = [x]
stringPermute (x:y:ys) = y:x:(stringPermute ys)

testCases :: Int -> IO ()
testCases 0 = return ()
testCases n = do
    str <- getLine :: IO String
    putStrLn $ stringPermute str
    testCases (n-1)

main :: IO ()
main = do
    x <- readLn :: IO Int
    testCases x
