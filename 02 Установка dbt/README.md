# Установка dbt и разворот учебного проекта на локальном компьютере

## Этап 1. Установка Docker Desktop, если не установлен

### На Windows
[Инструкция по установке](https://github.com/amelinvladimir/docker_course/blob/main/%D0%A3%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0%20Docker%20%D0%BD%D0%B0%20Windows%2010/README.md)
### На Mac OS
[Инструкция по установке](https://github.com/amelinvladimir/docker_course/blob/main/%D0%A3%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0%20Docker%20%D0%BD%D0%B0%20Mac%20OS/README.md)

## Этап 2. Установка Visual Studio Code (VS Code), если не установлен

#### Шаг 1. Скачиваем дистрибутив с [сайта](https://code.visualstudio.com/) и запускаем установку.
#### Шаг 2. При устанвоке оставляем все настройки по умолчанию (или делайте изменения по своему усмотрению).
#### Шаг 3. Запускаем Visual Studio Code.
![image](https://github.com/user-attachments/assets/23d4ada8-1426-4694-b747-9f3267169dd4)

## Этап 3. Запуск учебной бд

#### Шаг 1. Откройте VS Code.
#### Шаг 2. Откройте окно с терминалом в VS Code Если оно не открыто.
![image](https://github.com/user-attachments/assets/1f9b1804-1f8e-4265-bee8-54d02cc4362b)
![image](https://github.com/user-attachments/assets/da36a831-8d93-406c-97e4-18838c91bfd2)
#### Шаг 3. Запустите Docker Desktop, если он не запущен.
#### Шаг 4. В окне терминала выполните команду 
````console
docker run -p 4000:5432 -d --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword amelinvd/postgres_medium_db
````
Будет запущена СУБД Postgres, достпная для подключения по следующим параметрам:
````console
Host: localhost
Port: 4000
Database: demo
User: postgres
Password: mysecretpassword
````

## Этап 4. Установка python, если он не установлен

#### Шаг 1. Скачиваем дистрибутив с [официального сайта python](https://www.python.org/downloads/)
#### Шаг 2. Запускаем установку из дистрибутива.
При установке на ОС Windows поставьте галочку в пункте "Add python.exe to PATH":
![image](https://github.com/user-attachments/assets/e8199c37-3d2a-400d-bd0a-91a190e2e843)
#### Шаг 3. Проверяем установку.
Откройте PowerShell или окно Терминала и выполните команду 
````console
python
````
Вы должны увидеть сообщение похожее на:
![image](https://github.com/user-attachments/assets/1b714705-c91a-4905-b5c5-f2af08729317)


## Этап 5. Установка dbt

#### Шаг 1. Открыть окно терминала.

#### Шаг 2. (выполните этот шаг, если вам может понадобится другая версия python и другой набор библиотек в работе) Создаем виртуальное окружение python, выполнив команду
````console
python -m venv dbt-env
````

Активируем виртуальное окружение при каждом открытии терминала командой:
````console
source dbt-env/bin/activate			# для Mac и Linux OR
dbt-env\Scripts\activate			# для Windows
````

#### Шаг 3. Устанавливаем dbt для работы с postgres

````console
python -m pip install dbt-postgres
````
при установке на Windows может понадобится дополнительно вызвать команду 
````console
python.exe -m pip install --upgrade pip
````

## Шаг 6. Установка git, если не установлен

#### Шаг 1. Скачать дистрибутив с [официального сайта git](https://git-scm.com/downloads).
#### Шаг 2. Установить git из скачанного дистрибутива.

## Шаг 7. Скачивание и разворот учебного проекта
