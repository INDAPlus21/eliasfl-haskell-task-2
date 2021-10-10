module F1 where

import Data.Char (isAlpha)
import Data.List (partition, (\\))
import Data.String (fromString)
import qualified Data.Text as T

-- https://en.wikipedia.org/wiki/Fibonacci_number#Closed-form_expression
-- https://en.wikipedia.org/wiki/Fibonacci_number#Computation_by_rounding
fib :: Integer -> Integer
fib n | n < 75 = round $ phi ^ n / sq5
  where
    sq5 = sqrt 5
    phi = (1 + sq5) / 2
fib n = fibs !! fromInteger n
  where
    fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

consonant :: Char -> Bool
consonant = (`notElem` ("aeiouyåäö" :: String))

rovarsprak :: String -> String
rovarsprak = concatMap (\x -> if consonant x then [x, 'o', x] else [x])

karpsravor :: String -> String
karpsravor (a : b : c : xs) = if rovar then a : karpsravor xs else a : karpsravor (b : c : xs)
  where
    rovar = a == c && b == 'o' && consonant a && consonant c
karpsravor a = a

medellangd :: String -> Double
medellangd s = letters ns / words' ns
  where
    ns = fromString s
    letters = fromIntegral . T.length . T.filter isAlpha
    words' = fromIntegral . length . filter (not . T.null) . T.split (not . isAlpha)

skyffla :: [a] -> [a]
skyffla a | length a <= 2 = a
skyffla l = other l ++ skyffla (other (tail l))
  where
    other :: [a] -> [a]
    other (a : b : xs) = a : other xs
    other a = a
