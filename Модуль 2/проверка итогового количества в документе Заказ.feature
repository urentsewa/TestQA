﻿#language: ru

@tree

Функционал: редактирование документа Заказ

Как Администратор я хочу
проверить итоговое количество документа Заказ
чтобы вести корректный учет продаж   

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: проверка итогового количества документа Заказ
* Открытие формы создания документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
	И заполнение шапки документа заказ
* Добавляем строку в ТЧ Товары
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
* Изменяем реквизит Количество
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
* Проверяем итоговое количество
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '2'
* Изменяем количество в уже добавленной строке
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1 000'
	И в таблице "Товары" я завершаю редактирование строки
* Проверяем итоговое количество
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '1 000'
* Добавим еще одну строку
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
* Изменяем количество в новой строке
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '350'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
* Проверяем итоговое количество
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '1 350'
* Закрываем окно создания заказа без сохранения
	И Я закрываю окно 'Заказ (создание) *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'