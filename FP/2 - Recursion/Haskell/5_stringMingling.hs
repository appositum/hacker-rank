stringMinglingRec :: (String -> String -> String) -> String -> String -> String
stringMinglingRec _ "" _ = ""
stringMinglingRec _ _ "" = ""
stringMinglingRec rec (x:xs) (y:ys) = x : y : (rec xs ys)

stringMingling :: String -> String -> String
stringMingling = stringMinglingRec stringMingling

main :: IO ()
main = do
    s1 <- getLine
    s2 <- getLine

    putStrLn $ stringMingling s1 s2
