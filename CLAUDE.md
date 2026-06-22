# CLAUDE.md — ICS294 Econometría · UTFSM Casa Central 2026-2

> Proyecto de mejora intensiva de clases de Econometría para el semestre 2026-2.
> Instructor: **Francisco Alfaro Medina** · Universidad Técnica Federico Santa María
> Audiencia: Estudiantes de ingeniería, licenciatura y programas técnico-universitarios.

---

## 1. Contexto del proyecto

Este repositorio contiene los materiales LaTeX del curso **ICS294 Econometría**, organizado en carpetas `sem1/` a `sem14/`, más recursos auxiliares en `certamenes/`, `control/`, `Ejercicios/` y `Taller/`.

El objetivo de esta sesión de trabajo es **mejorar las clases semana a semana** produciendo slides Beamer más completos, rigurosos y pedagógicamente equilibrados, listos para ser usados en Casa Central en el semestre 2026-2.

---

## 2. Estructura del repositorio

```
ics294-latex/
├── sem1/ … sem14/          # Slides de clase (OBJETIVO PRINCIPAL)
├── certamenes/              # Certámenes con pauta — fuente de ejercicios
├── control/                 # Controles con pauta — fuente de ejercicios
├── Ejercicios/              # Guías y ejercicios organizados por tópico
├── Taller/                  # Talleres — fuente de ejercicios aplicados
├── Figuras/                 # Imágenes compartidas
├── trabajo/                 # Instrucciones del trabajo del curso
├── complemetario/           # Material complementario de clases
├── CLAUDE.md                # Este archivo
├── SKILLS.md                # Convenciones LaTeX del proyecto
└── CHANGELOG.md             # Registro de cambios por semana
```

Cada carpeta `semN/` contiene uno o más archivos `.tex` (slides Beamer) y sus recursos gráficos.

---

## 3. Flujo de trabajo estándar

Antes de modificar cualquier `.tex`, sigue **siempre** este orden:

1. **Lee** `SKILLS.md` completo (convenciones LaTeX del proyecto).
2. **Lee** el `.tex` original de la semana objetivo.
3. **Revisa** los archivos de `certamenes/`, `control/` y `Ejercicios/` relacionados con el tema de esa semana para identificar ejercicios reutilizables.
4. **Aplica** las mejoras según las directrices de la Sección 4.
5. **Registra** los cambios en `CHANGELOG.md` con el formato de la Sección 6.
6. **Compila** con `pdflatex` para verificar que no hay errores.

---

## 4. Directrices de mejora por semana

### 4.1 Diagnóstico previo

Antes de editar, evalúa el `.tex` actual en estas dimensiones (escala 1–5):

| Dimensión | Descripción |
|---|---|
| Profundidad teórica | ¿Los conceptos están bien fundamentados? |
| Demostraciones | ¿Los teoremas/proposiciones tienen prueba o al menos sketch? |
| Ejercicios | ¿Hay suficientes ejercicios resueltos y propuestos? |
| Claridad expositiva | ¿Los slides son autocontenidos y claros? |
| Ejemplos aplicados | ¿Hay ejemplos con datos reales o aplicaciones? |

Registra el diagnóstico en `CHANGELOG.md` antes de editar.

### 4.2 Mejoras requeridas (en orden de prioridad)

**A. Demostraciones y rigor teórico**

- Agregar demostraciones completas o *sketch* de los teoremas y proposiciones principales.
- Usar el entorno `tcolorbox` o `block` de Beamer para distinguir visualmente: `Definición`, `Teorema`, `Proposición`, `Corolario`, `Demostración`, `Ejemplo`.
- No suprimir pasos algebraicos importantes: el estudiante debe poder reproducirlos.
- Si la demostración es larga, usar frames `[allowframebreaks]`.

**B. Ejercicios resueltos**

- Añadir al menos 2–3 ejercicios resueltos por clase, con solución paso a paso.
- Fuentes preferidas (en orden): `certamenes/`, `control/`, `Ejercicios/`, `Taller/`. Adaptar o sintetizar si es necesario.
- Si no hay material suficiente en el repositorio, **inventar ejercicios realistas** con datos ficticios plausibles (salarios, PIB, retornos educativos, precios de vivienda en Chile).
- Etiquetar cada ejercicio con `\begin{block}{Ejercicio N}`.

**C. Ejercicios propuestos**

- Añadir 2–4 ejercicios propuestos (sin solución en el slide, puede ir en notas del presentador o archivo separado).
- Variar el nivel: al menos uno rutinario, uno intermedio y uno desafiante.

**D. Ejemplos aplicados**

- Preferir ejemplos con contexto chileno o latinoamericano cuando sea posible (CASEN, Banco Central, INE, retornos educativos en Chile, mercado laboral).
- Incluir código R o Python breve en entorno `verbatim` o `lstlisting` cuando ilustre un procedimiento estadístico central.

**E. Claridad y estructura**

