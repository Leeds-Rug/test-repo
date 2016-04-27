## Robin
# Create some imaginary data and plot
x = seq(0, 10 * pi, length.out = 1000)
y = sin(x) * exp(-0.1 * x)
z = sin(x - 2) * exp(-0.06 * x)
plot(data.frame(x, y, z))

## Andy
# ... Add your lines here

## Wally
par(ask=T)
xf =c(y,2+y,x/20+0.5)
yf = c(z,z,y/2-2)
plot(xf,yf); polygon(c(1,1.25,1.5),c(-1.5,-0.8,-1.5),density=100)


## Chris H
x <- seq(-10, 10, length= 30)
y <- x
f <- function(x, y) { r <- sqrt(x^2+y^2); 10 * sin(r)/r }
z <- outer(x, y, f)
z[is.na(z)] <- 1
op <- par(bg = "white")
persp(x, y, z, theta = 30, phi = 30, expand = 0.5, col = "green")
