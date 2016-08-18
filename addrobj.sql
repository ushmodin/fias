create table addrobj (
	AOGUID varchar(36) -- Глобальный уникальный идентификатор адресного объекта 
	,FORMALNAME varchar(120) -- Формализованное наименование
	,REGIONCODE varchar(2) -- Код региона
	,AUTOCODE varchar(1) -- Код автономии
	,AREACODE varchar(3) -- Код района
	,CITYCODE varchar(3) -- Код города
	,CTARCODE varchar(3) -- Код внутригородского района
	,PLACECODE varchar(3) -- Код населенного пункта
	,STREETCODE varchar(4) -- Код улицы
	,EXTRCODE varchar(4) -- Код дополнительного адресообразующего элемента
	,SEXTCODE varchar(3) -- Код подчиненного дополнительного адресообразующего элемента
	,OFFNAME varchar(120) -- Официальное наименование
	,POSTALCODE varchar(6) -- Почтовый индекс
	,IFNSFL varchar(4) -- Код ИФНС ФЛ
	,TERRIFNSFL varchar(4) -- Код территориального участка ИФНС ФЛ
	,IFNSUL varchar(4) -- Код ИФНС ЮЛ
	,TERRIFNSUL varchar(4) -- Код территориального участка ИФНС ЮЛ
	,OKATO varchar(11) -- OKATO
	,OKTMO varchar(11) -- OKTMO
	,UPDATEDATE date -- Дата  внесения записи
	,SHORTNAME varchar(10) -- Краткое наименование типа объекта
	,AOLEVEL integer -- Уровень адресного объекта 
	,PARENTGUID varchar(36) -- Идентификатор объекта родительского объекта
	,AOID varchar(36) -- Уникальный идентификатор записи. Ключевое поле.
	,PREVID varchar(36) -- Идентификатор записи связывания с предыдушей исторической записью
	,NEXTID varchar(36) -- Идентификатор записи  связывания с последующей исторической записью
	,CODE varchar(17) -- Код адресного объекта одной строкой с признаком актуальности из КЛАДР 4.0. 
	,PLAINCODE varchar(15) -- Код адресного объекта из КЛАДР 4.0 одной строкой без признака актуальности (последних двух цифр)
	,ACTSTATUS integer -- Статус исторической записи в жизненном цикле адресного объекта:
 -- 0 – не последняя
 -- 1 - последняя
	,CENTSTATUS integer -- Статус центра
	,OPERSTATUS integer -- Статус действия над записью – причина появления записи (см. описание таблицы OperationStatus):
 -- 01 – Инициация;
 -- 10 – Добавление;
 -- 20 – Изменение;
 -- 21 – Групповое изменение;
 -- 30 – Удаление;
 -- 31 - Удаление вследствие удаления вышестоящего объекта;
 -- 40 – Присоединение адресного объекта (слияние);
 -- 41 – Переподчинение вследствие слияния вышестоящего объекта;
 -- 42 - Прекращение существования вследствие присоединения к другому адресному объекту;
 -- 43 - Создание нового адресного объекта в результате слияния адресных объектов;
 -- 50 – Переподчинение;
 -- 51 – Переподчинение вследствие переподчинения вышестоящего объекта;
 -- 60 – Прекращение существования вследствие дробления;
 -- 61 – Создание нового адресного объекта в результате дробления
 -- 
	,CURRSTATUS integer -- Статус актуальности КЛАДР 4 (последние две цифры в коде)
	,STARTDATE date -- Начало действия записи
	,ENDDATE date -- Окончание действия записи
	,NORMDOC varchar(36) -- Внешний ключ на нормативный документ
	,LIVESTATUS smallint -- Признак действующего адресного объекта
	,CADNUM varchar(100) -- Кадастровый номер
	,DIVTYPE integer -- Тип адресации:
 -- 0 - не определено
 -- 1 - муниципальный;
 -- 2 - административно-территориальный
);
