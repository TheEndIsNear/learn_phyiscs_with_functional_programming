type R = Double
type Velocity = R
type Time = R
type Acceleration = R
type Position = R

type Integration
  = (R -> R) -- function
  -> R -- lower limit
  -> R -- upper limit
  -> R -- result

type AntiDerivative 
  = R  -- initial value
  -> (R -> R) -- function
  -> (R -> R) -- antiderivative of function

springForces5500 :: R -> R
springForces5500 x = -5500 * x

springForce :: R -> R -> R
springForce k x = -k * x

integral :: R -> Integration
integral dt f a b =
  sum [f t * dt | t <- [a + dt / 2,a + 3 * dt / 2 .. b - dt / 2]]

antiDerivative :: R -> AntiDerivative
antiDerivative dt f0 f t = f0 + integral dt f 0 t

velFromAcc :: R                      -- dt 
           -> Velocity               -- initial velocity
           -> (Time -> Acceleration) -- acceleration function
           -> (Time -> Velocity)     -- velocity fucntion
velFromAcc dt v0 a t = antiDerivative dt v0 a t

posFromVel :: R                  -- dt
           -> Position           -- initial position
           -> (Time -> Velocity) -- velocity function
           -> (Time -> Position) -- position function
posFromVel = antiDerivative 

integralN :: Int -> Integration
integralN n f a b
  = let dt = (b - a) / fromIntegral n
  in integral dt f a b
