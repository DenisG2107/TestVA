﻿#language: ru

@ExportScenarios
@tree

Функционал: Шапка заказа

Как оператор я хочу
заполнение шапки заказа 
чтобы тест заполнения 


Сценарий: Подгрузить предварительные данные
 и Перезаполнение констант
и Подготовка данных Валюта ВидЦены Склад
и Подготовка данных контрагента
и Подготовка данных данных по организации Все для дома
и Подготовка данных Валюта ВидЦены Склад

Сценарий: Создать контрагента
* Открытие формы создания клиента
	И В командном интерфейсе я выбираю 'Продажи' 'Контрагенты'
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение наименования клиента
	И в поле с именем 'Наименование' я ввожу текст 'Тестовый клиент'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
* Заполнение номера телефона клиента
	И в поле с именем 'Телефон' я ввожу текст '1111111111111111'
* Сохранение
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка сохранения по коду
	И я запоминаю значение поля "Код" как "Код"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Тестовый клиент (Контрагент)' в течение 20 секунд
	Тогда таблица "Список" содержит строки:
		| 'Код'       |
		| '$Код$' |

Сценарий: Создать склад
* Открытие формы создания
	Когда В панели разделов я выбираю 'Закупки'
	И В панели разделов я выбираю 'Продажи'
	И В командном интерфейсе я выбираю 'Товарные запасы' 'Склады'
	Тогда открылось окно 'Склады'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Склад (создание)'
* Заполнение наименования
	И в поле с именем 'Наименование' я ввожу текст 'тест'
* Сохранение
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка сохранения по коду
	И я запоминаю значение поля "Код" как "Код"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Склад (создание) *' в течение 20 секунд
	Тогда таблица "Список" содержит строки:
		| 'Код'       |
		| '$Код$' |
Сценарий: Создать валюту
* Открытие формы создания
	И В командном интерфейсе я выбираю 'Финансы' 'Валюты'
	Тогда открылось окно 'Валюты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Валюта (создание)'
* Заполнение наименования
	И в поле с именем 'Наименование' я ввожу текст 'тест валюты'
	И в поле с именем 'НаименованиеОсновнойВалюты' я ввожу текст 'тест валюты'
	И в поле с именем 'НаименованиеРазменнойВалюты' я ввожу текст 'тест валюты'
* Сохранение
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка сохранения по коду
	И я запоминаю значение поля "Код" как "Код"
	Тогда открылось окно 'тест валюты (Валюта)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'тест валюты (Валюта)' в течение 20 секунд
	Тогда таблица "Список" содержит строки:
		| 'Код'       |
		| '$Код$' |
Сценарий: Создать товар
* Открытие формы создания
	И В командном интерфейсе я выбираю 'Продажи' 'Товары'
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Товар (создание)'
* Заполнение наименования
	И в поле с именем 'Наименование' я ввожу текст 'тестовый товар'
	И в поле с именем 'Артикул' я ввожу текст '111'
	И из выпадающего списка с именем "Поставщик" я выбираю точное значение 'Магазин "Бытовая техника"'
	И в поле с именем 'ШтрихКод' я ввожу текст '123'
	И я перехожу к закладке с именем "ГруппаХарактеристики"
	И я перехожу к закладке с именем "ГруппаОписание"
	И я перехожу к закладке с именем "ГруппаХарактеристики"
	И я нажимаю на кнопку с именем 'ДобавитьХарактеристику'
	Тогда открылось окно 'Виды характеристик'
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Товар (создание) *'
	И в поле с именем 'Характеристика000000008' я ввожу текст 'Иванов'
* Сохранение
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка сохранения по коду
	И я запоминаю значение поля "Код" как "Код"
	Тогда открылось окно 'тестовый товар (Товар)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'тестовый товар (Товар)' в течение 20 секунд
	Тогда таблица "Список" содержит строки:
		| 'Код'       |
		| '$Код$' |

Сценарий: Заполнение шапки заказа
* Открытие формы создания
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение реквизитов шапки
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
И я нажимаю на кнопку с именем 'ФормаЗаписать'
