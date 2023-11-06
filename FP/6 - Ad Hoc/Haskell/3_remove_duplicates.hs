removeDups :: String -> String
removeDups xs = rec xs [] where
  rec "" _ = ""
  rec (x:xs) ys
    | x `elem` ys = rec xs ys
    | otherwise = x : rec xs (x:ys)

main :: IO ()
main = getLine >>= putStrLn . removeDups
