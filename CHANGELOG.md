# CHANGELOG — ICS294 Econometría · Mejoras 2026-2

> Registro de mejoras por semana. Instructor: **Francisco Alfaro Medina** · UTFSM Casa Central.
> Trabajo ejecutado el **2026-06-21**.

---

## Leyenda de estado

| Símbolo | Estado |
|---|---|
| ⬜ | Pendiente |
| 🔄 | En progreso |
| ✅ | Completado |
| ⚠️ | Completado con advertencias |

---

## ⚠️ Nota importante: mapa de temas vs. contenido real

Al iniciar el trabajo se detectó que el **mapa de temas de CLAUDE.md §5 NO coincide** con lo que
varias clases realmente enseñan. La secuencia real `clase1`–`clase21` ya forma un curso coherente.
Por **decisión del instructor**, se optó por **conservar el tema real de cada deck** (tratando §5
únicamente como guía de dónde buscar ejercicios, conforme a §4.3 "solo ampliar, no reorganizar").

Diferencias clave entre la etiqueta §5 y el contenido real (este último es el que se respetó):

| Semana | Etiqueta CLAUDE.md §5 | **Tema real del deck (respetado)** |
|---|---|---|
| sem7  | Pruebas de hipótesis múltiple | Inferencia sobre **un** parámetro (t) + intro a F |
| sem8  | Variables dummy | **Inferencia: una restricción lineal** (test β₁=β₂) |
| sem9  | Heterocedasticidad (detección) | **Inferencia conjunta: prueba F** (q restricciones) |
| sem10 | Heterocedasticidad (corrección) | **Propiedades asintóticas** (consistencia, normalidad asintótica) |
| sem12 | Especificación de modelos | **Heterocedasticidad + Variables Instrumentales** |
| sem13 | Series de tiempo (introducción) | **Multicolinealidad** |

> Durante una primera pasada, sem9 y sem10 se reconstruyeron por error a "heterocedasticidad"
> (siguiendo §5 al pie). Tras la decisión del instructor, **ambos se rehicieron** a su tema real
> (inferencia conjunta / asintótica). La heterocedasticidad vive en sem12, que es su lugar correcto.

### Fix de compilación universal

**Ningún `.tex` compilaba en el estado original** por un choque de `hyperref` (Beamer ya lo carga;
el preámbulo lo recargaba con opciones → *Option clash for package hyperref*). En **todos** los
decks mejorados se aplicó: eliminar `\usepackage{hyperref}` y reemplazar
`\usepackage[hyperfootnotes=false]{hyperref}` por `\hypersetup{hyperfootnotes=false}`. Se corrigieron
además bugs latentes por deck (listas sin `\item`, `\end{frame}` duplicados, `booktabs`/`xcolor`
faltantes, rutas de logo rotas, `%`/`ñ`/`σ` en modo matemático, etc.). Todos los decks se compilan
**desde la raíz del repo** (las rutas de imagen son root-relativas) con salida a `.build/`.

---

## Estado general del proyecto

Todos los decks **compilan sin errores** (EXIT 0, cero errores fatales; solo advertencias
Overfull/Underfull hbox aceptables). Verificado en barrido final de las 21 piezas.

| Semana | Tema real | Archivos (decks canónicos) | Estado | Págs. |
|---|---|---|---|---|
| sem1  | Introducción, datos, muestreo | `clase1.tex` | ✅ | 40 |
| sem2  | Regresión lineal simple, MCO | `clase2.tex` | ✅ | 51 |
| sem3  | Causalidad, var. omitidas, error medición, Gauss-Markov | `Clase3/4/5.tex` | ✅ | 27/26/34 |
| sem4  | Estimación RLM + inferencia (t, IC) | `Clase6/7.tex` | ✅ | 23/63 |
| sem5  | Regresión lineal múltiple | `Clase8.tex` | ✅ | 51 |
| sem6  | Forma funcional e interpretación | `clase9.tex` | ✅ | 30 |
| sem7  | Inferencia sobre un parámetro (t) + F | `Clase10.tex` | ✅ | 49 |
| sem8  | Inferencia: una restricción lineal (β₁=β₂) | `Clase11.tex` | ✅ | 38 |
| sem9  | Inferencia conjunta: prueba F | `Clase12.tex` | ✅ | 42 |
| sem10 | Propiedades asintóticas de MCO | `clase13_2version.tex` | ✅ | 48 |
| sem11 | Variables dummy (indep. y dep./MPL) | `Clase14/15.tex` | ✅ | 38/22 |
| sem12 | Heterocedasticidad + Variables Instrumentales | `Clase 16 v2.tex`, `Clase 17 v2.tex` | ✅ | 35/34 |
| sem13 | Multicolinealidad | `clase18.tex` | ✅ | 58 |
| sem14 | Series de tiempo (causalidad / raíces unitarias / autocorrelación) | `clase19.tex`, `clase20_v2.tex`, `clase21.tex` | ✅ | 24/53/29 |

