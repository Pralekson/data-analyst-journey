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
