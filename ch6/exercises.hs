type R = Double

-- Exercise 6.1
yRock :: R -> R -> R
yRock v t = (-0.5) * 9.81 * t ** 2 + v * t  

vRock :: R -> R -> R
vRock v0 t = -9.81 * t + v0

-- Exercise 6.2
-- take 4 :: [a] -> [a]

-- Exercise 6.3
-- map :: (a -> b) -> [a] -> [b]
-- not :: Bool -> Bool
-- map not :: [Bool] -> [Bool]

-- Exercise 6.4
greaterThanOrEq7' :: Int -> Bool
greaterThanOrEq7' = (> 7) 

-- Exercise 6.5

-- Exercise 6.6
moreThan6Elements :: [a] -> Bool
moreThan6Elements xs = (> 6) $ length xs

-- Exercise 6.7

-- Exercise 6.8

-- Exercise 6.9
repeat' :: a -> [a]
repeat' val = iterate (id) val

-- Exercise 6.10
replicate' :: Int -> a -> [a]
replicate' n val = take n $ iterate (id) val

-- Exercise 6.11
-- User iterate to make an infinate list of velocities for a car
-- accelerating at 5m/s^2.
-- iterate (+5) 0
carVelocities :: [Int]
carVelocities = iterate (+5) 0

-- Exercise 6.12
map' :: (a -> b) -> [a] -> [b]
map' f xs = [f x | x <- xs]

-- Exercise 6.13
filter' :: (a -> Bool) -> [a] -> [a]
filter' f xs = [x | x <-xs, f x]

-- Exercise 6.14
average :: [R] -> R
average [] = 0
average xs = (/) (sum xs) (fromIntegral $ length xs)

-- Exercise 6.15

-- Exercise 6.16