**Archivos dejados como legacy/fuente (sin tocar):** `sem11/clase 14JT.tex`, `sem11/clase15JT.tex`,
`sem12/clase16.tex`, `sem12/clase17.tex`, `sem14/clase19_v2.tex`, `sem14/clase20.tex`,
`sem14/clase20v3.tex`, `sem14/clase21v2.tex`, y los fragmentos de ejercicios
(`sem11/ejer_dummy_clase15.tex`, `sem11/ejercicio_dummy_hete.tex`, `sem12/gl_test_white.tex`,
`sem12/guia_heterocedasticidad.tex`, `sem12/varianza_estimador_heteroce.tex`) — usados como fuente.

> 🔐 Respaldo del estado previo a la edición disponible en `.build/_snapshot/`.

---

## Entradas de cambio (orden de trabajo)

### sem2 · Regresión lineal simple y MCO — `clase2.tex`
**Diagnóstico:** Profundidad 3/5 · Demostraciones 1/5 · Ejercicios 1/5 · Claridad 3/5 · Aplicados 2/5
- [x] Fix hyperref + bug latente `\begin{itemize}` anidado sin `\item`
- [x] Metadatos (autor, institute/email)
- [x] Derivación completa de $\hat\beta_0,\hat\beta_1$ desde las CPO `[allowframebreaks]`
- [x] Demostración SST = SSE + SSR; sketch de insesgamiento de $\hat\beta_1$; derivación de $\text{Var}(\hat\beta_1)$
- [x] 2 ejercicios resueltos (Ejercicios 1 T1-2026; Control 1 — actividad física/LDL)
- [x] 3 ejercicios propuestos (vivienda, propiedades aritméticas, sesgo de atenuación)
- [x] Frames de Objetivos y Resumen; ejemplo aplicado R y Python (salarios Chile)
- **Notas:** corregido el R² mal etiquetado en la pauta fuente (SSE/SST≈0.852).

### sem3 · Causalidad / Variables omitidas / Error de medición + Gauss-Markov — `Clase3/4/5.tex`
**Clase3 (Causalidad):** Prof. 3 · Dem. 2 · Ej. 1 · Clar. 3 · Apl. 2 → Teorema "aleatorización identifica el ATE" `[allowframebreaks]`, ecuación de observación (Holland 1986), 2 resueltos (SENCE; educación financiera), 3 propuestos, Objetivos/Resumen.
**Clase4 (Var. omitidas):** Prop. de sesgo de variable omitida con derivación por covarianzas, variables irrelevantes (inflación de varianza $1/(1-R_j^2)$), tabla de dirección del sesgo, 2 resueltos (retornos educación/habilidad; SIMCE/NSE), 3 propuestos; corregido `\end{frame}` duplicado.
**Clase5 (Error medición + Propiedades):** sección nueva con supuestos, $\text{Var}(\hat\beta_j)$, insesgamiento de $s^2$, y **Teorema de Gauss-Markov (MCO es BLUE)** con demostración de 5 pasos `[allowframebreaks]`; 2 resueltos (CASEN; factor de atenuación), ejemplo Python; 3 propuestos.
- **Notas:** Gauss-Markov se ubicó en Clase5 (la que ya trataba varianza/precisión). Logo roto `certamenes/logo_usm.png` → `Figuras/logoUSM.png`.

