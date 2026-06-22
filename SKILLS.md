# SKILLS.md — Convenciones LaTeX Beamer · ICS294 Econometría

> Referencia técnica para Claude Code. Leer **completo** antes de editar cualquier `.tex`.

---

## 1. Preámbulo estándar

Todos los archivos del proyecto usan este preámbulo. **No modificar** las líneas de tema/color/fuentes:

```latex
\documentclass{beamer}
\usefonttheme{professionalfonts}
\usetheme{Szeged}
\useoutertheme{infolines}
\usecolortheme{dolphin}

% Paquetes obligatorios (ya presentes en todos los .tex)
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{multicol}
\usepackage{color}
\usepackage{tikz}
\usetikzlibrary{shapes.callouts, patterns}
\usepackage{multirow}
\usepackage[utf8]{inputenc}
\usepackage{enumerate}
\usepackage[shortlabels]{enumitem}
\usepackage{amsmath,amsthm,amssymb,amsfonts,mathrsfs,latexsym,stmaryrd}
\usepackage{tcolorbox}
\usepackage{color}
\usepackage{amssymb, amsmath, amsbsy}
\usepackage{adjustbox,lipsum}
\usepackage{placeins}
\usepackage{textpos}
\usepackage{wrapfig}
\usepackage[spanish, es-tabla]{babel}
\usepackage{caption}
\usepackage{url}
\usepackage{float}
\usepackage[hyperfootnotes=false]{hyperref}
```

**Metadatos del instructor** (usar exactamente así):
```latex
\title[ICS-294]{Econometría ICS-294\\ \small{Clase N}}
\author{Francisco Alfaro Medina}
\institute[USM]{
  Universidad Técnica Federico Santa María\\
  \medskip
  \textit{francisco.alfaro@usm.cl}
}
\logo{\includegraphics[width=3cm]{Logo.png}}
\date{}
```

---

## 2. Entornos para contenido matemático

### 2.1 Definición

```latex
\begin{block}{Definición: [Nombre]}
  Texto de la definición con notación matemática.
\end{block}
```

### 2.2 Teorema con demostración

```latex
\begin{alertblock}{Teorema: [Nombre]}
  Enunciado del teorema.
\end{alertblock}

\begin{exampleblock}{Demostración}
  Pasos de la demostración...
  \[
    \hat{\beta} = (X'X)^{-1}X'y
  \]
  \hfill $\square$
\end{exampleblock}
```

Para demostraciones largas usar `[allowframebreaks]`:
```latex
\begin{frame}[allowframebreaks]{Demostración: Teorema de Gauss-Markov}
  % contenido largo que ocupa múltiples slides automáticamente
\end{frame}
```

### 2.3 Proposición / Corolario

```latex
\begin{block}{Proposición}
  Enunciado...
\end{block}

\begin{block}{Corolario}
  Consecuencia directa...
\end{block}
```

### 2.4 Resultado importante con tcolorbox

Para destacar fórmulas o resultados clave:

```latex
\begin{tcolorbox}[colback=blue!5!white, colframe=blue!75!black, title=Resultado Principal]
  \[
    \hat{\beta}_1 = \frac{\sum_{i=1}^n (x_i - \bar{x})(y_i - \bar{y})}{\sum_{i=1}^n (x_i - \bar{x})^2}
  \]
\end{tcolorbox}
```

---

## 3. Ejercicios y ejemplos

### 3.1 Ejercicio resuelto

```latex
\begin{frame}{Ejercicio Resuelto N}

\begin{block}{Ejercicio N}
  Enunciado del ejercicio. Datos: $n = 50$, $\bar{x} = 12.3$, ...
\end{block}

\pause

\begin{exampleblock}{Solución}
  \textbf{Paso 1:} ...
  \[
    \hat{\beta}_1 = \frac{...}{...} = 2.14
  \]
  \textbf{Paso 2:} Interpretación: ...
\end{exampleblock}

\end{frame}
```

### 3.2 Ejercicio propuesto

```latex
\begin{frame}{Ejercicio Propuesto N}

\begin{block}{Ejercicio N (Propuesto)}
  Enunciado...
\end{block}

{\small \textit{Indicación: Use el estimador MCO para...}}

\end{frame}
```

### 3.3 Ejemplo aplicado con código R

