# Detalle de clases - ICS294 Econometria

Este documento resume el contenido de las clases y materiales asociados del curso **ICS294 - Econometria**. El repositorio contiene material en LaTeX/Beamer, PDFs generados, guias de ejercicios, controles y recursos complementarios para apoyar el desarrollo del curso.

## Vista general del curso

El curso aborda herramientas econometricas para analizar datos reales en economia, administracion y negocios. El eje central es el uso del modelo de regresion lineal, sus supuestos, la interpretacion de estimadores, la inferencia estadistica y algunos problemas habituales en aplicaciones empiricas, como variables omitidas, error de medicion, heterocedasticidad, multicolinealidad, endogeneidad y series de tiempo.

## Material inicial y repasos

### Repaso de Estadistica II

- **Archivo principal:** `clases/sem1/repaso_estadistica.tex`
- **PDF:** `clases/sem1/repaso_estadistica.pdf`
- **Tema:** repaso de estadistica descriptiva e inferencia basica.
- **Proposito:** preparar a los estudiantes para el uso de conceptos estadisticos necesarios en econometria.
- **Contenidos esperados:** medidas descriptivas, distribuciones, intervalos de confianza, pruebas de hipotesis y lectura de resultados estadisticos.

### Ejercicios de repaso de estadistica

- **Archivo principal:** `clases/sem1/ejercicios_repaso_estadistica.tex`
- **PDF:** `clases/sem1/ejercicios_repaso_estadistica.pdf`
- **Tema:** practica aplicada de los contenidos del repaso.
- **Proposito:** reforzar calculos e interpretacion antes de entrar al modelo econometrico.

### Repaso de ayudantia

- **Archivo principal:** `clases/sem1/repaso_ayudantia.tex`
- **PDF:** `clases/sem1/repaso_ayudantia.pdf`
- **Tema:** repaso aplicado de estadistica.
- **Proposito:** complementar la clase teorica con ejercicios guiados.

## Clases

### Clase 1: Introduccion, tipos de datos y muestreo

- **Semana:** 1
- **Archivo principal:** `clases/sem1/clase1.tex`
- **PDF:** `clases/sem1/clase1.pdf`
- **Tema central:** introduccion al curso, tipos de datos y fundamentos de muestreo.
- **Contenidos principales:** rol de la econometria, datos de corte transversal, series de tiempo y panel, conceptos de poblacion y muestra, tipos de muestreo y diferencia entre estadistica descriptiva e inferencial.
- **Objetivo de aprendizaje:** reconocer que tipo de datos se estan usando y por que el diseno muestral importa para interpretar resultados.

### Clase 2: Modelo de Regresion Lineal Simple

- **Semana:** 2
- **Archivo principal:** `clases/sem2/clase2.tex`
- **Guia:** `clases/sem2/guia_ejercicios_clase2.tex`
- **Tema central:** formulacion y estimacion del modelo de regresion lineal simple.
- **Contenidos principales:** regresion poblacional y muestral, interpretacion de intercepto y pendiente, MCO, residuos, propiedades aritmeticas, descomposicion de la variacion y bondad de ajuste mediante `R^2`.
- **Objetivo de aprendizaje:** estimar e interpretar una relacion lineal entre una variable dependiente y una explicativa.

### Clase 3: Causalidad

- **Semana:** 3
- **Archivo principal:** `clases/sem3/Clase3.tex`
- **Guia:** `clases/sem3/guia_ejercicios_clase3.tex`
- **Tema central:** pensamiento causal en econometria.
- **Contenidos principales:** causalidad, contrafactuales, efectos de tratamiento, ATE, ATT, grupos de tratamiento y control, y comparaciones observacionales.
- **Objetivo de aprendizaje:** distinguir correlacion de causalidad y comprender por que la identificacion causal requiere supuestos o disenos adecuados.

### Clase 4: Variables omitidas

- **Semana:** 3
- **Archivo principal:** `clases/sem3/Clase4.tex`
- **Guia:** `clases/sem3/guia_ejercicios_clase4.tex`
- **Tema central:** sesgo por variables omitidas y seleccion.
- **Contenidos principales:** omision de variables relevantes, correlacion entre regresores y error, direccion del sesgo, seleccion muestral y ejemplos aplicados.
- **Objetivo de aprendizaje:** identificar cuando una estimacion MCO puede estar sesgada por factores no observados.

### Clase 5: Error de medicion

- **Semana:** 3
- **Archivo principal:** `clases/sem3/Clase5.tex`
- **Guia:** `clases/sem3/guia_ejercicios_clase5.tex`
- **Tema central:** consecuencias del error de medicion en variables dependientes e independientes.
- **Contenidos principales:** error clasico de medicion, impacto sobre MCO, aumento de varianza, sesgo de atenuacion y ejemplos de interpretacion.
- **Objetivo de aprendizaje:** entender como errores en los datos pueden afectar las estimaciones econometricas.

### Clase 6: Estimacion del Modelo de Regresion Lineal Multiple

