Представлено спрощену ER-модель онлайн-магазину.
У ній є 4 сутності (entity): Order, Customer, Item, Category
Усі ці таблиці мають внутрішні ключі для розрізнення цих записів. 
Таблиця Замовлення має дату, id замовника та список товарів, що було заамовлено.
Таблиця Customer має дані про замовника, включно із паролем, що зашифровано, та поштою.
У Таблиці Item зберігнається інформація про замовлення. У цій версії немає орієнтування цієї таблиці
на певну категорію товарів. Мабуть, якщо це магазин квітів чи електроніки, то можна зробити характеристики 
заточеними під визначену категорію товарів, а тут це лише VARCHAR опис. 
Категорія має три вітки для точної фільтрації товарів надалі.
