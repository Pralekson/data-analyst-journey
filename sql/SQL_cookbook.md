# SQL Cookbook - День 3

## Основной синтаксис
SELECT column1, column2 FROM table_name WHERE condition ORDER BY column1;

## Операторы сравнения
* `=` равно
* `>` больше
* `<` меньше
* `>=` больше или равно
* `<=` меньше или равно
* `!=` не равно

## Логические операторы
* `AND` - оба условия должны быть истинными
* `OR` - одно из условий должно быть истинным
* `BETWEEN` - значение в диапазоне

## Поиск по тексту
* `LIKE '%текст%'` - содержит текст
* `LIKE 'текст%'` - начинается с текста

## Мои запросы - День 3

### 1\. Базовые запросы

```sql
-- Посмотреть структуру таблицы
.schema tracks

-- Выбрать все данные (первые 5 записей)
SELECT * FROM tracks LIMIT 5;

-- Выбрать конкретные колонки
SELECT Name, UnitPrice FROM tracks LIMIT 10;
```

### 2\. Фильтрация (WHERE)

```sql
-- Треки дороже $1
SELECT Name, UnitPrice FROM tracks WHERE UnitPrice > 1.0;

-- Треки с точной ценой
SELECT Name, UnitPrice FROM tracks WHERE UnitPrice = 0.99;

-- Длинные треки (больше 5 минут)
SELECT Name, Milliseconds FROM tracks WHERE Milliseconds > 300000;

-- Диапазон цен
SELECT Name, UnitPrice FROM tracks WHERE UnitPrice BETWEEN 0.99 AND 1.50;

-- Поиск по названию
SELECT Name FROM tracks WHERE Name LIKE '%Love%';
```

### 3\. Сортировка (ORDER BY)

```sql
-- По цене (от дешевых к дорогим)
SELECT Name, UnitPrice FROM tracks ORDER BY UnitPrice ASC LIMIT 10;

-- По цене (от дорогих к дешевым)
SELECT Name, UnitPrice FROM tracks ORDER BY UnitPrice DESC LIMIT 10;

-- По названию (алфавитный порядок)
SELECT Name FROM tracks ORDER BY Name ASC LIMIT 10;

-- Самые короткие треки
SELECT Name, Milliseconds FROM tracks ORDER BY Milliseconds ASC LIMIT 5;
```

### 4\. Комбинированные запросы

```sql
-- Дорогие треки, отсортированные по цене
SELECT Name, UnitPrice FROM tracks 
WHERE UnitPrice > 1.0 
ORDER BY UnitPrice DESC;
```

## Что я понял сегодня
* SQL читается слева направо
* WHERE фильтрует данные ДО сортировки
* ORDER BY всегда идет в конце
* LIKE с % позволяет искать по части текста
* BETWEEN включает граничные значения

## Полезные команды SQLite
* `.tables` - показать все таблицы
* `.schema table_name` - показать структуру таблицы
* `.quit` - выйти из SQLite

## Следующие шаги
* Изучить JOIN для связывания таблиц
* Освоить агрегатные функции (COUNT, SUM, AVG)
* Практиковать GROUP BY