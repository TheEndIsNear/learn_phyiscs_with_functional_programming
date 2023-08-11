import Graphics.Gnuplot.Simple

type R = Double

square :: R -> R
square = (** 2)

plot1 :: IO ()
plot1 = plotFunc [] [-3,-2.99..3] square

-- Exercise 7.1
sinFunc :: R -> R
sinFunc = sin
plot2 :: IO ()
plot2 = plotFunc [] [-10,-9.90..10] sinFunc


-- Exercise 7.2
yRock30 :: R -> R
yRock30 t = (-0.5) * 9.81 * t ^ 2 + 30 * t

plot3 :: IO ()
plot3 = plotFunc [] [0,0.01..6] yRock30

-- Exercise 7.3
yRock :: R -> R -> R
yRock v t = (-0.5) * 9.81 * t ** 2 + v * t  

plot4 :: IO ()
plot4 = plotFunc [] [0,0.01..4] $ yRock 20
