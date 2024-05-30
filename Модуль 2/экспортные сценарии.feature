﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnClMainBuild

Функционал: Экспортные сценарии для заполнения документа Заказ

Сценарий: Заполнение шапки документа Заказ
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'	
	Тогда элемент формы с именем "ВидЦен" стал равен "Оптовая"
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Обувь"'
	Тогда элемент формы с именем "ВидЦен" стал равен "Розничная"
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	Тогда элемент формы с именем "ВидЦен" стал равен "Мелкооптовая"
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Скороход АО'
	Тогда элемент формы с именем "ВидЦен" стал равен "Закупочная"
	И я меняю значение переключателя с именем 'СостояниеЗаказа' на 'В работе'




