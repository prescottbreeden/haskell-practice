import Data.List
import System.IO

main :: IO ()
main = do
  putStrLn "What's your name"
  name <- getLine
  putStrLn ("Hello " ++ name)

-- ----------
-- Notes
-- ----------

bob = "bob"
ross = "ross"
name = bob ++ " " ++ ross

-- functions
jane = sqrt 3
dick = max 5 7
fun = max (5 + 2) (sqrt 17 :: Double)

square x = x * x
result = square 5

-- multMax a b x = max(a b) * x
posOrNeg x =
  if x >= 0 
     then "Positive" 
     else "Negative"

res = posOrNeg ( -42 )
res2 = posOrNeg ( 42 )

pow2 n =
  if n == 0
     then 1
     else 2 * (pow2 (n-1))

repeatString str n =
  if n == 0
     then ""
     else str ++ (repeatString str (n-1))

res4 = repeatString "rubber baby buggy bumpers " 5

zerototen = [0..10]
eventList = [2,4..20]
letterlist = ['A','C'..'Z']
infinPow10 = [10,20..]

many2s = take 10 (repeat 2)
many3s = replicate 10 3

cycleList = take 10 (cycle [1,2,3,4,5])

listTimes2 = [x * 2 | x <- [1..10]]
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]

divisBy9N13 = [ x | x <- [1..500], mod x 13 == 0, mod x 9 == 0 ]

pow3List = [3^n | n <- [1..10]]
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]

randTuple = (1, "Random Tuple")

bobSmith = ("Bob Smith",52)

bobsName = fst bobSmith
bobsAge = snd bobSmith


add :: Int -> Int -> Int
add a b = a + b

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (a, b) (a2, b2) = (add a a2, add b b2)

whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "Technically an adult but the world is ending so have fun"
whatAge x = 
  if x > 21
     then "Dang, mang... uz old"
     else "get away kid"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n -1)

fib :: Int -> Int
fib n = 
  if n <= 1
    then 1
    else fib(n-1) + fib(n-2)

isOdd :: Int -> Bool
isOdd n
  | mod n 2 == 0 = False
  | otherwise = True

isEven n = mod n 2 == 0

whatGrade :: Int -> String
whatGrade age
  | (age >= 5) && (age <= 6) = "Kindergarten"
  | (age >= 15) && (age <= 18) = "High School"
  | otherwise = "Go to college"

divisBy :: Int -> Int -> Bool
divisBy by num = mod num by == 0

divisBy3 = divisBy 3
divisBy5 = divisBy 5

fizzBuzz :: Int -> String
fizzBuzz num
  | (divisBy3 num) && (divisBy5 num) = "Fizz Buzz!!"
  | divisBy3 num = "Fizz"
  | divisBy5 num = "Buzz"
  | otherwise = show num

runFB n = map fizzBuzz [1..n]
output = runFB 19
