import Data.Vect

insert : Ord elem => (x : elem) -> (xsSorted : Vect len elem) -> Vect (S len) elem
insert x [] = [x]
insert x (y :: xs) = case x < y of
                          False => y :: insert x xs
                          True => x :: y :: xs

insSort : Ord elem => Vect n elem -> Vect n elem
insSort [] = []
insSort (x :: xs) = let xsSorted = insSort xs in
                        insert x xsSorted

my_reverse : Vect n elem -> Vect n elem
my_reverse [] = []
my_reverse xs = revAcc [] xs where
  revAcc : (acc : Vect n elem) -> Vect m elem -> Vect n elem -> Vect (m + n) elem
  revAcc acc [] = acc
  revAcc acc (x :: ys) = ?revAcc_rhs_2
