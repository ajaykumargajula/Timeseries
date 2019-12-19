library(forecast)
library(tseries)
data("AirPassengers")
AirPassengers
class(AirPassengers)
plot(AirPassengers)
abline(reg = lm(AirPassengers~time(AirPassengers)))
kpss.test(AirPassengers)## Stationary Check
plot(log(AirPassengers))
plot(diff(log(AirPassengers)))
abline(h=0)
kpss.test(diff(log(AirPassengers)))

plot(airmiles)
kpss.test(airmiles)
plot(diff(sin(airmiles)))
kpss.test(diff(sin(airmiles)))


plot(nhtemp)
kpss.test(nhtemp)
plot(diff(diff(cos(nhtemp))))