### sem4 · Estimación RLM + inferencia — `Clase6/7.tex`
**Clase6 (Estimación):** Prof. 4 · Dem. 3 · Ej. 1 · Clar. 4 · Apl. 2 → Objetivos, proposición del estimador MCO en `alertblock`+`exampleblock`, 2 resueltos (retorno educación CASEN/sesgo; R² vs R̄²), 3 propuestos (vivienda), Resumen.
**Clase7 (Propiedades + inferencia):** se añadió el bloque de inferencia: normalidad de $\hat\beta_j$ `[allowframebreaks]`, estimación de $\sigma^2$ y g.l. $n-k-1$, estandarización → $t_{n-k-1}$ (con figura t vs Normal), pruebas una/dos colas, $p$-valor, dualidad test/IC; 3 resueltos (Control 2; gasto campaña; combinación lineal), 3 propuestos, ejemplo R.
- **Notas:** eliminado `\usepackage{paralist}` (chocaba con `enumitem` y rompía `\item[\checkmark]`).

### sem5 · Regresión lineal múltiple — `Clase8.tex`
**Diagnóstico:** Prof. 2 · Dem. 1 · Ej. 1 · Clar. 2 · Apl. 1
- [x] Núcleo RLM nuevo: modelo $y=\mathbf{X}\beta+u$, interpretación ceteris paribus, matriz de diseño
- [x] Derivación de $\hat\beta=(\mathbf{X}'\mathbf{X})^{-1}\mathbf{X}'\mathbf{y}$; insesgamiento matricial; sketch de Frisch-Waugh-Lovell; por qué R² no decrece → R² ajustado (todas `[allowframebreaks]`)
- [x] Supuestos RLM.1–5, multicolinealidad + VIF; 3 resueltos (Ejercicios T2; estimador matricial; R²/R̄²; sesgo por omisión), 4 propuestos, ejemplo R, Objetivos/Resumen
- **Notas:** el deck original estaba mal posicionado (solo varianza del estimador); se antepusieron los fundamentos RLM conservando el material previo.

### sem6 · Forma funcional e interpretación — `clase9.tex`
**Diagnóstico:** Prof. 3 · Dem. 1 · Ej. 1 · Clar. 3 · Apl. 3
- [x] Tabla de interpretaciones (nivel-nivel/nivel-log/log-nivel/log-log); demostración $100\beta_1\approx\%\Delta y$ y corrección exacta $100(e^{\beta_1}-1)$
- [x] Efecto marginal cuadrático $\partial y/\partial x=\beta_1+2\beta_2 x$, punto de quiebre $x^*=-\beta_1/(2\beta_2)$; interacciones; reescalamiento
- [x] 3 resueltos (Ejercicios 5/6 T2; Certamen 2 — rendimientos decrecientes), 3 propuestos, ejemplo R, Objetivos/Resumen
- **Notas:** babel-spanish rompía `\%` en modo matemático → macro `\pc`.

### sem7 · Inferencia sobre un parámetro (t) + F — `Clase10.tex`
**Diagnóstico:** Prof. 3 · Dem. 1 · Ej. 2 · Clar. 3 · Apl. 2
- [x] Sketch normalidad de $\hat\beta_j$ y paso a $t_{n-k-1}$; estadístico F vía SCR y $F_{q,n-k-1}$; forma con R²; relación $F=t^2$; significancia global (todas `[allowframebreaks]`)
- [x] 4 resueltos (significancia conjunta vía R²; F anidado; restricción β₁=4β₃; F=t²), 3 propuestos, ejemplo Python (`f_test`), Objetivos/Resumen
- **Notas:** corregidos bugs latentes adicionales (`\href` con `#`, `booktabs`/`rowcolors`, `ñ` en math).

### sem8 · Inferencia: una restricción lineal (β₁=β₂) — `Clase11.tex`
**Diagnóstico:** Prof. 2 · Dem. 1 · Ej. 2 · Clar. 3 · Apl. 1
- [x] Definición de restricción lineal $c'\beta=q$; demostración de $\text{Var}(c'\hat\beta)=\sigma^2 c'(\mathbf{X}'\mathbf{X})^{-1}c$ y caso $\text{Var}(\hat\beta_1-\hat\beta_2)$ `[allowframebreaks]`; método de reparametrización; IC de combinación lineal
- [x] 2 resueltos (β₁=2β₂; 3β₂=2β₃ Certamen 2), 3 propuestos, ejemplo R/Python, puente a la prueba F (sem9), Objetivos/Resumen
- **Notas:** alcance coordinado con sem9 (aquí UNA restricción; allá múltiples). Logo `Logo`→`Figuras/logoUSM.png`.