```latex
\begin{frame}[fragile]{Ejemplo en R}

\begin{exampleblock}{Estimación con datos de salarios (Chile)}
\begin{verbatim}
# Cargar datos
datos <- read.csv("salarios_chile.csv")

# Regresar salario en años de educación
modelo <- lm(log(salario) ~ educacion + experiencia, 
             data = datos)
summary(modelo)
\end{verbatim}
\end{exampleblock}

\end{frame}
```

### 3.4 Ejemplo aplicado con código Python

```latex
\begin{frame}[fragile]{Ejemplo en Python}

\begin{exampleblock}{Estimación con statsmodels}
\begin{verbatim}
import statsmodels.formula.api as smf
import pandas as pd

datos = pd.read_csv("salarios.csv")
modelo = smf.ols("np.log(salario) ~ educacion + exp", 
                 data=datos).fit()
print(modelo.summary())
\end{verbatim}
\end{exampleblock}

\end{frame}
```

---

## 4. Tablas de resultados econométricos

```latex
\begin{frame}{Resultados de la Estimación}

\begin{table}[H]
\centering
\begin{tabular}{lccc}
\hline
\textbf{Variable} & \textbf{Coef.} & \textbf{E.E.} & \textbf{t-stat} \\
\hline
Educación         & 0.082          & 0.012         & 6.83$^{***}$ \\
Experiencia       & 0.041          & 0.008         & 5.12$^{***}$ \\
Constante         & 8.234          & 0.215         & 38.30$^{***}$ \\
\hline
$R^2$             & \multicolumn{3}{c}{0.412} \\
$n$               & \multicolumn{3}{c}{850} \\
\hline
\multicolumn{4}{l}{\scriptsize $^{***}p<0.01$, $^{**}p<0.05$, $^*p<0.1$}
\end{tabular}
\caption{Regresión de log(salario) sobre educación y experiencia}
\end{table}

\end{frame}
```

---

## 5. Frames especiales obligatorios

### 5.1 Frame de objetivos (INICIO de cada clase)

```latex
\begin{frame}{Objetivos de la Clase}

Al finalizar esta clase, el estudiante será capaz de:

\begin{itemize}
    \item[\checkmark] Objetivo 1: ...
    \item[\checkmark] Objetivo 2: ...
    \item[\checkmark] Objetivo 3: ...
\end{itemize}

\end{frame}
```

### 5.2 Frame de resumen (FINAL de cada clase)

```latex
\begin{frame}{Resumen}

\begin{block}{Puntos Clave de la Clase N}
\begin{enumerate}
    \item ...
    \item ...
    \item ...
\end{enumerate}
\end{block}

\begin{alertblock}{Para la próxima clase}
Revisar: ...
\end{alertblock}

\end{frame}
```

---

## 6. Gráficos con TikZ

### 6.1 Distribución normal con zona sombreada

```latex
\begin{frame}{Región de Rechazo}

\begin{figure}
\centering
\begin{tikzpicture}[scale=1.2]
  \draw[->] (-3.5,0) -- (3.5,0) node[right] {$z$};
  \draw[->] (0,-0.1) -- (0,0.5) node[above] {$f(z)$};
  % Curva normal
  \draw[domain=-3:3, smooth, thick, blue]
    plot (\x, {0.4*exp(-0.5*\x*\x)});
  % Zona de rechazo derecha
  \fill[red!30, domain=1.96:3, variable=\x]
    (1.96,0) -- plot (\x, {0.4*exp(-0.5*\x*\x)}) -- (3,0) -- cycle;
  \draw[dashed] (1.96,0) node[below] {$z_{\alpha}$} -- (1.96,0.06);
\end{tikzpicture}
\end{figure}

\end{frame}
```

### 6.2 Diagrama de dispersión (datos ficticios)

```latex
\begin{frame}{Relación Educación-Salario}

\begin{figure}
\centering
\begin{tikzpicture}[scale=0.7]
  \draw[->] (0,0) -- (7,0) node[right] {Educación (años)};
  \draw[->] (0,0) -- (0,5) node[above] {Salario (MM CLP)};
  % Puntos ficticios
  \foreach \x/\y in {1/0.8, 2/1.2, 3/1.8, 4/2.5, 5/3.1, 6/3.9, 5/2.8, 3/2.1, 4/2.2, 6/4.2}
    \fill[blue] (\x,\y) circle (2pt);
  % Línea de regresión
  \draw[red, thick] (1,0.5) -- (6,4.0);
  \node[red] at (5,3.5) {$\hat{y} = \hat{\beta}_0 + \hat{\beta}_1 x$};
\end{tikzpicture}
\end{figure}

\end{frame}
```

