{-# LANGUAGE OverloadedStrings #-}

module F1 where

import Data.Char (isAlpha)
import qualified Data.Text as T

-- https://en.wikipedia.org/wiki/Fibonacci_number#Closed-form_expression
-- https://en.wikipedia.org/wiki/Fibonacci_number#Computation_by_rounding
phi = (1 + sqrt 5) / 2

fib :: Integer -> Integer -- Bör vara `fib :: Integral -> Integral`
fib n = round $ phi ^ n / sqrt 5

rovarsprak s = s

karpsravor s = s

medellangd :: T.Text -> Double
medellangd s = (fromIntegral . T.length . T.filter isAlpha) s / (fromIntegral . length . filter (not . T.null) . T.split (not . isAlpha)) s

skyffla s = s
