# ДЕНЬ 1: Настройка окружения и постановка целей

## 🎯 Цели дня

* Настроить все необходимые инструменты

* Создать структуру проекта и GitHub репозиторий

* Поставить SMART-цели обучения

* Протестировать Python библиотеки

* Создать систему документирования прогресса

## 📋 Подготовка (30 минут)

### Проверка установленных инструментов

```bash
python3 --version
git --version
```

### Установка недостающих компонентов

1. **VS Code**: Скачать с [code.visualstudio.com](https://code.visualstudio.com)

* Установить расширения: Python, SQL Tools, GitLens, Jupyter

1. **Tableau Public**:

* Создать аккаунт на [public.tableau.com](https://public.tableau.com)

* Скачать и установить Tableau Public для Mac

1. **GitHub аккаунт**:

* Создать аккаунт на [github.com](https://github.com)

* Создать репозиторий "data-analyst-journey" (публичный)

### Настройка Git

```bash
git config --global user.name "Ваше Имя"
git config --global user.email "ваш@email.com"
```

## 🏗️ Создание структуры проекта (45 минут)

### Клонирование и структурирование репозитория

```bash
cd ~/Desktop
git clone https://github.com/ВАШ_USERNAME/data-analyst-journey.git
cd data-analyst-journey

# Создание структуры папок
mkdir week-01 week-02 week-03 week-04
mkdir projects sql-cookbook notebooks docs
mkdir projects/mini-project-1 projects/mini-project-2 projects/portfolio
```

### Создание [README.md](http://README.md)

```markdown
# Мой путь в Data Analytics

## 🎯 Главная цель
Стать Data Analyst и сменить карьеру за 12 месяцев

## 📊 SMART-цели на 6 месяцев

### Технические навыки:
- [ ] SQL: уверенно писать сложные запросы с джойнами и оконными функциями
- [ ] Python: pandas, matplotlib, seaborn для анализа данных
- [ ] Tableau: создавать интерактивные дашборды
- [ ] Snowflake: работать с облачным хранилищем данных

### Портфолио:
- [ ] 3 завершенных проекта анализа данных
- [ ] 5 дашбордов в Tableau Public
- [ ] Профиль на GitHub с документированным кодом

### Карьерные цели:
- [ ] Целевая зарплата: $1000/месяц (junior Data Analyst)
- [ ] Временные рамки: 12 месяцев (6 месяцев обучение + 6 месяцев поиск работы)
- [ ] География: удаленная работа / международные компании

## 📅 Еженедельное расписание
- Понедельник-Пятница: 3 часа ежедневно
- Суббота: 2 часа (обзор недели, проекты)
- Воскресенье: отдых или добор пропущенного

## 🎓 Прогресс обучения
Начал: [ДАТА]
```

## 🐍 Тестирование Python окружения (30 минут)

### Установка необходимых библиотек

```bash
pip3 install pandas matplotlib seaborn jupyter
```

### Создание тестового файла test_setup.py

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

print("✅ Тестируем библиотеки Python...")

# Тест pandas
data = {'название': ['Продукт A', 'Продукт B', 'Продукт C'],
        'продажи': [100, 150, 200]}
df = pd.DataFrame(data)
print("\n📊 Тест pandas:")
print(df)

# Тест matplotlib
plt.figure(figsize=(8, 5))
plt.bar(df['название'], df['продажи'])
plt.title('Тест графика')
plt.ylabel('Продажи')
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig('test_plot.png')
print("\n📈 График сохранен как test_plot.png")

print("\n🎉 Все библиотеки работают отлично!")
```

### Запуск теста

```bash
python3 test_setup.py
```

## 📝 Создание системы документирования (30 минут)

### Создание [learning-log.md](http://learning-log.md)

```markdown
# Дневник обучения

## День 1 - [ДАТА]
**Время:** 3 часа
**Изучено:**
- Настроил все инструменты (Python, Git, VS Code, Tableau)
- Создал GitHub репозиторий и структуру проекта
- Поставил SMART-цели: $1000/месяц за 12 месяцев
- Установил и протестировал Python библиотеки для анализа данных

**Достижения:**
- ✅ Все инструменты настроены и работают
- ✅ Создана структура проекта
- ✅ Первый график создан и сохранен
- ✅ GitHub репозиторий настроен

**Планы на завтра:**
- Изучить типы данных
- Первые шаги в Excel/Google Sheets
- Начать изучение SQL основ

**Настроение:** 😊 (отличный старт!)
```

## 🚀 Финализация и коммит (15 минут)

### Сохранение прогресса в Git

```bash
# Инициализация репозитория (если нужно)
git init
git remote add origin https://github.com/ВАШ_USERNAME/data-analyst-journey.git

# Добавление всех файлов
git add .

# Проверка статуса
git status

# Создание коммита
git commit -m "Day 1 complete: Python libraries tested, learning log created"

# Отправка на GitHub
git push -u origin main
```

## ✅ Критерии завершения Дня 1

* \[ \] Все инструменты установлены и протестированы

* \[ \] GitHub репозиторий создан и структурирован

* \[ \] SMART-цели записаны в [README.md](http://README.md)

* \[ \] Python библиотеки работают (pandas, matplotlib, seaborn)

* \[ \] Создан первый график test_plot.png

* \[ \] [Learning-log.md](http://Learning-log.md) создан и заполнен

* \[ \] Все файлы закоммичены в GitHub

## 📊 Результаты дня

**Файлы созданы:**

* [README.md](http://README.md) - цели и план обучения

* [learning-log.md](http://learning-log.md) - дневник прогресса

* test_setup.py - тест Python библиотек

* test_plot.png - первый созданный график

* Структура папок проекта

**Навыки освоены:**

* Работа с Git и GitHub

* Командная строка Terminal

* Основы Python для анализа данных

* Структурирование проекта

* Документирование прогресса

**Время затрачено:** 3 часа\
**Готовность к обучению:** 100%

---

## 🚀 Подготовка к Дню 2

**Завтра изучаем:**

* Типы данных и их особенности

* Работа с Excel/Google Sheets

* Создание первого датасета

* Базовые операции с данными

**Необходимо подготовить:**

* Excel или Google Sheets

* Примеры данных для анализа

* Продолжение [learning-log.md](http://learning-log.md)