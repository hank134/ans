

Данный плейбук устанавлнивает Clickhouse и Vector

## Переменные
clickhouse_version - Версия Clickhouse для скачивания и установки
clickhouse_packages - Название модуле Clickhouse для скачивания
## Хосты
clickhouse-01 сервер на который устанавливаем Clickhouse
vector-01 сервер на который ставим Vector
SSH Ключи для подключения переданы в просессе разворачивание хостов
## Внешние файлы
vector.toml - демо конфиг Vector
## Плей
Install Clickhouse - плей установки Clickhouse
Get clickhouse distrib - Скачивание нужных пакетов RPM  clickhouse-common-static clickhouse-clien clickhouse-server
Install clickhouse packages - Установка скаченных пакетов
Flush handlers - Запускает хендлер Start clickhouse service до завершения таски
Start clickhouse service - запуск службы Clickhouse
Create database - Создание базы в Clickhouse

Install Vector - плей установки Vector
Start Vector service - запуск службы Vector
Copy_config_vector - Копирование демо конфига Vector
Test Start Vector - тестовый запуск Vector с демо конфигом

