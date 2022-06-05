

Данный плейбук устанавливает Clickhouse Vector Lighthouse 

## Переменные  
clickhouse_version - Версия Clickhouse для скачивания и установки  
clickhouse_packages - Название модуле Clickhouse для скачивания  
## Хосты  
| имя хоста | описание |
| :------------ | :----------------------------------------- |
| clickhouse-01 | сервер на который устанавливаем Clickhouse |
| vector-01     | сервер на который ставим Vector            |
| lighthouse-01 | сервер на который ставим lighthouse |

SSH Ключи для подключения переданы в просессе разворачивание хостов  
## Внешние шаблоны
имя файла | описание
--- | ---  
vector.toml | демо конфиг Vector  
clickhouse.conf |  конфигурация   clickhouse
lighthouse.conf | конфигурация lighthouse
nginx.conf | конфигурация nginx
vector.service | конфигурация сервиса Vector  
## Play  
Плей | Таска/Хендлеры |Описание
---: | --- | --- 
Install Nginx | - | Установка и запуска Nginx для Lighthouse
-| Install Epel | Установка Epel
-| Install Nginx | Инсталляция Nginx
-| Start-nginx | запуск nginx
-| Reload-nginx | перезапуск nginx
Install LightHouse | - | Установка lighthouse и настройка Nginx
-| Install git | Установка Git
-| Copy lighthouse | Копирование репы c lighthouse
-| Config lighthouse | Копирование конфига Nginx для работы lighthouse
-| Reload-nginx | Перезапуск Nginx
Install Clickhouse | - |Установка Clickhouse
-| Get clickhouse distrib | Скачивание нужных пакетов RPM  clickhouse-common-static clickhouse-clien clickhouse-server  
-|Install clickhouse packages | Установка скаченных пакетов  
-|Flush handlers | Запускает хендлер Start clickhouse service до завершения таски  
-|Create database | Создание базы в Clickhouse  
-|Start clickhouse service | запуск службы Clickhouse
Install Vector| - |плей установки Vector  
-|Copy_config_vector | Копирование демо конфига Vector  
-|Validate Vector | проверка конфига Vector
-| Config Vector service | Копирование конфига  Vector
-| Start Vector service | запуск службы Vector
