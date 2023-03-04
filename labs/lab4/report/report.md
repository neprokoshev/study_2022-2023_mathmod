---
## Front matter
title: "Отчёт Лабораторной работы №4"
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

Цель: изучить задачу о модели гармонических колебаний.

# Задание

1. Изучить теоретическую составляющую модели гармонических колебаний.
2. Изучить решение данной задачи.
3. Перевести решение в программу на языке программирования Julia.
4. Перевести решение в программу в программном обеспечении OpenModelica.

# Теоретическое введение

Гармонические колебания — колебания, при которых физическая величина изменяется с течением времени по гармоническому (синусоидальному, косинусоидальному) закону. [@link1]

Модель гармонических колебаний — это модель, описывающая гармонические колебания.

# Выполнение лабораторной работы

1. Переходим к программированию модели на языке программирования Julia. Для этого переходим в директиву лабораторной работы и создаём файл lab41.jl и переходим к его редактированию (Рис. @pic:001).

![Рис. 1. Создание файла lab41.jl](image/pic1.png){#pic:001 width=70%}

2. Пишем код программы lab41.jl (Рис. @pic:002).

![Рис. 2. Код программы lab41.jl](image/pic2.png){#pic:002 width=70%}

3. Получаем модель гармонических колебаний без затуханий и без действий внешней силы (Рис. @pic:003).

![Рис. 3. Результат выполнения программы lab41.jl](image/pic3.png){#pic:003 width=70%}

4. Создаём второй файл — lab42.jl (Рис. @pic:004).

![Рис. 4. Создание файла lab42.jl](image/pic4.png){#pic:004 width=70%}

5. Пишем код программы lab42.jl (Рис. @pic:005).

![Рис. 5. Код программы lab42.jl](image/pic5.png){#pic:005 width=70%}

6. Получаем модель гармонических колебаний с затуханием и без действий внешней силы (Рис. @pic:006).

![Рис. 6. Результат выполнения программы lab42.jl](image/pic6.png){#pic:006 width=70%}

7. Создаём третий файл — lab43.jl (Рис. @pic:007).

![Рис. 7. Создание файла lab43.jl](image/pic7.png){#pic:007 width=70%}

8. Пишем код программы lab43.jl (Рис. @pic:008).

![Рис. 8. Код программы lab43.jl](image/pic8.png){#pic:008 width=70%}

9. Получаем модель гармонических колебаний с затуханием и под действием внешней силы (Рис. @pic:009).

![Рис. 9. Результат выполнения программы lab43.jl](image/pic9.png){#pic:009 width=70%}

10. Переходим к моделированию гармонических колебаний в OpenModelica. Для этого создаём файл lab41.mo и пишем код программы (Рис. @pic:010).

![Рис. 10. Код программы lab41.mo](image/pic10.png){#pic:010 width=70%}

11. Получаем модель гармонических колебаний без затуханий и без действий внешней силы (Рис. @pic:011).

![Рис. 11. Результат выполнения программы lab41.mo](image/pic11.png){#pic:011 width=70%}

12. Cоздаём файл lab42.mo и пишем код программы (Рис. @pic:012).

![Рис. 12. Код программы lab42.mo](image/pic12.png){#pic:012 width=70%}

13. Получаем модель гармонических колебаний с затуханием и без действий внешней силы (Рис. @pic:013).

![Рис. 13. Результат выполнения программы lab42.mo](image/pic13.png){#pic:013 width=70%}

14. Создаём файл lab43.mo и пишем код программы (Рис. @pic:014).

![Рис. 14. Код программы lab43.mo](image/pic14.png){#pic:014 width=70%}

15. Получаем модель гармонических колебаний с затуханием и под действием внешней силы (Рис. @pic:015).

![Рис. 15. Результат выполнения программы lab43.mo](image/pic15.png){#pic:015 width=70%}

# Выводы

В ходе данной лабораторной работы мы изучили модель гармонических колебаний и программирование данной задачи на языке программирования Julia и в программном обеспечении OpenModelica.

# Список литературы{.unnumbered}

::: {#refs}
:::