- **Semana:** 4
- **Archivo principal:** `clases/sem4/Clase6.tex`
- **Guia:** `clases/sem4/guia_ejercicios_clase6.tex`
- **Tema central:** extension del modelo simple al modelo de regresion multiple.
- **Contenidos principales:** notacion matricial, estimacion MCO multiple, ecuaciones normales, propiedades algebraicas, `R^2` y `R^2` ajustado.
- **Objetivo de aprendizaje:** formular, estimar e interpretar modelos con varias variables explicativas.

### Clase 7: Propiedades estadisticas del estimador MCO

- **Semana:** 4
- **Archivo principal:** `clases/sem4/Clase7.tex`
- **Guia:** `clases/sem4/guia_ejercicios_clase7.tex`
- **Tema central:** supuestos clasicos y propiedades del estimador MCO.
- **Contenidos principales:** linealidad en parametros, muestra aleatoria, no multicolinealidad perfecta, exogeneidad, homocedasticidad, insesgamiento y varianza del estimador.
- **Objetivo de aprendizaje:** conectar los supuestos del modelo con las propiedades estadisticas de MCO.

### Clase 8: Varianza, errores estandar y precision de MCO

- **Semana:** 5
- **Archivo principal:** `clases/sem5/Clase8.tex`
- **Guia:** `clases/sem5/guia_ejercicios_clase8.tex`
- **Tema central:** estimacion de la varianza del error y de los coeficientes.
- **Contenidos principales:** estimador de `sigma^2`, matriz de varianzas-covarianzas, errores estandar, precision de los estimadores y rol de la multicolinealidad.
- **Objetivo de aprendizaje:** interpretar la incertidumbre asociada a los coeficientes estimados.

### Clase 9: Interpretacion, no linealidades e interacciones

- **Semana:** 6
- **Archivo principal:** `clases/sem6/clase9.tex`
- **Guia:** `clases/sem6/guia_ejercicios_clase9.tex`
- **Tema central:** interpretacion economica de modelos con transformaciones.
- **Contenidos principales:** variables en logaritmo, elasticidades, formas cuadraticas, terminos de interaccion, reescalamiento de variables y ejemplos de salarios.
- **Objetivo de aprendizaje:** interpretar correctamente coeficientes cuando el modelo incluye transformaciones o interacciones.

### Clase 10: Inferencia sobre un parametro

- **Semana:** 7
- **Archivo principal:** `clases/sem7/Clase10.tex`
- **Guia:** `clases/sem7/guia_ejercicios_clase10.tex`
- **Tema central:** pruebas de hipotesis individuales.
- **Contenidos principales:** Teorema de Gauss-Markov, normalidad del error, distribucion de los estimadores, estadisticos `t`, errores tipo I y II, tests de una y dos colas, y ejemplos aplicados.
- **Objetivo de aprendizaje:** realizar e interpretar inferencia sobre un coeficiente individual.

### Clase 11: Inferencia sobre un conjunto de parametros

- **Semana:** 8
- **Archivo principal:** `clases/sem8/Clase11.tex`
- **Tema central:** contrastes conjuntos de hipotesis.
- **Contenidos principales:** restricciones lineales, comparacion entre modelos restringidos y no restringidos, uso del estadistico `F` e interpretacion de significancia conjunta.
- **Objetivo de aprendizaje:** evaluar si un grupo de variables aporta explicacion estadisticamente relevante al modelo.

### Clase 12: Inferencia sobre un conjunto de parametros

- **Semana:** 9
- **Archivo principal:** `clases/sem9/Clase12.tex`
- **Tema central:** profundizacion en pruebas conjuntas.
- **Contenidos principales:** suma de residuos cuadrados, modelos restringidos/no restringidos, restricciones multiples y aplicacion del test `F`.
- **Objetivo de aprendizaje:** consolidar el uso de pruebas conjuntas en modelos de regresion multiple.

### Clase 13: Propiedades asintoticas

- **Semana:** 10
- **Archivo principal:** `clases/sem10/clase13_2version.tex`
- **Tema central:** comportamiento de los estimadores en muestras grandes.
- **Contenidos principales:** consistencia, normalidad asintotica, inferencia en muestras grandes y diferencias entre propiedades finitas y asintoticas.
- **Objetivo de aprendizaje:** comprender que ocurre con MCO cuando aumenta el tamano muestral y como se justifica la inferencia asintotica.

### Clase 14: Variables independientes binarias

- **Semana:** 11
- **Archivo principal:** `clases/sem11/clase 14JT.tex`
- **Tema central:** uso de variables dummy como regresores.
- **Contenidos principales:** variables binarias, categorias base, interpretacion de coeficientes, efectos aditivos e interacciones entre dummies.
- **Objetivo de aprendizaje:** incorporar informacion cualitativa en modelos de regresion e interpretar diferencias entre grupos.

### Clase 15: Test de Chow y variables dependientes binarias

