f_light_k = 0.0017
f_light_adaptation_k = 1
backgroundintensity = 1
f_light <- function(k,x) {k/(k+x)}
f_light_adaptation <- function(a,k1,x,k2) {k2/(k2+(x-k1*a))}
lightrange <- seq(0,2,0.0001)
plot(lightrange,f_light(f_light_k,lightrange),ylab="f_light output",xlab="light intensity")
points(lightrange,f_light_adaptation(backgroundintensity,f_light_adaptation_k,lightrange,f_light_k),col="red")
