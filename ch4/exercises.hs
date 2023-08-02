-- Exercise 4.2
derivative ::
     Double -- dt
  -> (Double -> Double) -- x
  -> Double -- t
  -> Double -- dx/dt
derivative dt x t = (x (t + dt / 2) - x (t - dt / 2)) / dt

f :: Double -> Double
f x = x ** 3

f' :: Double -> Double -> Double
f' a = derivative a f

errorVal :: Double -> Double -> Double
errorVal x a = abs (f' a x - 3 * x ** 2)

-- Exercise 4.5
pos1 :: Double -> Double
pos1 t =
  if t < 0
    then 0
    else 5 * t ** 2

velAnalytic :: Double -> Double
velAnalytic t =
  if t < 0
    then 0
    else 10 * t

accelAnalytic :: Double -> Double
accelAnalytic t =
  if t < 0
    then 0
    else 10

velNumeric :: Double -> Double
velNumeric = derivative 0.0001 pos1

accelNumeric :: Double -> Double
accelNumeric = derivative 0.0001 velNumeric
