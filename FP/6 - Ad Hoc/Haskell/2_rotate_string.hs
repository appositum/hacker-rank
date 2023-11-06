import Control.Monad (replicateM)

rotate :: String -> [String]
rotate string = map (f string) [1..length string] where
  f str acc
    | acc == length str = str
    | otherwise = rot str
    where rot = take len . drop acc . cycle
          len = length str

main :: IO ()
main = do
  n <- readLn :: IO Int
  xs <- replicateM n getLine
  mapM_ (putStrLn . unwords) (map rotate xs)
