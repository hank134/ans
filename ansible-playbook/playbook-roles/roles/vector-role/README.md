Vector-role
=========

Установка и запуск как службы Vector для передачи логов в Clickhouse


Role Variables
--------------

Переменная | Описание | Значение по умолчанию
--- | --- | ---
vector_version| Версия Vector для установки | 0.21.2
clickhouse_host_ip | IP хоста с Clickhouse для передачи логов |51.250.92.198


Dependencies
------------

Требуется установка ClickHouse

Example Playbook
----------------

```
    - hosts: all
      roles:
        - vector-role
```
License
-------

BSD

Author Information
------------------

Netology Student