- Asegurarse de que cada frame tiene un título claro.
- Usar `\pause` estratégicamente para controlar el ritmo de exposición.
- Agregar un frame de **Resumen** al final de cada clase con los 3–5 puntos clave.
- Agregar un frame de **Objetivos** al inicio de cada clase.

### 4.3 Lo que NO debes cambiar

- El estilo Beamer (`Szeged`, `dolphin`, `infolines`): mantenerlo tal cual.
- El logo USM y la línea de `\author`, `\institute`.
- La estructura general de secciones de la clase original (solo ampliar, no reorganizar drásticamente).
- Las rutas de imágenes existentes.

---

## 5. Mapa temático (sem1–sem14)

Usa esta tabla como guía para buscar material relacionado en `certamenes/` y `Ejercicios/`:

| Semana | Tema principal | Carpetas de ejercicios relacionadas |
|---|---|---|
| sem1 | Introducción a econometría, tipos de datos, muestreo | `Ejercicios/T1-2026/`, `certamenes/Certamenes T1 - 2026/` |
| sem2 | Regresión lineal simple, MCO | `sem2/`, `Ejercicios/T1-2026/` |
| sem3 | Propiedades de MCO, Gauss-Markov | `Ejercicios/T1-2026/`, `certamenes/certamenesDiurno25-2/` |
| sem4 | Inferencia en regresión simple | `certamenes/Certamenes T1 - 2026/`, `control/T1-2026/` |
| sem5 | Regresión lineal múltiple | `Ejercicios/T2/`, `certamenes/Certamenes T2/` |
| sem6 | Interpretación y forma funcional | `Ejercicios/T2/`, `Taller/2026-01/` |
| sem7 | Pruebas de hipótesis múltiple | `certamenes/Certamenes T2/`, `control/` |
| sem8 | Variables artificiales (dummies) | `sem11/`, `Ejercicios/T2/` |
| sem9 | Heterocedasticidad (detección) | `sem12/`, `certamenes/Certamenes T2/` |
| sem10 | Heterocedasticidad (corrección) | `sem12/`, `Ejercicios/ejercicios_inferencia/` |
| sem11 | Variables dummy avanzadas, interacciones | `sem11/`, `certamenes/Certamenes T3/` |
| sem12 | Especificación de modelos | `sem12/`, `Ejercicios/T3-2025/` |
| sem13 | Introducción a series de tiempo | `sem14/`, `certamenes/Certamenes T3/` |
| sem14 | Modelos de series de tiempo, MCO con rezagos | `certamenes/Certamenes T3/`, `certamenes/certamenesDiurno25-2/` |

---

## 6. Registro en CHANGELOG.md

Cada vez que modifiques una semana, agrega una entrada al `CHANGELOG.md`:

```markdown
## sem{N} — {fecha ISO}

**Estado anterior:** [descripción breve del .tex original]

**Diagnóstico:**
- Profundidad teórica: X/5
- Demostraciones: X/5
- Ejercicios: X/5
- Claridad: X/5
- Ejemplos aplicados: X/5

**Cambios realizados:**
- [ ] Agregada demostración de [Teorema/Proposición]
- [ ] Ejercicio resuelto N (fuente: certamenes/...)
- [ ] Ejercicios propuestos (N total)
- [ ] Frame de Objetivos agregado
- [ ] Frame de Resumen agregado
- [ ] Ejemplo aplicado con [contexto]

**Notas:**
[observaciones adicionales, problemas encontrados, sugerencias para el instructor]
```

---

## 7. Compilación y verificación

```bash
# Compilar una semana específica
cd semN/
pdflatex claseN.tex
pdflatex claseN.tex  # segunda pasada para referencias

# Verificar que no hay errores graves
grep -i "error" claseN.log | head -20
```

Si hay errores de compilación, corregirlos antes de pasar a la siguiente semana.

---

## 8. Orden de trabajo recomendado

Procesar las semanas en este orden (de mayor a menor impacto pedagógico estimado):

1. sem2 (fundamentos MCO — base de todo el curso)
2. sem3 (propiedades — Gauss-Markov es el corazón teórico)
3. sem5 (regresión múltiple — salto conceptual importante)
4. sem7 (inferencia múltiple — más abstracto, necesita más ejercicios)
5. sem9 y sem10 (heterocedasticidad — clases gemelas, mejorar juntas)
6. sem4 (inferencia simple)
7. sem6 (forma funcional)
8. sem8 (dummies)
9. sem11 (dummies avanzadas)
10. sem12 (especificación)
11. sem13 (series de tiempo)
12. sem14 (series de tiempo II)
13. sem1 (introducción — revisión menor)
14. sem3 complementario si queda tiempo

---

## 9. Información del instructor

- **Nombre:** Francisco Alfaro Medina
- **Cargo:** Jefe de Análisis y Modelación Avanzada, DTD — UTFSM
- **Semestre objetivo:** 2026-2, Casa Central
- **Stack preferido:** Python (pandas, statsmodels, sklearn), R (lm, ggplot2)
- **Estilo pedagógico:** Riguroso pero aplicado, con énfasis en causalidad e interpretación económica
