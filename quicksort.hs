module Quicksort where

-- Quicksort på två rader
-- Främst för egen framtida referens, ingår inte i uppgiften

quicksort [] = []
quicksort (p : xs) = quicksort (filter (< p) xs) ++ [p] ++ quicksort (filter (>= p) xs)