-- Exercise 3.2
f :: Double -> Double
f x =
  if x <= 0
    then 0
    else x

e :: Double -> Double
e r =
  if r <= 1
    then r
    else (1 / r ** 2)

-- Exercise 3.3
isXorY :: Char -> Bool
isXorY 'X' = True
isXorY 'Y' = True
isXorY _ = False

-- Exercise 3.4
bagFee :: Bool -> Int
bagFee val =
  if val
    then 100
    else 0

bagFee' :: Bool -> Int
bagFee' True = 100
bagFee' False = 0

-- Exercise 3.5
greaterThan50 :: Integer -> Bool
greaterThan50 x =
  if x > 50
    then True
    else False

-- Exercise 3.6
amazingCurve :: Int -> Int
amazingCurve x =
  if x >= 50
    then 100
    else x * 2

-- Exercise 3.8
circleRadius :: Double
circleRadius = 3.5

cot :: Double -> Double
cot x = 1 / tan x

fe :: Double -> Double
fe epsilon = epsilon * tan (epsilon * pi / 2)

fo :: Double -> Double
fo epsilon = -epsilon * cot (epsilon * pi / 2)

g :: Double -> Double -> Double
g nu epsilon = sqrt (nu ** 2 - epsilon ** 2)
