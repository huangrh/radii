## ----example1, echo = FALSE, message=FALSE, results="asis"---------------
## see RH110806A for more detail
library("knitr"); library(radii)
# kable(radii::protein_std, format = "markdown")

## Superdex 200 10-300GL 
vt = 21.54
vo = 8.21
protein_std$sigma <- radii::partition_coef(protein_std$ve, vt = vt, vo=vo)
protein_std$erfcinv <- radii::erfcinv(protein_std$sigma)
# 
kable(protein_std, format = "markdown")
protein_std <- na.omit(protein_std)
with(protein_std, plot(erfcinv, radii))
fit <- lm (radii~erfcinv-1, data = protein_std)
summary(fit)
xdat <- seq(min(protein_std$erfcinv), max(protein_std$erfcinv),by = 0.01 )
pred <- predict(fit, newdata = data.frame(erfcinv=xdat))
lines(xdat,pred)


