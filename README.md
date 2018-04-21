# PX4 (pixhawk lite)

## Step 1: Начальная настройка & Конфигурации
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

## Step 2: Набор инструментов для разработки

Мы будем рассматривать установку на ОС Ubuntu Linux 16.04.3 LTS. Данная версия является предпочтительной, так как позволяет собрать все поддерживаемые вещи:
+ NuttX based hardware: [Pixhawk Series](https://docs.px4.io/en/flight_controller/pixhawk_series.html), [Crazyflie](https://docs.px4.io/en/flight_controller/crazyflie2.html), [Intel® Aero Ready to Fly Drone](https://docs.px4.io/en/flight_controller/intel_aero.html)
+ [Qualcomm Snapdragon Flight hardware](https://docs.px4.io/en/flight_controller/snapdragon_flight.html)
+ Linux-based hardware: [Raspberry Pi 2/3](https://docs.px4.io/en/flight_controller/raspberry_pi_navio2.html), [Parrot Bebop](https://docs.px4.io/en/flight_controller/bebop.html)
+ Simulation: [jMAVSim SITL](https://dev.px4.io/en/simulation/jmavsim.html)
+ Simulation: [Gazebo SITL](https://dev.px4.io/en/simulation/gazebo.html)
+ Simulation: [ROS with Gazebo](https://dev.px4.io/en/simulation/ros_interface.html)

### Bash script

Все ниже приведенный скрипты устанавливают Qt Creator IDE, Ninja Build System, Common Dependencies, FastRTPS и загружают исходники PX4 на ваш компьютер. Данные скрипты были тестированы на чистой Ubuntu 16.04 LTS. Поэтому что-то может не рабоать или рабоать некорректно, если было установлено заранее. (желательно устанавливать на чистую ОС)

Скрипты:
+ [ubuntu_sim_common_deps.sh](https://raw.githubusercontent.com/PX4/Devguide/master/build_scripts/ubuntu_sim_common_deps.sh): [Common Dependencies](https://dev.px4.io/en/setup/dev_env_linux_ubuntu.html#common-dependencies), [jMAVSim simulator](https://dev.px4.io/en/setup/dev_env_linux_ubuntu.html#jmavsim)  
        Этот скрипт содержит общие зависимост для всех сборок. Он автоматически загружается и запускается, когда вы запускаете другие ниже опианные скрипты
+ [ubuntu_sim.sh](https://raw.githubusercontent.com/PX4/Devguide/master/build_scripts/ubuntu_sim.sh): ubuntu_sim_common_deps.sh + [Gazebo8](https://dev.px4.io/en/setup/dev_env_linux_ubuntu.html#gazebo) симулятор. 
+
+

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
