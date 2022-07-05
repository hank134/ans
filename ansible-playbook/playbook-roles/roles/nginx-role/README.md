nginx-role
=========

Устанавливает NGinx

Role Variables
--------------

Переменная | Описание | Значение по умолчанию
--- | --- | ---
nginx_host_username | под кем запускать nginx | centos

Example Playbook
----------------

```
    - hosts: all
      roles:
        - nginx-role
```
License
-------

BSD

Author Information
------------------

Netology Student
