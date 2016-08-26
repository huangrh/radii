## ------------------------------------------------------------------------
# superdex 200 HiLoad 16/60
vt = mean(c(122.31,122.93))
vo = mean(c(47.26,46.59))
protein_std$sigma <- radii::partition_coef(protein_std$ve)
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

