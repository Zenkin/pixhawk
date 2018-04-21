# pixhawk
## Step 1: Development Toolchain
1. On the command prompt enter:

        sudo usermod -a -G dialout $USER
2. Logout and login again

3. Download [ubuntu_sim_nuttx.sh](https://github.com/Zenkin/pixhawk/blob/master/ubuntu_sim_nuttx.sh)

4. Run the script in a bash shell:

        source ubuntu_sim_nuttx.sh
    Wait a few minutes ~ 5-10 min, after restart your computer to complete installation of PX4 development toolchain

5. Download QGroundControl.AppImage

6. Install using the terminal commands:

        chmod +x ./QGroundControl.AppImage
        ./QGroundControl.AppImage (or double click)

## Начальная настройка & Конфигурации
Для начала рекомендуется использовать базовое оборудование, которое будет описано ниже (или похожее), а также использовать "default" конфигурацию airframe.

PX4 может использовать широкий диапазон оборудования, но новым разработчикам рекомендуется использовать стандартные натсройки.

### Основное оборудование

Рекомендуемое оборудование ниже:
+ Пульт дистанционного управления для безопасности (напрмер, Taranis Plus)
+ Ноутбук для разработки с установленной ОС Ubuntu Linux 16.04 or later
+ Наземная станция управления (любой планшет на Android)
+ Защитные очки
+ Закрепить квадрокоптер тросами для большей безопасности и проведения опасных тестов

### Конфигурации квадрокоптера

Для настройки квадрокоптера:
+ Скачайте [QGroundControl Daily Build](https://docs.qgroundcontrol.com/en/releases/daily_builds.html)
+ [Basic Configuration](https://docs.px4.io/en/config/) (PX4 Guide) объясняет, как выполнить бузовую конфигурацию
+ [Parameter Configaration](https://docs.px4.io/en/advanced_config/parameters.html) объясняет, как найти и поменять нужные вам параметры

#### Базовая конфигурация

Настройка осуществляется с помощью QGroundControl и состоит из следующих основных шагов:
+ Выбор корпуса летательного аппарата
+ Определение ориентации автопилота и его датичиков, а также их калибровка
+ Калибровка пульта дистанционного управления (опционально, PX4 может летать, используя QGC на планшете или компьюторе)
+ Выбрать переключатель, который будет менять режимы полета (опционально для пульта ДУ)

#### Конфигурация параметров

Эти параметры меняют редко (например, когда добавляют новый БПЛА)

##### Поиск параметров

+ Вы можете искать параметры, используя поле Search

  ![](http://docs.px4.io/images/qgc/setup/parameters_search.jpg "")
+ Вы также можете просматривать группы настроек, используя кнопки в левой части

  ![](https://docs.px4.io/images/qgc/setup/parameters_px4.jpg "")
  
##### Изменение параметров

Для изменения значения параметра необходимо нажать на строку с его именем, далее появится вспомогательное окно

![](https://docs.px4.io/images/qgc/setup/parameters_changing.png "")

ВНИМАНИЕ! Зачастую необходимо перезапустить контроллер для того, чтобы изменения вступили в силу

##### Инструменты

![](https://docs.px4.io/images/qgc/setup/parameters_tools_menu.png "")

В данном разделе (Tools) доступны дополнительные опции
+ Обновить (refresh)

  Обновляет все параметры, запросив их у нашего БПЛА
+ Сбросить все значения по умолчанию (reset all to defaults)

  Сбрасывает все параметры до их исходных значений по умолчанию
+ Загрузка с файла/сохранение в файл

  Загружает параметры с файла или сохраняет их в файл
+ Clear RC to Param

  Сбрасывает все связи между RC-передатчиком и параметрами
+ Перезгрузка БПЛА
