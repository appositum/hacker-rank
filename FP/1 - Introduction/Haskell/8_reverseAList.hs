rev lst = [lst !! x | x <- [(length lst-1), (length lst-2)..0]]
