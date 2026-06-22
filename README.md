# ICS294 — Econometría · UTFSM

Material LaTeX/Beamer del curso **ICS294 Econometría**, Universidad Técnica Federico Santa María
(Casa Central). Slides de clase, certámenes, controles, talleres y guías de ejercicios.

- **Instructor:** Francisco Alfaro Medina · `francisco.alfaro@usm.cl`
- **Semestre objetivo:** 2026-2
- **Tema Beamer:** `Szeged` + `dolphin` + `infolines`

---

## Contenido del curso (clases)

El curso se organiza en 14 semanas (`sem1/`–`sem14/`), que cubren las clases `clase1`–`clase21`.
Cada carpeta `semN/` contiene el/los deck(s) Beamer de esa semana.

| Semana | Tema | Deck(s) canónico(s) |
|---|---|---|
| sem1  | Introducción, tipos de datos, muestreo | `clase1.tex` |
| sem2  | Regresión lineal simple y MCO | `clase2.tex` |
| sem3  | Causalidad, variables omitidas, error de medición, Gauss-Markov | `Clase3.tex`, `Clase4.tex`, `Clase5.tex` |
| sem4  | Estimación RLM e inferencia (t, IC) | `Clase6.tex`, `Clase7.tex` |
| sem5  | Regresión lineal múltiple | `Clase8.tex` |
| sem6  | Forma funcional e interpretación | `clase9.tex` |
| sem7  | Inferencia sobre un parámetro (t) + prueba F | `Clase10.tex` |
| sem8  | Inferencia: una restricción lineal (β₁=β₂) | `Clase11.tex` |
| sem9  | Inferencia conjunta: prueba F | `Clase12.tex` |
| sem10 | Propiedades asintóticas de MCO | `clase13_2version.tex` |
| sem11 | Variables dummy (independientes y dependientes / MPL) | `Clase14.tex`, `Clase15.tex` |
| sem12 | Heterocedasticidad + Variables Instrumentales | `Clase 16 v2.tex`, `Clase 17 v2.tex` |
| sem13 | Multicolinealidad | `clase18.tex` |
| sem14 | Series de tiempo: causalidad, raíces unitarias, autocorrelación | `clase19.tex`, `clase20_v2.tex`, `clase21.tex` |

> Cada deck incluye: frame de **Objetivos**, **demostraciones/sketch** de los teoremas centrales,
> **≥2 ejercicios resueltos** paso a paso, **≥2 ejercicios propuestos**, **ejemplo aplicado en R/Python**
> y frame de **Resumen**. Ver el detalle por semana en [`CHANGELOG.md`](CHANGELOG.md).

---

## Estructura del repositorio

```
ics294-latex/
├── sem1/ … sem14/     # Slides de clase (Beamer)
├── certamenes/        # Certámenes con pauta
├── control/           # Controles con pauta
├── Ejercicios/        # Guías y ejercicios por tópico
├── Taller/            # Talleres aplicados
├── Figuras/           # Imágenes compartidas (incluye logoUSM.png)
├── complemetario/     # Material complementario
├── trabajo/           # Instrucciones del trabajo del curso
├── CLAUDE.md          # Directrices del proyecto (para Claude Code)
├── SKILLS.md          # Convenciones LaTeX/Beamer del proyecto
└── CHANGELOG.md       # Registro de mejoras por semana
```

---

## Compilación

> **Importante:** las rutas de imagen de los slides son **relativas a la raíz del repositorio**
> (p.ej. `sem2/images/reg.png`, `Figuras/logoUSM.png`). Por lo tanto, **compila desde la raíz**,
> no desde dentro de la carpeta `semN/`.

```bash
# Compilar un deck (dos pasadas para referencias/índices)
pdflatex -interaction=nonstopmode -output-directory=.build/sem2 sem2/clase2.tex
pdflatex -interaction=nonstopmode -output-directory=.build/sem2 sem2/clase2.tex
```

El PDF queda en `.build/sem2/clase2.pdf`. La carpeta `.build/` está ignorada por git.

**Requisitos:** una distribución TeX completa (TeX Live / MacTeX) con `beamer`, `tcolorbox`,
`tikz`, `amsmath`, `babel` (spanish) y `hyperref`.

> Nota técnica: Beamer ya carga `hyperref` internamente. Para opciones usar `\hypersetup{...}`,
> **no** un segundo `\usepackage[...]{hyperref}` (provoca *Option clash*). Ver [`SKILLS.md`](SKILLS.md).

---

## Convenciones

Las convenciones de notación, entornos (`block`/`alertblock`/`exampleblock`), formato de ejercicios,
gráficos TikZ y metadatos están documentadas en [`SKILLS.md`](SKILLS.md). El flujo de trabajo de
mejora de clases está en [`CLAUDE.md`](CLAUDE.md).

---

## Licencia

Ver [`LICENSE`](LICENSE).
