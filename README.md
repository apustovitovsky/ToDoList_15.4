# ToDo List App

## Тестовое задание

Необходимо разработать простое приложение для ведения списка дел (ToDo List) с возможностью добавления, редактирования и удаления задач.

## Требования

### 1. Список задач:
- Отображение списка задач на главном экране.
- Задача должна содержать название, описание, дату создания и статус (выполнена/не выполнена).
- Возможность добавления новой задачи.
- Возможность редактирования существующей задачи.
- Возможность удаления задачи.
- Возможность поиска по задачам.

### 2. Загрузка списка задач из API:
- Загрузка задач осуществляется с **dummyjson API**: [https://dummyjson.com/todos](https://dummyjson.com/todos).
- При первом запуске приложение должно загрузить список задач из указанного json API.

### 3. Многопоточность:
- Обработка создания, загрузки, редактирования, удаления и поиска задач должна выполняться в фоновом потоке с использованием **GCD** или **NSOperation**.
- Интерфейс не должен блокироваться при выполнении операций.

### 4. CoreData:
- Данные о задачах должны сохраняться в **CoreData**.
- Приложение должно корректно восстанавливать данные при повторном запуске.

### 5. Система контроля версий:
- Используется система контроля версий **GIT** для разработки.

### 6. Юнит-тесты:
- Написаны юнит-тесты для основных компонентов приложения.

### 7. Совместимость:
- Убедитесь, что проект открывается и работает на **Xcode 15**.

### Бонусное задание:

### 8. Архитектура VIPER:
- Приложение построено с использованием архитектуры **VIPER**.
- Каждый модуль четко разделен на компоненты:
  - **View**
  - **Interactor**
  - **Presenter**
  - **Entity**
  - **Router**

## Используемые источники:
- [Ссылка на макеты Figma](https://www.figma.com/design/ElcIDP3PIp5iOE4dCtPGmd/%D0%97%D0%B0%D0%B4%D0%B0%D1%87%D0%B8?node-id=0-1&node-type=canvas&t=TwPJnfr4PqiaBY1N-11)
- [JSON API](https://drive.google.com/file/d/1MXypRbK2CS9fqPhTtPonn580h1sHUs2W/view?usp=sharing)
