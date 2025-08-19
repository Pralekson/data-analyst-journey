# Детальный 6-месячный план Data Analyst (новичок) - macOS версия

## Snowflake + Tableau + Python + Google Data Analytics

### 🎯 Оптимизировано для macOS с фокусом на Tableau

### Общая структура

* **Формат**: 24 недели, 5 дней/неделю по 3 часа (15 часов/неделя)

* **Ежедневная структура**: 30-45 мин теория + 90-120 мин практика + 15-30 мин документирование

* **Выходные**: отдых или добор пропущенного

* **ИИ-политика**: генерируем черновики, но всегда проверяем вручную, документируем допущения

---

## ДЕНЬ 0 (Подготовка)

### Установка ПО и настройка окружения

### Установка для macOS:

1. **Python 3.9+**

```bash
# Проверить версию
python3 --version

# Установить через Homebrew (рекомендуется)
brew install python
```

1. **VS Code** - скачать с [code.visualstudio.com](http://code.visualstudio.com) (macOS версия)

* Расширения: Python, SQL Tools, GitLens, Jupyter

1. **Git**

```bash
# Проверить установку
git --version

# Установить если нужно
brew install git

# Настроить
git config --global user.name "Ваше Имя"
git config --global user.email "ваш@email.com"
```

1. **Tableau Public** (бесплатно) - основной инструмент BI

* Скачать с [public.tableau.com](http://public.tableau.com) (macOS версия)

1. **Snowflake аккаунт** - зарегистрироваться на [snowflake.com](http://snowflake.com) (30-дневный триал)

2. **GitHub аккаунт** - создать репозиторий "data-analyst-journey"

3. **Дополнительно**: Power BI Service (веб-версия) - изучим на 13-й неделе

### Структура репозитория

```
data-analyst-journey/
├── README.md
├── week-01/
├── week-02/
├── ...
├── projects/
│   ├── mini-project-1/
│   ├── mini-project-2/
│   └── portfolio/
├── sql-cookbook/
├── notebooks/
└── docs/
```

---

## НЕДЕЛЯ 1 — Введение, GDA старт, база SQL и Python

### День 1: Постановка целей и настройка окружения

**Теория (45 мин):**

* Обзор профессии Data Analyst: роли, задачи, карьерные пути

* Аналитический цикл: вопрос → данные → анализ → инсайты → действия

* Начать Google Data Analytics курс на Coursera (модуль 1)

**Практика (120 мин):**

1. Создать структуру репозитория GitHub

2. Написать личные цели обучения (SMART-формат)

3. Составить еженедельное расписание с учетом личного графика

4. Протестировать все установленные инструменты

**Документирование (30 мин):**

* Создать `README.md` с целями и планом

* Зафиксировать версии всех инструментов

* Создать `learning-log.md` для ежедневных заметок

**Критерии выполнения:**

* \[ \] Репозиторий создан и структурирован

* \[ \] Все инструменты установлены и работают

* \[ \] Цели сформулированы и записаны

* \[ \] Начат курс GDA

### День 2: Типы данных и работа с таблицами

**Теория (40 мин):**

* GDA: сбор, хранение и типы данных

* Структурированные vs неструктурированные данные

* Качество данных: полнота, точность, согласованность

**Практика (110 мин):**

1. **Google Sheets/Excel практика:**

* Загрузить датасет "Sample Superstore" или аналогичный

* Сортировка по разным столбцам

* Фильтрация по категориям и датам

* Простые формулы: SUM, AVERAGE, COUNT, IF

* Сводные таблицы (базовые)

1. **Анализ качества данных:**

* Найти пропуски, дубликаты

* Проверить типы данных

* Выявить выбросы

**Документирование (30 мин):**

* Создать мини-отчет "Типы данных и их оценка"

* Включить примеры каждого типа данных

* Описать найденные проблемы качества

**Критерии выполнения:**

* \[ \] Освоены базовые функции Excel/Sheets

* \[ \] Создана сводная таблица

* \[ \] Написан отчет о типах данных

* \[ \] Выявлены проблемы качества в датасете

### День 3: SQL основы - SELECT, FROM, WHERE

**Теория (35 мин):**

* Что такое SQL и реляционные БД

* Структура SQL-запроса

* Операторы сравнения и логические операторы

**Практика (115 мин):**

1. **Использовать онлайн SQL-песочницу** (SQLiteOnline, DB Fiddle)

2. **Загрузить простой датасет** (например, Northwind или Chinook)

3. **10 базовых запросов:**

```sql
-- 1. Выбрать все записи
SELECT * FROM customers;

-- 2. Выбрать конкретные столбцы
SELECT customer_id, company_name FROM customers;

-- 3. Фильтрация по стране
SELECT * FROM customers WHERE country = 'USA';

-- 4. Фильтрация по числовому значению
SELECT * FROM products WHERE unit_price > 20;

-- 5. Сортировка по возрастанию
SELECT * FROM products ORDER BY unit_price;

-- 6. Сортировка по убыванию
SELECT * FROM products ORDER BY unit_price DESC;

-- 7. Комбинированные условия
SELECT * FROM products WHERE unit_price > 10 AND category_id = 1;

-- 8. Использование OR
SELECT * FROM customers WHERE country = 'USA' OR country = 'Canada';

-- 9. Поиск по шаблону
SELECT * FROM customers WHERE company_name LIKE '%Restaurant%';

-- 10. Ограничение количества записей
SELECT * FROM products ORDER BY unit_price DESC LIMIT 5;
```

**Документирование (30 мин):**

* Создать `SQL-cookbook.md`

* Добавить все 10 запросов с комментариями

* Описать логику каждого запроса

**Критерии выполнения:**

* \[ \] Выполнены все 10 запросов

* \[ \] Понятна логика WHERE, ORDER BY, LIMIT

* \[ \] Создан SQL-cookbook

* \[ \] Запросы работают без ошибок

### День 4: SQL - DISTINCT, алиасы, CASE WHEN

**Теория (35 мин):**

* DISTINCT для уникальных значений

* Алиасы для столбцов и таблиц

* Условная логика с CASE WHEN

**Практика (115 мин):**

1. **8-10 новых задач:**

```sql
-- 1. Уникальные страны
SELECT DISTINCT country FROM customers;

-- 2. Алиасы для столбцов
SELECT company_name AS "Company Name", 
       contact_name AS "Contact" 
FROM customers;

-- 3. Алиасы для таблиц
SELECT c.company_name, c.country 
FROM customers AS c 
WHERE c.country = 'Germany';

-- 4. Простой CASE WHEN
SELECT product_name,
       unit_price,
       CASE 
         WHEN unit_price < 10 THEN 'Cheap'
         WHEN unit_price < 50 THEN 'Medium'
         ELSE 'Expensive'
       END AS price_category
FROM products;

-- 5. CASE с несколькими условиями
SELECT customer_id,
       country,
       CASE 
         WHEN country IN ('USA', 'Canada') THEN 'North America'
         WHEN country IN ('Germany', 'France', 'UK') THEN 'Europe'
         ELSE 'Other'
       END AS region
FROM customers;

-- 6. Подсчет с условием
SELECT country,
       COUNT(*) AS total_customers,
       COUNT(CASE WHEN city = 'London' THEN 1 END) AS london_customers
FROM customers
GROUP BY country;

-- 7. Математические операции
SELECT product_name,
       unit_price,
       units_in_stock,
       unit_price * units_in_stock AS total_value
FROM products;

-- 8. Работа с NULL
SELECT customer_id,
       company_name,
       CASE 
         WHEN region IS NULL THEN 'No Region'
         ELSE region
       END AS region_clean
FROM customers;
```

1. **Типичные ошибки и их исправление:**

* Забытые кавычки в строках

* Неправильный синтаксис CASE

* Проблемы с NULL значениями

**Документирование (30 мин):**

* Добавить новые запросы в SQL-cookbook

* Создать раздел "Типичные ошибки"

* Записать способы проверки результатов

**Критерии выполнения:**

* \[ \] Выполнены все 8 задач

* \[ \] Понятна логика DISTINCT, алиасов, CASE

* \[ \] Обновлен SQL-cookbook

* \[ \] Зафиксированы типичные ошибки

### День 5: Python основы

**Теория (40 мин):**

* Переменные и типы данных в Python

* Структуры данных: списки, словари, кортежи

* Условия и циклы

* Работа с файлами

**Практика (110 мин):**

1. **Создать Jupyter notebook `python_basics.ipynb`**

2. **Базовые операции:**

```python
# Переменные и типы
name = "Data Analyst"
age = 25
salary = 75000.0
is_employed = True

# Списки
skills = ["SQL", "Python", "Tableau", "Excel"]
numbers = [1, 2, 3, 4, 5]

# Словари
employee = {
    "name": "John Doe",
    "department": "Analytics",
    "salary": 75000,
    "skills": ["SQL", "Python"]
}

# Условия
if salary > 70000:
    print("High salary")
elif salary > 50000:
    print("Medium salary")
else:
    print("Low salary")

# Циклы
for skill in skills:
    print(f"I know {skill}")

# Работа со списками
high_salaries = [s for s in [60000, 80000, 45000, 90000] if s > 70000]
```

1. **Работа с CSV:**

```python
import pandas as pd

# Чтение CSV
df = pd.read_csv('sample_data.csv')

# Базовая информация
print(df.head())
print(df.info())
print(df.describe())

# Простые метрики
total_sales = df['sales'].sum()
avg_price = df['price'].mean()
unique_categories = df['category'].nunique()

print(f"Total sales: {total_sales}")
print(f"Average price: {avg_price:.2f}")
print(f"Unique categories: {unique_categories}")
```

**Документирование (30 мин):**

* Оформить ноутбук с комментариями

* Добавить выводы по каждому разделу

* Создать summary с изученными концепциями

**Критерии выполнения:**

* \[ \] Ноутбук создан и работает

* \[ \] Освоены базовые типы данных

* \[ \] Выполнена работа с CSV

* \[ \] Рассчитаны простые метрики

### Итоги недели 1:

* \[ \] Инструменты установлены и настроены

* \[ \] Начат курс Google Data Analytics

* \[ \] Создано 20+ базовых SQL-запросов

* \[ \] Создан первый Python-ноутбук

* \[ \] Репозиторий структурирован и заполнен

---

## НЕДЕЛЯ 2 — GDA, SQL джойны, Pandas, первый Tableau

### День 1: Бизнес-вопросы и планирование анализа

**Теория (40 мин):**

* GDA: постановка бизнес-вопросов

* SMART-критерии для аналитических задач

* Планирование анализа: данные → методы → визуализация

**Практика (110 мин):**

1. **Выбрать публичный датасет** (например, NYC Taxi, Retail Sales, или из Kaggle)

2. **Сформулировать 5 бизнес-вопросов:**

* Описательный: "Какова общая выручка по месяцам?"

* Сравнительный: "Какой регион показывает лучшие результаты?"

* Трендовый: "Как изменяется количество клиентов?"

* Сегментационный: "Какие группы клиентов наиболее прибыльны?"

* Прогнозный: "Какой ожидается рост в следующем квартале?"

1. **Для каждого вопроса создать план:**

* Необходимые данные

* SQL-запросы (псевдокод)

* Тип визуализации

* Ожидаемые инсайты

**Документирование (30 мин):**

* Создать документ "Business Questions & Analysis Plan"

* Нарисовать схему анализа (можно в [draw.io](http://draw.io))

* Обосновать выбор каждого типа визуализации

**Критерии выполнения:**

* \[ \] Выбран подходящий датасет

* \[ \] Сформулированы 5 SMART-вопросов

* \[ \] Создан план анализа для каждого

* \[ \] Схема анализа визуализирована

### День 2: SQL джойны - INNER и LEFT

**Теория (35 мин):**

* Концепция джойнов и связей между таблицами

* INNER JOIN: только совпадающие записи

* LEFT JOIN: все записи из левой таблицы

* Ключи связывания и их типы

**Практика (115 мин):**

1. **Работа с 2-3 связанными таблицами** (Customers, Orders, Products)

2. **Практические запросы:**

```sql
-- 1. INNER JOIN - клиенты с заказами
SELECT c.company_name, o.order_date, o.order_id
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- 2. LEFT JOIN - все клиенты (включая без заказов)
SELECT c.company_name, 
       COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.company_name;

-- 3. Множественные джойны
SELECT c.company_name,
       o.order_date,
       p.product_name,
       od.quantity,
       od.unit_price
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN products p ON od.product_id = p.product_id;

-- 4. Агрегация с джойнами
SELECT c.country,
       COUNT(DISTINCT c.customer_id) AS customers,
       COUNT(o.order_id) AS total_orders,
       SUM(od.quantity * od.unit_price) AS total_revenue
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.country
ORDER BY total_revenue DESC;
```

1. **Проверка на дубликаты:**

```sql
-- Проверка дубликатов после джойна
SELECT customer_id, COUNT(*) as count
FROM (
    SELECT DISTINCT c.customer_id, o.order_id
    FROM customers c
    INNER JOIN orders o ON c.customer_id = o.customer_id
) subquery
GROUP BY customer_id
HAVING COUNT(*) > 1;
```

**Документирование (30 мин):**

* Добавить паттерны джойнов в SQL-cookbook

* Создать раздел "Проверка качества джойнов"

* Зафиксировать типичные ошибки

**Критерии выполнения:**

* \[ \] Выполнены все запросы с джойнами

* \[ \] Понятна разница между INNER и LEFT JOIN

* \[ \] Проведена проверка на дубликаты

* \[ \] Обновлен SQL-cookbook

### День 3: SQL джойны - RIGHT, FULL, SELF и NULL-логика

**Теория (35 мин):**

* RIGHT JOIN и FULL OUTER JOIN

* SELF JOIN для иерархических данных

* Логика работы с NULL в джойнах

* Производительность разных типов джойнов

**Практика (115 мин):**

1. **Продвинутые джойны:**

```sql
-- 1. RIGHT JOIN (редко используется)
SELECT c.company_name, o.order_date
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id;

-- 2. FULL OUTER JOIN (если поддерживается)
SELECT COALESCE(c.customer_id, o.customer_id) as customer_id,
       c.company_name,
       o.order_date
FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id;

-- 3. SELF JOIN - сотрудники и их менеджеры
SELECT e1.employee_id,
       e1.first_name + ' ' + e1.last_name AS employee,
       e2.first_name + ' ' + e2.last_name AS manager
FROM employees e1
LEFT JOIN employees e2 ON e1.reports_to = e2.employee_id;

-- 4. Работа с NULL
SELECT c.company_name,
       CASE 
         WHEN o.order_id IS NULL THEN 'No Orders'
         ELSE 'Has Orders'
       END AS order_status
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;
```

1. **Кейс "Почему пропали строки":**

```sql
-- Исходные данные
SELECT COUNT(*) FROM customers; -- например, 91
SELECT COUNT(*) FROM orders;    -- например, 830

-- INNER JOIN
SELECT COUNT(*) FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id; -- 830

-- LEFT JOIN
SELECT COUNT(*) FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id; -- 832 (дубликаты)

-- Анализ причин
SELECT c.customer_id, c.company_name, COUNT(o.order_id) as order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.company_name
HAVING COUNT(o.order_id) = 0; -- клиенты без заказов
```

**Документирование (30 мин):**

* Создать кейс-стади "Анализ пропавших строк"

* Документировать NULL-логику в джойнах

* Добавить чек-лист проверки джойнов

**Критерии выполнения:**

* \[ \] Освоены все типы джойнов

* \[ \] Понятна NULL-логика

* \[ \] Проведен анализ "пропавших строк"

* \[ \] Создан чек-лист проверки

### День 4: Python Pandas - основы EDA

**Теория (40 мин):**

* Pandas: Series и DataFrame

* Основные методы: head, info, describe

* Индексация и фильтрация

* Exploratory Data Analysis (EDA)

**Практика (110 мин):**

1. **Создать ноутбук `eda_day1.ipynb`**

2. **Базовые операции Pandas:**

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

# Загрузка данных
df = pd.read_csv('your_dataset.csv')

# Первичный осмотр
print("Shape:", df.shape)
print("\nInfo:")
print(df.info())
print("\nFirst 5 rows:")
print(df.head())
print("\nLast 5 rows:")
print(df.tail())

# Описательная статистика
print("\nDescriptive statistics:")
print(df.describe())
print("\nDescriptive statistics for objects:")
print(df.describe(include='object'))

# Проверка пропусков
print("\nMissing values:")
print(df.isnull().sum())
print("\nMissing values percentage:")
print((df.isnull().sum() / len(df)) * 100)

# Уникальные значения
for col in df.select_dtypes(include='object').columns:
    print(f"\n{col}: {df[col].nunique()} unique values")
    if df[col].nunique() < 10:
        print(df[col].value_counts())

# Базовые фильтры
high_value = df[df['price'] > df['price'].quantile(0.75)]
recent_data = df[df['date'] > '2023-01-01']

# Группировка
category_stats = df.groupby('category').agg({
    'price': ['mean', 'median', 'count'],
    'quantity': 'sum'
}).round(2)
print("\nCategory statistics:")
print(category_stats)
```

1. **Простые визуализации:**

```python
# Настройка стиля
plt.style.use('seaborn-v0_8')
fig, axes = plt.subplots(2, 2, figsize=(12, 10))

# Гистограмма
df['price'].hist(bins=30, ax=axes[0,0])
axes[0,0].set_title('Price Distribution')

# Box plot
df.boxplot(column='price', by='category', ax=axes[0,1])
axes[0,1].set_title('Price by Category')

# Scatter plot
axes[1,0].scatter(df['quantity'], df['price'])
axes[1,0].set_xlabel('Quantity')
axes[1,0].set_ylabel('Price')
axes[1,0].set_title('Quantity vs Price')

# Bar plot
df['category'].value_counts().plot(kind='bar', ax=axes[1,1])
axes[1,1].set_title('Category Counts')

plt.tight_layout()
plt.show()
```

**Документирование (30 мин):**

* Добавить выводы по каждому разделу анализа

* Создать summary с ключевыми находками

* Сформулировать вопросы для дальнейшего анализа

**Критерии выполнения:**

* \[ \] Ноутбук создан и выполнен

* \[ \] Проведен полный EDA

* \[ \] Созданы базовые визуализации

* \[ \] Сформулированы выводы

### День 5: Первый дашборд в Tableau

**Теория (35 мин):**

* Интерфейс Tableau Desktop/Public

* Типы подключений к данным

* Основные типы графиков и их применение

* Принципы дизайна дашбордов

**Практика (115 мин):**

1. **Подключение к данным:**

* Загрузить CSV-файл в Tableau

* Проверить типы данных

* Создать связи между таблицами (если нужно)

1. **Создание первых визуализаций:**

```
График 1: Продажи по времени (Line Chart)
- Dimensions: Date (continuous)
- Measures: Sales (SUM)
- Добавить тренд-линию

График 2: Продажи по категориям (Bar Chart)
- Dimensions: Category
- Measures: Sales (SUM)
- Сортировка по убыванию
- Цветовое кодирование
```

1. **Настройка интерактивности:**

* Добавить фильтры по дате и категории

* Настроить сортировку

* Добавить подсказки (tooltips)

* Форматирование чисел и дат

1. **Создание простого дашборда:**

* Объединить 2 графика на одной панели

* Добавить заголовок и описание

* Настроить размеры и расположение

* Добавить фильтры на уровне дашборда

1. **Публикация в Tableau Public:**

* Сохранить workbook

* Опубликовать в Tableau Public

* Получить ссылку для портфолио

**Документирование (30 мин):**

* Создать README для Tableau проекта

* Описать процесс создания дашборда

* Зафиксировать ссылку на публикацию

**Критерии выполнения:**

* \[ \] Данные подключены к Tableau

* \[ \] Созданы 2 информативных графика

* \[ \] Настроена интерактивность

* \[ \] Дашборд опубликован в Tableau Public

### Итоги недели 2:

* \[ \] Освоены все типы SQL джойнов

* \[ \] Создан первый EDA-ноутбук в Pandas

* \[ \] Опубликован первый дашборд в Tableau

* \[ \] Сформулированы бизнес-вопросы для анализа

---

## НЕДЕЛЯ 3 — Snowflake основы, агрегаты и оконные функции

### День 1: Знакомство со Snowflake

**Теория (40 мин):**

* Архитектура Snowflake: storage, compute, services

* Концепции: warehouse, database, schema, роли

* Query Profile и оптимизация запросов

* Автоматическая пауза и масштабирование

**Практика (110 мин):**

1. **Первое подключение:**

```sql
-- Проверка подключения
SELECT CURRENT_VERSION();
SELECT CURRENT_USER(), CURRENT_ROLE(), CURRENT_WAREHOUSE();

-- Просмотр доступных баз данных
SHOW DATABASES;
USE DATABASE SNOWFLAKE_SAMPLE_DATA;
SHOW SCHEMAS;
```

1. **Работа с SNOWFLAKE_SAMPLE_DATA:**

```sql
-- 1. Обзор схемы TPCH_SF1
USE SCHEMA SNOWFLAKE_SAMPLE_DATA.TPCH_SF1;
SHOW TABLES;

-- 2. Изучение структуры таблиц
DESCRIBE TABLE CUSTOMER;
DESCRIBE TABLE ORDERS;
DESCRIBE TABLE LINEITEM;

-- 3. Базовые запросы
SELECT COUNT(*) FROM CUSTOMER;
SELECT COUNT(*) FROM ORDERS;
SELECT COUNT(*) FROM LINEITEM;

-- 4. Первые аналитические запросы
SELECT C_MKTSEGMENT, COUNT(*) as customer_count
FROM CUSTOMER
GROUP BY C_MKTSEGMENT
ORDER BY customer_count DESC;

-- 5. Анализ Query Profile
SELECT O_ORDERSTATUS, 
       COUNT(*) as order_count,
       SUM(O_TOTALPRICE) as total_value
FROM ORDERS
GROUP BY O_ORDERSTATUS;
```

1. **Настройка warehouse:**

```sql
-- Создание собственного warehouse
CREATE WAREHOUSE IF NOT EXISTS MY_WH
WITH WAREHOUSE_SIZE = 'X-SMALL'
AUTO_SUSPEND = 60
AUTO_RESUME = TRUE;

USE WAREHOUSE MY_WH;
```

**Документирование (30 мин):**

* Создать "Snowflake Setup Guide"

* Зафиксировать структуру sample данных

* Записать первые наблюдения о производительности

**Критерии выполнения:**

* \[ \] Успешное подключение к Snowflake

* \[ \] Выполнены 5 запросов к sample data

* \[ \] Изучен Query Profile

* \[ \] Создан собственный warehouse

### День 2: SQL агрегаты и группировка

**Теория (35 мин):**

* Агрегатные функции: COUNT, SUM, AVG, MIN, MAX

* GROUP BY и HAVING

* Многоуровневые группировки

* Контрольные суммы для проверки данных

**Практика (115 мин):**

1. **Базовые агрегации:**

```sql
-- 1. Простые агрегаты
SELECT COUNT(*) as total_orders,
       SUM(O_TOTALPRICE) as total_revenue,
       AVG(O_TOTALPRICE) as avg_order_value,
       MIN(O_ORDERDATE) as first_order,
       MAX(O_ORDERDATE) as last_order
FROM ORDERS;

-- 2. Группировка по одному полю
SELECT O_ORDERSTATUS,
       COUNT(*) as order_count,
       SUM(O_TOTALPRICE) as total_revenue,
       AVG(O_TOTALPRICE) as avg_order_value
FROM ORDERS
GROUP BY O_ORDERSTATUS
ORDER BY total_revenue DESC;

-- 3. Группировка по дате
SELECT DATE_TRUNC('MONTH', O_ORDERDATE) as order_month,
       COUNT(*) as orders,
       SUM(O_TOTALPRICE) as revenue
FROM ORDERS
GROUP BY DATE_TRUNC('MONTH', O_ORDERDATE)
ORDER BY order_month;

-- 4. Многоуровневая группировка
SELECT O_ORDERSTATUS,
       YEAR(O_ORDERDATE) as order_year,
       COUNT(*) as order_count,
       SUM(O_TOTALPRICE) as total_revenue
FROM ORDERS
GROUP BY O_ORDERSTATUS, YEAR(O_ORDERDATE)
ORDER BY order_year, O_ORDERSTATUS;
```

1. **HAVING и условная агрегация:**

```sql
-- 5. Фильтрация агрегатов
SELECT C_MKTSEGMENT,
       COUNT(*) as customer_count
FROM CUSTOMER
GROUP BY C_MKTSEGMENT
HAVING COUNT(*) > 10000
ORDER BY customer_count DESC;

-- 6. Условная агрегация
SELECT O_ORDERSTATUS,
       COUNT(*) as total_orders,
       COUNT(CASE WHEN O_TOTALPRICE > 100000 THEN 1 END) as high_value_orders,
       SUM(CASE WHEN O_TOTALPRICE > 100000 THEN O_TOTALPRICE ELSE 0 END) as high_value_revenue
FROM ORDERS
GROUP BY O_ORDERSTATUS;
```

1. **Контрольные суммы:**

```sql
-- 7. Проверка согласованности на разных уровнях
-- Общая сумма
SELECT SUM(O_TOTALPRICE) as total_check FROM ORDERS;

-- Сумма по группам
SELECT SUM(group_total) as total_check_grouped
FROM (
    SELECT O_ORDERSTATUS, SUM(O_TOTALPRICE) as group_total
    FROM ORDERS
    GROUP BY O_ORDERSTATUS
);

-- Должны совпадать!
```

**Документирование (30 мин):**

* Добавить паттерны агрегации в SQL-cookbook

* Создать чек-лист проверки контрольных сумм

* Зафиксировать типичные ошибки с GROUP BY

**Критерии выполнения:**

* \[ \] Выполнены все запросы с агрегацией

* \[ \] Понятна разница между WHERE и HAVING

* \[ \] Проведена проверка контрольных сумм

* \[ \] Освоена условная агрегация

### День 3: Оконные функции I - ранжирование

**Теория (40 мин):**

* Концепция оконных функций

* PARTITION BY vs GROUP BY

* Функции ранжирования: ROW_NUMBER, RANK, DENSE_RANK

* Практические применения

**Практика (110 мин):**

1. **Базовые оконные функции:**

```sql
-- 1. ROW_NUMBER - уникальная нумерация
SELECT C_CUSTKEY,
       C_NAME,
       C_ACCTBAL,
       ROW_NUMBER() OVER (ORDER BY C_ACCTBAL DESC) as row_num
FROM CUSTOMER
ORDER BY C_ACCTBAL DESC
LIMIT 10;

-- 2. RANK - ранжирование с пропусками
SELECT C_CUSTKEY,
       C_NAME,
       C_ACCTBAL,
       RANK() OVER (ORDER BY C_ACCTBAL DESC) as rank_num
FROM CUSTOMER
ORDER BY C_ACCTBAL DESC
LIMIT 10;

-- 3. DENSE_RANK - ранжирование без пропусков
SELECT C_CUSTKEY,
       C_NAME,
       C_ACCTBAL,
       DENSE_RANK() OVER (ORDER BY C_ACCTBAL DESC) as dense_rank_num
FROM CUSTOMER
ORDER BY C_ACCTBAL DESC
LIMIT 10;
```

1. **PARTITION BY - группировка в окнах:**

```sql
-- 4. Топ клиентов по сегментам
SELECT C_MKTSEGMENT,
       C_NAME,
       C_ACCTBAL,
       ROW_NUMBER() OVER (PARTITION BY C_MKTSEGMENT ORDER BY C_ACCTBAL DESC) as rank_in_segment
FROM CUSTOMER
QUALIFY rank_in_segment <= 3
ORDER BY C_MKTSEGMENT, rank_in_segment;

-- 5. Сравнение с общим рангом
SELECT C_MKTSEGMENT,
       C_NAME,
       C_ACCTBAL,
       ROW_NUMBER() OVER (ORDER BY C_ACCTBAL DESC) as overall_rank,
       ROW_NUMBER() OVER (PARTITION BY C_MKTSEGMENT ORDER BY C_ACCTBAL DESC) as segment_rank
FROM CUSTOMER
QUALIFY overall_rank <= 20 OR segment_rank <= 3
ORDER BY overall_rank;
```

1. **Практические задачи "топ-N по группе":**

```sql
-- 6. Топ-3 заказа по клиентам
SELECT C_NAME,
       O_ORDERKEY,
       O_TOTALPRICE,
       ROW_NUMBER() OVER (PARTITION BY O_CUSTKEY ORDER BY O_TOTALPRICE DESC) as order_rank
FROM ORDERS o
JOIN CUSTOMER c ON o.O_CUSTKEY = c.C_CUSTKEY
QUALIFY order_rank <= 3
ORDER BY C_NAME, order_rank;

-- 7. Последний заказ каждого клиента
SELECT C_NAME,
       O_ORDERKEY,
       O_ORDERDATE,
       O_TOTALPRICE
FROM (
    SELECT c.C_NAME,
           o.O_ORDERKEY,
           o.O_ORDERDATE,
           o.O_TOTALPRICE,
           ROW_NUMBER() OVER (PARTITION BY o.O_CUSTKEY ORDER BY o.O_ORDERDATE DESC) as rn
    FROM ORDERS o
    JOIN CUSTOMER c ON o.O_CUSTKEY = c.C_CUSTKEY
)
WHERE rn = 1
ORDER BY O_ORDERDATE DESC;
```

**Документирование (30 мин):**

* Создать раздел "Window Functions" в SQL-cookbook

* Добавить примеры топ-N задач

* Объяснить разницу между RANK функциями

**Критерии выполнения:**

* \[ \] Понятна концепция оконных функций

* \[ \] Освоены ROW_NUMBER, RANK, DENSE_RANK

* \[ \] Решены задачи "топ-N по группе"

* \[ \] Понятна разница между PARTITION BY и GROUP BY

### День 4: Оконные функции II - агрегаты и скользящие окна

**Теория (40 мин):**

* Агрегатные функции в окнах

* ORDER BY в оконных функциях

* Скользящие окна: ROWS и RANGE

* Накопительные итоги

**Практика (110 мин):**

1. **Агрегатные функции в окнах:**

```sql
-- 1. Накопительная сумма
SELECT O_ORDERDATE,
       O_TOTALPRICE,
       SUM(O_TOTALPRICE) OVER (ORDER BY O_ORDERDATE) as running_total
FROM ORDERS
ORDER BY O_ORDERDATE
LIMIT 20;

-- 2. Процент от общей суммы
SELECT O_ORDERSTATUS,
       O_TOTALPRICE,
       O_TOTALPRICE / SUM(O_TOTALPRICE) OVER () * 100 as pct_of_total,
       O_TOTALPRICE / SUM(O_TOTALPRICE) OVER (PARTITION BY O_ORDERSTATUS) * 100 as pct_of_status
FROM ORDERS
ORDER BY O_TOTALPRICE DESC
LIMIT 20;

-- 3. Сравнение с средним
SELECT C_MKTSEGMENT,
       C_ACCTBAL,
       AVG(C_ACCTBAL) OVER () as overall_avg,
       AVG(C_ACCTBAL) OVER (PARTITION BY C_MKTSEGMENT) as segment_avg,
       C_ACCTBAL - AVG(C_ACCTBAL) OVER (PARTITION BY C_MKTSEGMENT) as diff_from_segment_avg
FROM CUSTOMER
ORDER BY C_MKTSEGMENT, C_ACCTBAL DESC;
```

1. **Скользящие окна:**

```sql
-- 4. Скользящее среднее (3 периода)
SELECT DATE_TRUNC('MONTH', O_ORDERDATE) as order_month,
       COUNT(*) as monthly_orders,
       AVG(COUNT(*)) OVER (
           ORDER BY DATE_TRUNC('MONTH', O_ORDERDATE)
           ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
       ) as moving_avg_3m
FROM ORDERS
GROUP BY DATE_TRUNC('MONTH', O_ORDERDATE)
ORDER BY order_month;

-- 5. Скользящая сумма выручки
SELECT DATE_TRUNC('MONTH', O_ORDERDATE) as order_month,
       SUM(O_TOTALPRICE) as monthly_revenue,
       SUM(SUM(O_TOTALPRICE)) OVER (
           ORDER BY DATE_TRUNC('MONTH', O_ORDERDATE)
           ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
       ) as rolling_3m_revenue
FROM ORDERS
GROUP BY DATE_TRUNC('MONTH', O_ORDERDATE)
ORDER BY order_month;

-- 6. Сравнение с предыдущим периодом
SELECT DATE_TRUNC('MONTH', O_ORDERDATE) as order_month,
       SUM(O_TOTALPRICE) as monthly_revenue,
       LAG(SUM(O_TOTALPRICE), 1) OVER (ORDER BY DATE_TRUNC('MONTH', O_ORDERDATE)) as prev_month_revenue,
       SUM(O_TOTALPRICE) - LAG(SUM(O_TOTALPRICE), 1) OVER (ORDER BY DATE_TRUNC('MONTH', O_ORDERDATE)) as month_over_month_change
FROM ORDERS
GROUP BY DATE_TRUNC('MONTH', O_ORDERDATE)
ORDER BY order_month;
```

1. **Практические кейсы:**

```sql
-- 7. Анализ роста клиентской базы
WITH customer_first_order AS (
    SELECT O_CUSTKEY,
           MIN(O_ORDERDATE) as first_order_date
    FROM ORDERS
    GROUP BY O_CUSTKEY
)
SELECT DATE_TRUNC('MONTH', first_order_date) as cohort_month,
       COUNT(*) as new_customers,
       SUM(COUNT(*)) OVER (ORDER BY DATE_TRUNC('MONTH', first_order_date)) as cumulative_customers
FROM customer_first_order
GROUP BY DATE_TRUNC('MONTH', first_order_date)
ORDER BY cohort_month;
```

**Документирование (30 мин):**

* Добавить примеры скользящих окон в cookbook

* Создать шаблоны для типичных аналитических задач

* Объяснить разницу между ROWS и RANGE

**Критерии выполнения:**

* \[ \] Освоены агрегатные функции в окнах

* \[ \] Созданы скользящие средние и суммы

* \[ \] Рассчитаны накопительные итоги

* \[ \] Понятна логика ORDER BY в окнах

### День 5: Python EDA II - продвинутый анализ

**Теория (40 мин):**

* Работа с пропусками: стратегии обработки

* Выявление и обработка выбросов

* Преобразование типов данных

* Категоризация и бинирование

**Практика (110 мин):**

1. **Создать ноутбук `advanced_eda.ipynb`**

2. **Анализ пропусков:**

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from scipy import stats

# Загрузка данных
df = pd.read_csv('your_dataset.csv')

# Детальный анализ пропусков
missing_data = df.isnull().sum()
missing_percent = (missing_data / len(df)) * 100
missing_df = pd.DataFrame({
    'Missing Count': missing_data,
    'Missing Percentage': missing_percent
}).sort_values('Missing Percentage', ascending=False)

print("Missing Data Analysis:")
print(missing_df[missing_df['Missing Count'] > 0])

# Визуализация пропусков
plt.figure(figsize=(12, 6))
sns.heatmap(df.isnull(), cbar=True, yticklabels=False)
plt.title('Missing Data Heatmap')
plt.show()

# Стратегии заполнения
# Числовые - медиана/среднее
df['price_filled'] = df['price'].fillna(df['price'].median())

# Категориальные - мода или 'Unknown'
df['category_filled'] = df['category'].fillna(df['category'].mode()[0])

# Создание флага пропуска
df['price_was_missing'] = df['price'].isnull().astype(int)
```

1. **Выявление выбросов:**

```python
# Метод IQR
def detect_outliers_iqr(data):
    Q1 = data.quantile(0.25)
    Q3 = data.quantile(0.75)
    IQR = Q3 - Q1
    lower_bound = Q1 - 1.5 * IQR
    upper_bound = Q3 + 1.5 * IQR
    return (data < lower_bound) | (data > upper_bound)

# Z-score метод
def detect_outliers_zscore(data, threshold=3):
    z_scores = np.abs(stats.zscore(data.dropna()))
    return z_scores > threshold

# Применение к числовым столбцам
numeric_cols = df.select_dtypes(include=[np.number]).columns

for col in numeric_cols:
    outliers_iqr = detect_outliers_iqr(df[col])
    outliers_zscore = detect_outliers_zscore(df[col])
    
    print(f"\n{col}:")
    print(f"IQR outliers: {outliers_iqr.sum()}")
    print(f"Z-score outliers: {outliers_zscore.sum()}")
    
    # Визуализация
    fig, axes = plt.subplots(1, 2, figsize=(12, 4))
    
    # Box plot
    df[col].plot(kind='box', ax=axes[0])
    axes[0].set_title(f'{col} - Box Plot')
    
    # Histogram
    df[col].hist(bins=30, ax=axes[1])
    axes[1].set_title(f'{col} - Distribution')
    
    plt.tight_layout()
    plt.show()
```

1. **Преобразование типов и категоризация:**

```python
# Преобразование дат
df['date'] = pd.to_datetime(df['date'])
df['year'] = df['date'].dt.year
df['month'] = df['date'].dt.month
df['day_of_week'] = df['date'].dt.day_name()

# Категоризация числовых переменных
df['price_category'] = pd.cut(df['price'], 
                             bins=[0, 50, 100, 200, float('inf')],
                             labels=['Low', 'Medium', 'High', 'Premium'])

# Квантильная категоризация
df['price_quartile'] = pd.qcut(df['price'], q=4, labels=['Q1', 'Q2', 'Q3', 'Q4'])

# Бинарные переменные
df['is_weekend'] = df['day_of_week'].isin(['Saturday', 'Sunday']).astype(int)
df['is_high_value'] = (df['price'] > df['price'].quantile(0.8)).astype(int)

# Кодирование категориальных переменных
df_encoded = pd.get_dummies(df, columns=['category'], prefix='cat')

print("New columns created:")
print([col for col in df.columns if col not in df.columns])
```

1. **Создание мини-отчета:**

```python
# Сводка по обработке данных
report = {
    'Original shape': df.shape,
    'Missing values handled': missing_df[missing_df['Missing Count'] > 0].shape[0],
    'Outliers detected': sum([detect_outliers_iqr(df[col]).sum() for col in numeric_cols]),
    'New features created': len([col for col in df.columns if '_category' in col or '_quartile' in col]),
    'Data types': df.dtypes.value_counts().to_dict()
}

print("Data Processing Report:")
for key, value in report.items():
    print(f"{key}: {value}")

# Корреляционная матрица
plt.figure(figsize=(10, 8))
correlation_matrix = df.select_dtypes(include=[np.number]).corr()
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm', center=0)
plt.title('Correlation Matrix')
plt.show()
```

**Документирование (30 мин):**

* Создать summary с ключевыми находками

* Документировать стратегии обработки пропусков и выбросов

* Сформулировать рекомендации для дальнейшего анализа

**Критерии выполнения:**

* \[ \] Проведен анализ пропусков и выбросов

* \[ \] Применены стратегии обработки данных

* \[ \] Созданы новые признаки

* \[ \] Подготовлен мини-отчет с графиками

### Итоги недели 3:

* \[ \] Освоена работа в Snowflake

* \[ \] Выполнено 25+ запросов с агрегатами и окнами

* \[ \] Создан продвинутый EDA-ноутбук

* \[ \] Понятны принципы оконных функций

---

## НЕДЕЛЯ 4 — JSON данные, CTE, продвинутый Tableau

### День 1: Полуструктурированные данные в Snowflake

**Теория (40 мин):**

* VARIANT тип данных в Snowflake

* Работа с JSON: извлечение полей, массивы, вложенные объекты

* LATERAL FLATTEN для разворачивания массивов

* Практические применения JSON в аналитике

**Практика (110 мин):**

1. **Создание тестовых JSON данных:**

```sql
-- Создание таблицы с JSON данными
CREATE OR REPLACE TABLE events_json (
    event_id INT,
    event_data VARIANT,
    created_at TIMESTAMP
);

-- Вставка тестовых данных
INSERT INTO events_json VALUES
(1, PARSE_JSON('{"user_id": 123, "event_type": "purchase", "amount": 99.99, "items": [{"product": "laptop", "qty": 1}, {"product": "mouse", "qty": 2}], "metadata": {"source": "web", "campaign": "summer_sale"}}'), CURRENT_TIMESTAMP()),
(2, PARSE_JSON('{"user_id": 456, "event_type": "view", "page": "/products", "metadata": {"source": "mobile", "referrer": "google"}}'), CURRENT_TIMESTAMP()),
(3, PARSE_JSON('{"user_id": 789, "event_type": "purchase", "amount": 149.50, "items": [{"product": "phone", "qty": 1}], "metadata": {"source": "web"}}'), CURRENT_TIMESTAMP());
```

1. **Извлечение полей из JSON:**

```sql
-- 1. Базовое извлечение полей
SELECT event_id,
       event_data:user_id::INT as user_id,
       event_data:event_type::STRING as event_type,
       event_data:amount::FLOAT as amount,
       event_data:metadata:source::STRING as source
FROM events_json;

-- 2. Работа с вложенными объектами
SELECT event_id,
       event_data:user_id::INT as user_id,
       event_data:metadata:source::STRING as source,
       event_data:metadata:campaign::STRING as campaign,
       event_data:metadata:referrer::STRING as referrer
FROM events_json;

-- 3. Условная логика с JSON
SELECT event_id,
       event_data:user_id::INT as user_id,
       CASE 
         WHEN event_data:event_type::STRING = 'purchase' THEN 'Revenue'
         WHEN event_data:event_type::STRING = 'view' THEN 'Engagement'
         ELSE 'Other'
       END as event_category
FROM events_json;
```

1. **LATERAL FLATTEN для массивов:**

```sql
-- 4. Разворачивание массива items
SELECT e.event_id,
       e.event_data:user_id::INT as user_id,
       f.value:product::STRING as product,
       f.value:qty::INT as quantity
FROM events_json e,
LATERAL FLATTEN(input => e.event_data:items) f
WHERE e.event_data:items IS NOT NULL;

-- 5. Агрегация по развернутым данным
SELECT f.value:product::STRING as product,
       SUM(f.value:qty::INT) as total_quantity,
       COUNT(*) as order_count
FROM events_json e,
LATERAL FLATTEN(input => e.event_data:items) f
WHERE e.event_data:items IS NOT NULL
GROUP BY f.value:product::STRING
ORDER BY total_quantity DESC;

-- 6. Создание плоской таблицы событий
CREATE OR REPLACE TABLE events_flat AS
SELECT e.event_id,
       e.event_data:user_id::INT as user_id,
       e.event_data:event_type::STRING as event_type,
       e.event_data:amount::FLOAT as amount,
       e.event_data:metadata:source::STRING as source,
       e.event_data:metadata:campaign::STRING as campaign,
       COALESCE(f.value:product::STRING, 'N/A') as product,
       COALESCE(f.value:qty::INT, 0) as quantity,
       e.created_at
FROM events_json e
LEFT JOIN LATERAL FLATTEN(input => e.event_data:items, OUTER => TRUE) f;

SELECT * FROM events_flat;
```

**Документирование (30 мин):**

* Создать раздел "JSON Processing" в SQL-cookbook

* Документировать паттерны работы с VARIANT

* Добавить примеры типичных JSON структур

**Критерии выполнения:**

* \[ \] Созданы тестовые JSON данные

* \[ \] Освоено извлечение полей из JSON

* \[ \] Использован LATERAL FLATTEN

* \[ \] Создана плоская таблица из JSON

### День 2: CTE и подзапросы

**Теория (35 мин):**

* Common Table Expressions (CTE) vs подзапросы

* Рекурсивные CTE

* Читаемость и производительность

* Лучшие практики структурирования сложных запросов

**Практика (115 мин):**

1. **Сравнение подходов - подзапрос vs CTE:**

```sql
-- Бизнес-задача: Найти клиентов с заказами выше среднего

-- Подход 1: Подзапрос
SELECT c.C_NAME,
       c.C_ACCTBAL,
       o.O_TOTALPRICE
FROM CUSTOMER c
JOIN ORDERS o ON c.C_CUSTKEY = o.O_CUSTKEY
WHERE o.O_TOTALPRICE > (
    SELECT AVG(O_TOTALPRICE) 
    FROM ORDERS
)
ORDER BY o.O_TOTALPRICE DESC;

-- Подход 2: CTE
WITH avg_order AS (
    SELECT AVG(O_TOTALPRICE) as avg_price
    FROM ORDERS
),
high_value_orders AS (
    SELECT o.O_CUSTKEY,
           o.O_TOTALPRICE
    FROM ORDERS o
    CROSS JOIN avg_order a
    WHERE o.O_TOTALPRICE > a.avg_price
)
SELECT c.C_NAME,
       c.C_ACCTBAL,
       h.O_TOTALPRICE
FROM CUSTOMER c
JOIN high_value_orders h ON c.C_CUSTKEY = h.O_CUSTKEY
ORDER BY h.O_TOTALPRICE DESC;
```

1. **Сложные аналитические задачи с CTE:**

```sql
-- Задача: Анализ клиентской активности по когортам
WITH customer_first_order AS (
    SELECT O_CUSTKEY,
           MIN(O_ORDERDATE) as first_order_date,
           DATE_TRUNC('MONTH', MIN(O_ORDERDATE)) as cohort_month
    FROM ORDERS
    GROUP BY O_CUSTKEY
),
monthly_activity AS (
    SELECT o.O_CUSTKEY,
           DATE_TRUNC('MONTH', o.O_ORDERDATE) as activity_month,
           COUNT(*) as orders_count,
           SUM(o.O_TOTALPRICE) as total_spent
    FROM ORDERS o
    GROUP BY o.O_CUSTKEY, DATE_TRUNC('MONTH', o.O_ORDERDATE)
),
cohort_analysis AS (
    SELECT cfo.cohort_month,
           ma.activity_month,
           DATEDIFF('month', cfo.cohort_month, ma.activity_month) as period_number,
           COUNT(DISTINCT ma.O_CUSTKEY) as active_customers,
           SUM(ma.total_spent) as cohort_revenue
    FROM customer_first_order cfo
    JOIN monthly_activity ma ON cfo.O_CUSTKEY = ma.O_CUSTKEY
    GROUP BY cfo.cohort_month, ma.activity_month
)
SELECT cohort_month,
       period_number,
       active_customers,
       cohort_revenue,
       -- Retention rate относительно первого периода
       active_customers / FIRST_VALUE(active_customers) 
           OVER (PARTITION BY cohort_month ORDER BY period_number) * 100 as retention_rate
FROM cohort_analysis
WHERE period_number <= 12  -- Первый год
ORDER BY cohort_month, period_number;
```

1. **Рекурсивные CTE:**

```sql
-- Пример: Генерация календаря
WITH RECURSIVE date_series AS (
    -- Базовый случай
    SELECT DATE('2023-01-01') as date_value
    
    UNION ALL
    
    -- Рекурсивный случай
    SELECT DATEADD('day', 1, date_value)
    FROM date_series
    WHERE date_value < DATE('2023-12-31')
)
SELECT date_value,
       DAYNAME(date_value) as day_name,
       WEEK(date_value) as week_number,
       MONTH(date_value) as month_number,
       QUARTER(date_value) as quarter_number
FROM date_series
ORDER BY date_value;
```

**Документирование (30 мин):**

* Добавить раздел "CTE Patterns" в SQL-cookbook

* Создать шаблоны для типичных аналитических задач

* Сравнить производительность CTE vs подзапросы

**Критерии выполнения:**

* \[ \] Понятна разница между CTE и подзапросами

* \[ \] Выполнен когортный анализ с CTE

* \[ \] Создан рекурсивный CTE

* \[ \] Обновлен SQL-cookbook

### День 3: Продвинутые возможности Tableau I

**Теория (40 мин):**

* Calculated Fields: создание пользовательских метрик

* Parameters: интерактивные элементы управления

* Table Calculations: вычисления на уровне визуализации

* Level of Detail (LOD) expressions

**Практика (110 мин):**

1. **Calculated Fields:**

```
// Базовые вычисления
Profit Margin = [Profit] / [Sales]

// Условная логика
Customer Segment = 
IF [Sales] > 10000 THEN "High Value"
ELSEIF [Sales] > 5000 THEN "Medium Value"
ELSE "Low Value"
END

// Работа с датами
Days Since Order = DATEDIFF('day', [Order Date], TODAY())

// Агрегации
Average Order Value = SUM([Sales]) / COUNTD([Order ID])
```

1. **Parameters и их использование:**

```
// Создать параметр "Metric Selector"
// Тип: String, Список знач
```