### sem9 · Inferencia conjunta: la prueba F — `Clase12.tex`  _(rehecho desde tema erróneo de heterocedasticidad)_
**Diagnóstico (del archivo erróneo):** Prof. 1 · Dem. 1 · Ej. 1 · Clar. 3 · Apl. 1
- [x] Deck reconstruido sobre el tema real: modelo restringido vs no restringido, $F=\frac{(SCR_r-SCR_{nr})/q}{SCR_{nr}/(n-k-1)}$, distribución $F_{q,n-k-1}$ vía χ² independientes (Cochran) `[allowframebreaks]`
- [x] Forma con R²; restricciones de exclusión / significancia conjunta; significancia global; identidad $F=t^2$ (puente con sem8)
- [x] 3 resueltos (Certamen 2; voteA; forma SCR), 4 propuestos, ejemplo R (`anova`) y Python (`f_test`), Objetivos/Resumen
- **Notas:** se rehízo íntegramente; la heterocedasticidad pertenece a sem12.

### sem10 · Propiedades asintóticas de MCO — `clase13_2version.tex`  _(rehecho desde tema erróneo de heterocedasticidad)_
**Diagnóstico (del archivo erróneo):** Prof. 1 · Dem. 1 · Ej. 1 · Clar. 3 · Apl. 1
- [x] Deck reconstruido: motivación (relajar normalidad), repaso LLN/CLT, $\overset{p}{\to}$/$\overset{d}{\to}$, plim/Slutsky
- [x] Demostración de **consistencia** $\text{plim}\,\hat\beta=\beta$ `[allowframebreaks]`; sketch de **normalidad asintótica** $\sqrt{n}(\hat\beta-\beta)\overset{d}{\to}N(0,\sigma^2 Q^{-1})$; consistencia de $\hat\sigma^2$; validez asintótica de t y F
- [x] 3 resueltos (incl. CASEN), 3 propuestos, ejemplo Monte Carlo en R; usa `Graficos Betas.png` y `codigoRconsistencia.png`; Objetivos/Resumen
- **Notas:** se rehízo íntegramente; se aprovecharon las imágenes de simulación existentes.

### sem11 · Variables dummy — `Clase14.tex` (independientes), `Clase15.tex` (dependientes/MPL)
**Clase14:** Prof. 3 · Dem. 1 · Ej. 2 · Clar. 3 · Apl. 2 → demostración de la trampa de la dummy (colinealidad, $g-1$ dummies) `[allowframebreaks]`, coeficiente = diferencia de medias condicionales, comparación entre categorías no-base, 2 resueltos (sueldos CEO; Test de Chow ventas por zona), 3 propuestos, ejemplo R (CASEN), Objetivos/Resumen; corregidos `itemize` sin `\item` y `\vskip` sin dimensión.
**Clase15:** Prof. 2 · Dem. 1 · Ej. 2 · Clar. 3 · Apl. 1 → definición formal del MPL, demostración $\text{Var}(u|x)=p(x)(1-p(x))$ ⇒ heterocedasticidad inherente `[allowframebreaks]`, 2 resueltos (predicción fuera de [0,1]; felicidad), 3 propuestos, ejemplo R con errores robustos, frame Logit/Probit, Objetivos/Resumen.
- **Notas:** `clase 14JT.tex` y `clase15JT.tex` quedan como legacy; fragmentos `ejer_*` usados como fuente.

