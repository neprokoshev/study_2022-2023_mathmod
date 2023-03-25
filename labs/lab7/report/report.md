---
## Front matter
title: "Отчёт Лабораторной работы №7"
subtitle: "По дисциплине Математическое моделирование"
author: "Прокошев Никита Евгеньевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Цель: изучить задачу о модели эффективности рекламы.

# Задание

1. Изучить теоретическую составляющую модели эффективности рекламы.
2. Изучить решение данной задачи.
3. Перевести решение в программу на языке программирования Julia.
4. Перевести решение в программу в программном обеспечении OpenModelica.

# Выполнение лабораторной работы

1. Переходим к программированию модели на языке программирования Julia. Для этого переходим в директиву лабораторной работы, создаём файл lab71.jl и пишем код программы (Рис. @pic:001).

![Рис. 1. Код программы lab71.jl](image/pic1.png){#pic:001 width=70%}

2. Получаем модель эффективности рекламы (1 случай) (Рис. @pic:002).

![Рис. 2. Результат выполнения программы lab71.jl](image/pic2.png){#pic:002 width=70%}

3. Создаём второй файл — lab72.jl и пишем код программы (Рис. @pic:003).

![Рис. 3. Код программы lab72.jl](image/pic3.png){#pic:003 width=70%}

4. Получаем модель эффективности рекламы (2 случай) (Рис. @pic:004).

![Рис. 4. Результат выполнения программы lab72.jl](image/pic4.png){#pic:004 width=70%}

5. Создаём третий файл — lab73.jl и пишем код программы (Рис. @pic:005).

![Рис. 5. Код программы lab73.jl](image/pic5.png){#pic:005 width=70%}

6. Получаем модель эффективности рекламы (3 случай) (Рис. @pic:006).

![Рис. 6. Результат выполнения программы lab73.jl](image/pic6.png){#pic:006 width=70%}

7. Переходим к моделированию эффективности рекламы в OpenModelica. Для этого создаём файл lab71.mo и пишем код программы (Рис. @pic:007).

![Рис. 7. Код программы lab71.mo](image/pic7.png){#pic:007 width=70%}

8. Получаем модель эффективности рекламы (1 случай) (Рис. @pic:008).

![Рис. 8. Результат выполнения программы lab71.mo](image/pic8.png){#pic:008 width=70%}

9. Cоздаём файл lab72.mo и пишем код программы (Рис. @pic:009).

![Рис. 9. Код программы lab72.mo](image/pic9.png){#pic:009 width=70%}

10. Получаем модель эффективности рекламы (2 случай) (Рис. @pic:010).

![Рис. 10. Результат выполнения программы lab72.mo](image/pic10.png){#pic:010 width=70%}

11. Создаём файл lab73.mo и пишем код программы (Рис. @pic:011).

![Рис. 11. Код программы lab73.mo](image/pic11.png){#pic:011 width=70%}

12. Получаем модель эффективности рекламы (3 случай) (Рис. @pic:012).

![Рис. 12. Результат выполнения программы lab73.mo](image/pic12.png){#pic:012 width=70%}

# Выводы

В ходе данной лабораторной работы мы изучили модель эффективности рекламы и программирование данной задачи на языке программирования Julia и в программном обеспечении OpenModelica.

# Список литературы{.unnumbered}

::: {#refs}
:::
