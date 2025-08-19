-- Запрос 1: Выбираем только название и цену, выводим первые 10 строк
SELECT Name, UnitPrice FROM tracks LIMIT 10;

-- Запрос 2: Треки дороже $1
SELECT Name, UnitPrice FROM tracks WHERE UnitPrice > 1.0;

-- Запрос 3: Треки с точной ценой $0.99
SELECT Name, UnitPrice FROM tracks WHERE UnitPrice = 0.99 LIMIT 5;

-- Запрос 4: Сортировка по цене (от дешевых к дорогим)
SELECT Name, UnitPrice FROM tracks ORDER BY UnitPrice ASC LIMIT 10;

-- Запрос 5: Сортировка по цене (от дорогих к дешевым)
SELECT Name, UnitPrice FROM tracks ORDER BY UnitPrice DESC LIMIT 10;

-- Запрос 6: Комбинируем WHERE и ORDER BY
SELECT Name, UnitPrice FROM tracks
WHERE UnitPrice > 1.0
ORDER BY UnitPrice DESC;

-- Задание 1: Работа с длительностью треков
-- Найдите треки длительностью больше 300000 миллисекунд (5 минут)
-- Подсказка: используйте колонку Milliseconds
SELECT Name, Milliseconds FROM tracks WHERE Milliseconds > 300000;

-- Задание 2: Сортировка по названию
-- Отсортируйте треки по названию в алфавитном порядке
-- Покажите первые 10
SELECT Name FROM tracks ORDER BY Name ASC LIMIT 10;

-- Задание 3: Диапазон цен
-- Найдите треки с ценой от 0.99 до 1.50
-- Подсказка: используйте AND или BETWEEN
SELECT Name, UnitPrice FROM tracks WHERE UnitPrice BETWEEN 0.99 AND 1.50;

-- Задание 4: Поиск по названию
-- Найдите треки, в названии которых есть слово "Love"
-- Подсказка: используйте LIKE '%Love%'
SELECT Name FROM tracks WHERE Name LIKE '%Love%';


-- Задание 5: Топ самых коротких треков
-- Найдите 5 самых коротких треков
-- Отсортируйте по Milliseconds по возрастанию
SELECT Name, Milliseconds FROM tracks ORDER BY Milliseconds ASC LIMIT 5;

-- Найти 3 самых дорогих трека, которые длятся меньше 4 минут, отсортированные по названию
SELECT Name, UnitPrice FROM tracks WHERE Milliseconds < 240000 ORDER BY UnitPrice DESC, Name ASC LIMIT 3;