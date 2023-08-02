-- Exercises from ch2 for learn physics with functional programming
-- Ex 2.1
f :: Double -> Double
f x = sqrt (1 + x)

-- Ex2.2
-- Position of a rock thrown upwards as 30m/s ignoring air resistence
yRock30 :: Double -> Double
yRock30 t = (-0.5) * 9.81 * t ^ 2 + 30 * t

-- Ex2.3
-- Velocity of a rock thrown upwards as 30m/s ignoring air resistence
vRock30 :: Double -> Double
vRock30 t = (-9.81) * t + 30

-- Ex2.4
sinDeg :: Double -> Double
sinDeg angle = sin (angle * (pi / 180))

-- Ex2.5
cubedRoot :: Double -> Double
cubedRoot x = x ** (1 / 3)

g :: Double -> Double
g y = exp y + 8 ** y

h :: Double -> Double
h x = 1 / (sqrt (x - 5) ** 2 + 16)

gamma :: Double -> Double
gamma beta = 1 / sqrt (1 - beta ** 2)

u :: Double -> Double
u x = 1 / (10 + x) + 1 / (10 - x)

l :: Double -> Double
l x = sqrt (x * (x + 1))

e :: Double -> Double
e x = 1 / (cubedRoot . abs) x

e' :: Double -> Double
e' z = 1 / (z ** 2 + 4) ** (3 / 2)

-- Ex2.6
gamma' :: Double -> Double
gamma' = \beta -> 1 / sqrt (1 - beta ** 2)
