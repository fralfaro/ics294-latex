# Genera las figuras de apoyo para c3-demo.tex (solo R base).
# Uso: Rscript figuras_c3_demo.R   (ejecutar desde la carpeta controles/)

set.seed(294)
dir.create("FIGURAS", showWarnings = FALSE)
n <- 200

# ---------------------------------------------------------------
# Figura 1: series simuladas + ACF (ruido blanco, AR(1), MA(2))
# Replica el estilo de FIGURAS/series_ACF.png del certamen 3
# ---------------------------------------------------------------
eps <- rnorm(n + 2)

x_wn  <- eps[3:(n + 2)]                                   # ruido blanco
x_ar  <- as.numeric(arima.sim(list(ar = -0.8), n = n))    # AR(1), phi = -0.8
x_ma  <- as.numeric(arima.sim(list(ma = c(0.7, 0.6)), n = n))  # MA(2)

# Orden aleatorio para que no sea evidente (cambiar si se desea)
casos <- list(A = x_wn, B = x_ar, C = x_ma)

png("FIGURAS/series_ACF.png", width = 1400, height = 1500, res = 160)
par(mfrow = c(3, 2), mar = c(4, 4, 3, 1))
for (nm in names(casos)) {
  x <- casos[[nm]]
  plot(x, type = "l", xlab = "t", ylab = expression(X[t]),
       main = paste("Caso", nm, "- serie"))
  abline(h = 0, lty = 2, col = "grey50")
  acf(x, lag.max = 30, main = paste("Caso", nm, "- ACF"))
}
dev.off()

# ---------------------------------------------------------------
# Figura 2: ACF de las series de la pregunta corta 5
# (AR(1) con phi = 0.6, MA(1) con theta = 0.5 y ruido blanco, T = 200)
# La banda azul de acf() es +-1.96/sqrt(T) = +-0.139
# ---------------------------------------------------------------
sA <- as.numeric(arima.sim(list(ar = 0.6), n = n))
sB <- as.numeric(arima.sim(list(ma = 0.5), n = n))
sC <- rnorm(n)

png("FIGURAS/acf_pregunta5.png", width = 1800, height = 600, res = 160)
par(mfrow = c(1, 3), mar = c(4, 4, 3, 1))
acf(sA, lag.max = 10, main = "Serie A")
acf(sB, lag.max = 10, main = "Serie B")
acf(sC, lag.max = 10, main = "Serie C")
dev.off()

# ---------------------------------------------------------------
# Figura 3: serie estacionaria vs. paseo aleatorio (raiz unitaria)
# Apoya el ejercicio 3 (ADF) y la regresion espuria
# ---------------------------------------------------------------
e1 <- rnorm(120); e2 <- rnorm(120)
y_est <- as.numeric(arima.sim(list(ar = 0.5), n = 120))  # estacionaria
y_rw  <- cumsum(e1)                                      # I(1): paseo aleatorio
x_rw  <- cumsum(e2)                                      # otro I(1) independiente

png("FIGURAS/raiz_unitaria.png", width = 1800, height = 1100, res = 160)
par(mfrow = c(2, 2), mar = c(4, 4, 3, 1))
plot(y_est, type = "l", xlab = "t", ylab = "", main = "Estacionaria: AR(1), phi = 0.5")
abline(h = 0, lty = 2, col = "grey50")
plot(y_rw, type = "l", xlab = "t", ylab = "", main = "Paseo aleatorio (I(1))")
plot(diff(y_rw), type = "l", xlab = "t", ylab = "", main = "Primera diferencia del paseo")
abline(h = 0, lty = 2, col = "grey50")
plot(x_rw, y_rw, pch = 16, cex = 0.6, xlab = "x_t (I(1))", ylab = "y_t (I(1))",
     main = "Regresion espuria")
abline(lm(y_rw ~ x_rw), col = "red", lwd = 2)
dev.off()

# Resumen numerico de la regresion espuria (R^2 alto, DW bajo)
m <- lm(y_rw ~ x_rw)
dw <- sum(diff(resid(m))^2) / sum(resid(m)^2)
cat("R2 =", round(summary(m)$r.squared, 3),
    "| t(beta1) =", round(summary(m)$coefficients[2, 3], 2),
    "| DW =", round(dw, 3), "\n")

# Test ADF a mano (con constante y un rezago), equivalente a la tabla del ejercicio 3
dy   <- diff(y_rw)
ylag <- y_rw[-length(y_rw)]
d    <- data.frame(dy = dy[-1], ylag = ylag[-1], dylag = dy[-length(dy)])
adf  <- summary(lm(dy ~ ylag + dylag, data = d))
cat("tau (y_{t-1}) =", round(adf$coefficients["ylag", 3], 3),
    " (comparar con -2.89 al 5%)\n")
# Alternativa con paquete:  tseries::adf.test(y_rw)  /  urca::ur.df(y_rw, "drift", lags = 1)

# ---------------------------------------------------------------
# VIF a mano (Ejercicio 2): VIF_j = 1 / (1 - R2_j)
# ---------------------------------------------------------------
sup  <- rnorm(100, 100, 20)
dorm <- 0.03 * sup + rnorm(100, 0, 0.25)     # muy correlacionada con superficie
r2   <- summary(lm(sup ~ dorm))$r.squared
cat("VIF(superficie) =", round(1 / (1 - r2), 2), "\n")
# Con paquete: car::vif(lm(precio ~ sup + dorm + banos + antig))