---

## 7. Notación matemática estándar del curso

Usar siempre estas convenciones de notación:

| Símbolo | LaTeX | Significado |
|---|---|---|
| $\hat{\beta}_j$ | `\hat{\beta}_j` | Estimador MCO |
| $\beta_j$ | `\beta_j` | Parámetro poblacional |
| $\mathbf{X}$ | `\mathbf{X}` | Matriz de diseño |
| $\mathbf{y}$ | `\mathbf{y}` | Vector de respuesta |
| $\hat{\mathbf{y}}$ | `\hat{\mathbf{y}}` | Vector de valores ajustados |
| $\hat{u}_i$ | `\hat{u}_i` | Residuo MCO |
| $u_i$ | `u_i` | Error poblacional |
| $\mathbb{E}[Y \mid X]$ | `\mathbb{E}[Y \mid X]` | Esperanza condicional |
| $\text{Var}(u_i \mid X)$ | `\text{Var}(u_i \mid X)` | Varianza condicional |
| $\overset{d}{\to}$ | `\overset{d}{\to}` | Convergencia en distribución |
| $\overset{p}{\to}$ | `\overset{p}{\to}` | Convergencia en probabilidad |
| SCT, SCE, SCR | `\text{SCT}`, etc. | Sumas de cuadrados |

---

## 8. Uso de `\pause` y columnas

### 8.1 Revelar contenido progresivamente

```latex
\begin{frame}{Supuestos de Gauss-Markov}
\begin{enumerate}
    \item Linealidad en parámetros: $y = \mathbf{X}\beta + u$
    \pause
    \item Media condicional cero: $\mathbb{E}[u \mid \mathbf{X}] = 0$
    \pause
    \item Sin multicolinealidad perfecta en $\mathbf{X}$
    \pause
    \item Homocedasticidad: $\text{Var}(u_i \mid \mathbf{X}) = \sigma^2$
    \pause
    \item Sin autocorrelación: $\text{Cov}(u_i, u_j \mid \mathbf{X}) = 0$, $i \neq j$
\end{enumerate}
\end{frame}
```

### 8.2 Dos columnas (comparación)

```latex
\begin{frame}{Comparación}
\begin{columns}
  \column{0.48\textwidth}
  \begin{block}{Caso A}
    ...
  \end{block}
  
  \column{0.48\textwidth}
  \begin{alertblock}{Caso B}
    ...
  \end{alertblock}
\end{columns}
\end{frame}
```

---

## 9. Imágenes

Usar siempre rutas relativas a la carpeta `semN/`:

```latex
\begin{figure}
  \centering
  \includegraphics[width=0.6\linewidth]{sem3/imagen.png}
  \caption{Descripción de la figura.}
\end{figure}
```

Para imágenes en `Figuras/`:
```latex
\includegraphics[width=0.5\linewidth]{Figuras/normal.png}
```

---

## 10. Checklist antes de guardar un `.tex` modificado

- [ ] El preámbulo no fue modificado (tema, colores, fuentes intactos).
- [ ] `\author{Francisco Alfaro Medina}` está correcto.
- [ ] Hay un frame de **Objetivos** al inicio.
- [ ] Hay un frame de **Resumen** al final.
- [ ] Todos los teoremas tienen al menos un *sketch* de demostración.
- [ ] Hay al menos 2 ejercicios resueltos nuevos o ampliados.
- [ ] Hay al menos 2 ejercicios propuestos.
- [ ] Se usaron `\begin{block}`, `\begin{alertblock}`, `\begin{exampleblock}` apropiadamente.
- [ ] El archivo compila sin errores con `pdflatex`.
- [ ] Los cambios están registrados en `CHANGELOG.md`.

---

## 11. Advertencias frecuentes

- **No usar** `\usepackage{verbatim}` cuando ya existe `verbatim` implícito; usar `[fragile]` en el frame.
- **No duplicar** paquetes ya declarados en el preámbulo.
- **No usar** `\newpage` en Beamer; separar el contenido en nuevos `\begin{frame}...\end{frame}`.
- **Cuidado con acentos**: el proyecto usa `[utf8]{inputenc}` y `[spanish]{babel}`, por lo que se pueden escribir directamente (á, é, ñ, etc.).
- **Rutas de imagen**: siempre verificar que el archivo existe antes de referenciar.
