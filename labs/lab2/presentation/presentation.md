---
## Front matter
lang: ru-RU
title: Презентация Лабораторной работы №2
subtitle: По дисциплине Математическое моделирование
author:
  - Прокошев Н.Е.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 18 февраля 2023

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - '\makeatletter'
 - '\makeatother'
---

# Информация

## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

  * Прокошев Никита Евгеньевич
  * студент НФИбд-02-20
  * Факультет Физико-Математических и Естественных наук
  * Российский университет дружбы народов
  * [1032202460@rudn.ru](mailto:1032202460@rudn.ru)
  * <https://github.com/neprokoshev>

:::
::::::::::::::

# Вводная часть

## Объект и предмет исследования

- Задача о погоне
- Язык программирования Julia
- Программное обеспечение OpenModelica

## Цели и задачи

   Цель: Целью данной лабораторной работы является изучение языка программирования Julia и изучение задачи о погоне а также её решении.



Задачи:
1. Решение задачи о погоне.
2. Изучение основ работы с языком программирования Julia и OpenModelica.
3. Перевод решения задачи о погоне в программу на языке Julia.
4. Перевод решения задачи о погоне в программу на языке OpenModelica.

## Теоретическое введение

   Julia -- это высокоуровневый язык программирования с динамической типизацией, созданный в 2009 году Стефаном Карпински для математических вычислений. Синтаксис языка схож с синтаксисом других математических языков (например, MATLAB и Octave), однако имеет некоторые существенные отличия. Julia написан на Си, C++ и Scheme.



   OpenModelica - свободное открытое программное обеспечение для моделирования, симуляции, оптимизации и анализа сложных динамических систем. Основано на языке Modelica.

Активно развивается Open Source Modelica Consortium, некоммерческой неправительственной организацией. Open Source Modelica Consortium является совместным проектом RISE SICS East AB и Линчёпингского университета.

OpenModelica используется в академической среде и на производстве. В промышленности используется в области оптимизации энергоснабжения, автомобилестроении и водоочистке.

# Выполнение лабораторной работы

1. Переходим в gpaint для решения задачи о погоне "на бумаге" (Рис. 1).
![Рис. 1](image/pic1.png){#fig:001 width=70%} 

2. Расчёт 2 случаев начального положения спирали: k/5.3 и k/3.3 (Рис. 2).
![Рис. 2](image/pic2.png){#fig:001 width=70%}

3. Расчёт радиальной и танценциальной скоростей катера (Рис. 3).
![Рис. 3](image/pic3.png){#fig:001 width=70%}

4. Решение дифференциального уравнения и расчёт формулы для нахождения позиции катера (Рис. 4).
![Рис. 4](image/pic4.png){#fig:001 width=70%}

5. Переход в директорию лабораторной работы (~/work/study/2022-2023/Математическое_Моделирование/mathmod/labs/lab2) и создание в ней нового файла в формате Julia -- lab21.jl (2 - номер лабораторной работы; 1 - номер случая, рассматриваемого в данной программе) (Рис. 5).
![Рис. 5](image/pic5.png){#fig:001 width=70%}

6. Создание программы для решения 1 случая задачи о погоне (Рис. 6), выполнение программы (Рис. 7) и получение результата программы в файле lab21.png (Рис. 8).
![Рис. 6](image/pic6.png){#fig:001 width=70%}
![Рис. 7](image/pic7.png){#fig:001 width=70%}
![Рис. 8](image/pic8.png){#fig:001 width=70%}

7. Создание нового файла в формате Julia -- lab22.jl (2 - номер лабораторной работы; 2 - номер случая, рассматриваемого в данной программе) (Рис. 9), программы для решения 2 случая задачи о погоне (Рис. 10), выполнение программы (Рис. 11) и получение результата программы в файле lab22.png (Рис. 12).
![Рис. 9](image/pic9.png){#fig:001 width=70%}
![Рис. 10](image/pic10.png){#fig:001 width=70%}
![Рис. 11](image/pic11.png){#fig:001 width=70%}
![Рис. 12](image/pic12.png){#fig:001 width=70%}

К сожалению, функционал языка программирования OpenModelica не позволяет реализовать данную задачу, поэтому на OpenModelica данная программа не была решена.

# Выводы

В ходе данной лабораторной работы мы изучили задачу о погоне и языки программирования Julia и OpenModelica а также научились решать данную задачу и писать программы на языках Julia и OpenModelica.

:::
