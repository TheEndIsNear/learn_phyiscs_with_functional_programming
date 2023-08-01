type Time = Double
type Position = Double
type TimeInterval = Double
type Velocity = Double
type Acceleration = Double

type PositionFunction = Time -> Position
type VelocityFunction = Time -> Velocity
type Derivative = (Double -> Double) -> Double -> Double

averageVelocity :: Time -> Time -> PositionFunction -> Velocity
averageVelocity t0 t1 x = (x t1 - x t0) / (t1 - t0)

averageVelocity2 :: Time -> TimeInterval -> PositionFunction -> Velocity
averageVelocity2 t dt x = (x (t + dt/2) - x (t - dt/2)) / dt

derivative :: Double -> Derivative
derivative dt x t = (x (t+dt/2) - x (t -dt/2)) / dt

carPosition :: Time -> Position
carPosition t = cos t

carVelocity :: Time -> Velocity
carVelocity = derivative 0.0001 carPosition

carVelocityAnalytic :: Time -> Velocity
carVelocityAnalytic t = -sin t

velFromPos :: Double             -- dt
           -> (Time -> Position) -- position function
           -> (Time -> Velocity) -- velocity function
velFromPos = derivative

accelFromVel :: Double            -- dt
             -> (Time -> Velocity) -- velocity function
             -> (Time -> Acceleration) -- acceleration function
accelFromVel = derivative

positionCV :: Position -> Velocity -> Time -> Position
positionCV x0 v0 t = v0 * t + x0

velocityCA :: Velocity -> Acceleration -> Time -> Velocity
velocityCA v0 a0 t = a0*t+ v0

positionCA :: Position -> Velocity -> Acceleration
           -> Time -> Position
positionCA x0 v0 a0 t = a0*t**2/2+v0*t+x0
