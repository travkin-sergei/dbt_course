# Учебный проект

## Создать проект
1. text
```
python -m venv .venv 
```
2. text
```bash
.venv\\scripts\\activate 
```
3. Запустить docker
4. text
```bash
dbt init dbt_course_practice
```
5. 
Пересоздание модели
```
dbt run
```

Проведение тестов
```
dbt test
```

Генерации документации
```
dbt docs generate
```
Просмотр документации
```
dbt docs serve
```