module Main

import Average

showAverage : String -> String
showAverage str = "The average word length is: " ++
                  show (average str) ++ "\n"
main : IO ()
main = repl "Enter a string: "
            showAverage


isPalindrome : Nat -> String -> Bool
isPalindrome x str
                = let tesStr = toLower str in
                  if length tesStr > x then reverse (tesStr) == tesStr
                  else False
