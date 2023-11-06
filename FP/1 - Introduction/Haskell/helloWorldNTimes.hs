helloWorlds n = putStr . unlines $ replicate n "Hello World"

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    helloWorlds n

getMultipleLines :: Int -> IO [String]

getMultipleLines n
    | n <= 0 = return []
    | otherwise = do
        x <- getLine
        xs <- getMultipleLines (n-1)
        let ret = (x:xs)
        return ret
