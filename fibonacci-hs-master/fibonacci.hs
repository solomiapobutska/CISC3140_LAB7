module Main where

  fib :: Integer -> Integer
  fib 0 = 1
  fib 1 = 1
  fib n = fib (n-1) + fib (n-2)

  fibonacci :: Integer -> Integer -> String
  fibonacci n fibMax =
    if n < fibMax then
      show (fib n) ++ " " ++ fibonacci (succ n) fibMax
    else
      show (fib n)

  main = print (fibonacci 0 10)