- **Semana:** 11
- **Archivo principal:** `clases/sem11/clase15JT.tex`
- **Ejercicios asociados:** `clases/sem11/ejer_dummy_clase15.tex`, `clases/sem11/ejercicio_dummy_hete.tex`
- **Tema central:** cambios estructurales y modelos con variable dependiente binaria.
- **Contenidos principales:** test de Chow, comparacion de parametros entre grupos, modelo de probabilidad lineal, prediccion de probabilidades, limitaciones e heterocedasticidad inherente.
- **Objetivo de aprendizaje:** evaluar diferencias estructurales entre grupos y reconocer las ventajas y problemas del modelo de probabilidad lineal.

### Clase 16: Heterocedasticidad

- **Semana:** 12
- **Archivo principal:** `clases/sem12/Clase 16 v2.tex`
- **Material asociado:** `clases/sem12/guia_heterocedasticidad.tex`, `clases/sem12/gl_test_white.tex`, `clases/sem12/varianza_estimador_heteroce.tex`
- **Tema central:** deteccion y correccion de heterocedasticidad.
- **Contenidos principales:** consecuencias sobre MCO, test de Breusch-Pagan, test de White, errores estandar robustos y matriz de varianza robusta.
- **Objetivo de aprendizaje:** diagnosticar heterocedasticidad y ajustar la inferencia usando errores robustos.

### Clase 17: Endogeneidad y Variables Instrumentales

- **Semana:** 12
- **Archivo principal:** `clases/sem12/Clase 17 v2.tex`
- **Tema central:** endogeneidad y estrategia de variables instrumentales.
- **Contenidos principales:** violacion de exogeneidad, correlacion entre regresores y error, sesgo de MCO, instrumentos, relevancia y exogeneidad instrumental.
- **Objetivo de aprendizaje:** comprender cuando MCO deja de ser confiable y como una variable instrumental puede ayudar a identificar efectos causales.

### Clase 18: Implicancias de la Multicolinealidad

- **Semana:** 13
- **Archivo principal:** `clases/sem13/clase18.tex`
- **Tema central:** multicolinealidad en el modelo clasico de regresion.
- **Contenidos principales:** multicolinealidad perfecta e imperfecta, consecuencias sobre la precision de los estimadores, errores estandar altos y dificultad para detectar efectos individuales.
- **Objetivo de aprendizaje:** diagnosticar e interpretar problemas de multicolinealidad sin confundirlos con sesgo necesariamente.

### Clase 19: Dependencia de los errores en series de tiempo

- **Semana:** 14
- **Archivo principal:** `clases/sem14/clase19_v2.tex`
- **Tema central:** autocorrelacion y dependencia serial.
- **Contenidos principales:** errores correlacionados en el tiempo, consecuencias para la inferencia, errores robustos HAC y correccion de Newey-West.
- **Objetivo de aprendizaje:** reconocer dependencia temporal en los errores y ajustar la inferencia en modelos de series de tiempo.

### Clase 20: Series de tiempo

- **Semana:** 14
- **Archivo principal:** `clases/sem14/clase20v3.tex`
- **Tema central:** introduccion a procesos de series temporales.
- **Contenidos principales:** proceso estocastico, estacionariedad, autocorrelacion, ruido blanco, modelos autorregresivos `AR(p)` y modelos de media movil `MA(q)`.
- **Objetivo de aprendizaje:** manejar conceptos basicos para modelar datos ordenados en el tiempo.

### Clase 21: Series de tiempo

- **Semana:** 14
- **Archivo principal:** `clases/sem14/clase21v2.tex`
- **Tema central:** tendencias, caminatas aleatorias y estacionariedad.
- **Contenidos principales:** random walk, procesos integrados, primeras diferencias, inclusion de tendencias, ejemplo del PIB chileno y test de Dickey-Fuller.
- **Objetivo de aprendizaje:** distinguir series estacionarias de no estacionarias y comprender el riesgo de regresiones espurias.

## Evaluaciones y proyecto

### Control 1

- **Archivo principal:** `controles/control_01.tex`
- **PDF:** `controles/control_01.pdf`
- **Tema:** estadistica, intervalos de confianza, pruebas de diferencias, MCO y lectura aplicada del paper de Miguel y Kremer (2004).

### Trabajo de Econometria

- **Instrucciones:** `trabajo/instrucciones.tex`
- **Rubrica:** `trabajo/rubrica.tex`
- **Tema:** proyecto aplicado en R usando bases del paquete `wooldridge`.
- **Etapas:** avance preliminar, informe final y presentacion oral.
- **Objetivo:** aplicar analisis descriptivo, estimacion de modelos de regresion, testeo de hipotesis, verificacion de supuestos y recomendaciones.

## Recursos complementarios

- **Material bibliografico:** `material/`
- **Repaso de R:** `colab/repaso_r.ipynb`
- **Ejemplos Certamen 1:** `colab/certamen1_ejemplos.ipynb`
- **Ejemplo de proyecto final:** `colab/pf_proyecto.ipynb`
- **Informe y presentacion de ejemplo:** `colab/pf_informe.pdf`, `colab/pf_presentacion.pdf`