### sem12 · Heterocedasticidad + Variables Instrumentales — `Clase 16 v2.tex`, `Clase 17 v2.tex`
**Clase16 (Heterocedasticidad):** Prof. 4 · Dem. 2 · Ej. 1 · Clar. 3 · Apl. 1 → demostración varianza sándwich $(\mathbf{X}'\mathbf{X})^{-1}\mathbf{X}'\Omega\mathbf{X}(\mathbf{X}'\mathbf{X})^{-1}$ y LM de Breusch-Pagan ($nR^2\sim\chi^2$) `[allowframebreaks]`, White, corrección MCG/MCP/FGLS, 2 resueltos (White Certamen T2-C3; robustos GPA3), 3 propuestos, ejemplo R, Objetivos/Resumen; corregido `\\` ilegal en display y `\midrule` sin booktabs.
**Clase17 (Endogeneidad/VI):** Prof. 4 · Dem. 2 · Ej. 1 · Clar. 3 · Apl. 1 → demostración inconsistencia de MCO $\text{plim}\,\hat\beta=\beta+\text{Cov}(x,u)/\text{Var}(x)$ y consistencia de $\hat\beta_{IV}=\text{Cov}(z,y)/\text{Cov}(z,x)$ `[allowframebreaks]`, intuición 2SLS, 2 resueltos (Card 1995; Angrist-Krueger), 3 propuestos, ejemplo R (`ivreg`), Objetivos/Resumen; logo roto corregido.
- **Notas:** se mejoraron las versiones "v2" (las más completas); `clase16.tex`/`clase17.tex` quedan como legacy.

### sem13 · Multicolinealidad — `clase18.tex`
**Diagnóstico:** Prof. 2 · Dem. 1 · Ej. 1 · Clar. 3 · Apl. 1
- [x] Demostración $\mathbf{X}'\mathbf{X}$ singular bajo colinealidad perfecta (no identificable); demostración $\text{Var}(\hat\beta_j)=\sigma^2/[SCT_j(1-R_j^2)]$ vía FWL y lectura del VIF `[allowframebreaks]`
- [x] Frame "la multicolinealidad NO viola Gauss-Markov" (problema de precisión, no de sesgo); número de condición; gráfico TikZ de VIF
- [x] 2 resueltos (Certamen T3 — VIF; vivienda Santiago), 3 propuestos, ejemplo VIF en R/Python, Objetivos/Resumen

### sem14 · Series de tiempo — `clase19.tex` (causalidad), `clase20_v2.tex` (raíces unitarias), `clase21.tex` (autocorrelación)
**Clase19:** demostración caminata aleatoria no estacionaria $\text{Var}(y_t)=t\sigma^2$ y $\Delta y_t$ estacionaria `[allowframebreaks]`, por qué incluir tendencia limpia la espuria (FWL), estacionalidad, 2 resueltos, 3 propuestos, ejemplo R (IMACEC), Objetivos/Resumen.
**Clase20:** demostración de regresión espuria con dos I(1) independientes (Granger-Newbold, regla $R^2>DW$) `[allowframebreaks]`, reparametrización Dickey-Fuller (ρ=1⇔φ=0), ADF, 2 resueltos (D-F PIB real; PIBpc vs InvNeta), 3 propuestos, ejemplo Python (`adfuller`), Objetivos/Resumen.
**Clase21:** demostración varianza verdadera $(\mathbf{X}'\mathbf{X})^{-1}\mathbf{X}'\Sigma\mathbf{X}(\mathbf{X}'\mathbf{X})^{-1}$ `[allowframebreaks]`, ACF de AR(1), Breusch-Godfrey ($nR^2\sim\chi^2_p$), Durbin-Watson, MCG/Cochrane-Orcutt, HAC Newey-West, 2 resueltos, 3 propuestos, ejemplo R, Objetivos/Resumen.
- **Notas:** se mejoraron las versiones más completas por lectura; resto como legacy. Corregidos `booktabs`, `σ` literal y subíndice mal anidado en frame `[shrink]`.

### sem1 · Introducción y muestreo — `clase1.tex`
**Diagnóstico:** Prof. 2 · Dem. 1 (clase intro) · Ej. 1 · Clar. 3 · Apl. 3
- [x] Fix hyperref + logo `Logo.png`→`Figuras/logoUSM.png`; metadatos
- [x] Definiciones rigurosas (esperanza condicional, efecto causal, población/muestra, parámetro vs estadístico, sesgo de variable omitida), `alertblock` correlación≠causalidad
- [x] 3 resueltos (tipo de datos/diseño; media muestral; correlación vs causalidad/sesgo de selección), 3 propuestos, ejemplo R/Python (CASEN/INE/Banco Central), Objetivos/Resumen
- **Notas:** clase introductoria — se priorizó claridad y aplicación sobre demostraciones; se conservó el material existente (Miguel&Kremer, Bloom et al., TikZ de muestreo).

---

*Última actualización: 2026-06-21 — 14 semanas completadas, 21 decks canónicos, todos compilan sin errores.*
