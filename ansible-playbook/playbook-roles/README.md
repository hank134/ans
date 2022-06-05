Данный плейбук устанавливает Clickhouse Vector Lighthouse 

## Переменные
Переменная |Описание
--- | --- |  
clickhouse_listen_host_custom| IP Хоста с которого будут подключатсья к ClickHouse
vector_version | Версия Vector
clickhouse_host_ip | IP Хоста с Clickhouse
nginx_host_username | Имя пользователя под кем запускается NGinx
lighthouse_git | Репозитарий где размещен lightHouse  
## Хосты  
| имя хоста | описание |
| :------------ | :----------------------------------------- |
| clickhouse-01 | сервер на который устанавливаем Clickhouse |
| vector-01     | сервер на который ставим Vector            |
| lighthouse-01 | сервер на который ставим lighthouse |

SSH Ключи для подключения переданы в просессе разворачивание хостов 

## Файлы и шаблоны
|   |   |
|---|---|
requirements.yml | Описываются подключаемые репозитарии с ролями
 
## Play  
Плей | Таска/Хендлеры |Описание
---: | --- | --- 
Install Nginx | - | Запускает роль установки Nginx
Install LightHouse | - | Запускает роль установки LightHouse
Install Clickhouse | - | Запускает роль установки Clickhouse
Install Vector| - | Запускает роль установки Vector  
