-- Exercise 5.1
-- numbers :: [Double]
-- numbers = [-2.0,-1.2,-0.4,0.4,1.2,2.0]
numbers :: [Double]
numbers = [-2.0,-1.2 .. 2.0]

-- Exercise 5.2
sndItem0 :: [a] -> a
sndItem0 = undefined

-- Exercise 5.3
-- what is the type of the following expression
-- length "Hello, world!"
-- String -> Int
-- Exercise 5.4
-- Exercise 5.5
-- Exercise 5.6
-- Exercise 5.7
-- Exercise 5.8
-- Exercise 5.9
-- Exercise 5.10
-- a. ["hello", 42] - not a valid list, as it has mixed types
-- b. ['h',"ello"] - not a valid list, type Char with [Char]
-- c. ['a', 'b', 'c'] :: [Char]/String
-- d. length ['w','h','o'] :: Int
-- e. length "hello" :: Int
-- f. reverse :: [a] -> [a]
-- Exercise 5.11
-- Exercise 5.12
ueler = sum [1 / n ** 2 | n <- [1 .. 100]]

-- Exercise 5.13
fact :: Integer -> Integer
fact n = product [1 .. n]

-- Exercise 5.14
expList :: Double -> [Double]
expList x = [(1 + x / n) ** n | n <- [1 ..]]

-- Exercise 5.15
expSeries :: Double -> [Double]
expSeries x = [(x ** m) / (product [1 .. m]) | m <- [1 ..]]
