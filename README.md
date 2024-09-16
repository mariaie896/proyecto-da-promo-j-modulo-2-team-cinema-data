
# Proyecto grupal Módulo 2

Este proyecto es un ejercicio académico grupal que contiene el código creado en respuesta a mejorar la calidad del contenido y satisfacción de los usuarios de una plataforma de streaming ficticia llamada *DataStream*.

Aplicaremos técnicas de análisis de datos para identificar cuáles son las películas y cortometrajes más populares y mejor valorados desde 2000 hasta la fecha. Esto ayudará a *DataStream* a tomar decisiones informadas sobre qué contenido promocionar y destacar en su plataforma.

Para ello, utilizaremos técnicas de web scraping para extraer información de fuentes como la API de MoviesDataset, IMDB y Wikipedia. Una vez que tengamos la información necesaria, la almacenaremos en una base de datos y realizaremos consultas.

### Nombre del equipo:

#### cinEMA Data

### Nombre del proyecto:

###### Proyecto CinemExtract: 
Explorando el Séptimo Arte a través de Datos y Tecnología

<img src="https://github.com/elenacrami/mi_primer_repo/blob/main/cine.png" width="200px" />

### Componentes del equipo:

#### Elena Craven,  Andrea González, María Ibáñez

### Propósito:

- La comprobación de la adquisición de conocimiento de Python y SQL
- El uso de control de versiones en equipo para aprender las ventajas y conflictos que genera.
- La implementación de Scrum como marco de referencia para el desarrollo del producto, basándonos siempre en los valores de Agile como puntos clave del trabajo en equipo y la mejora continua.
- La mejora de la comunicación colaborativa entre los miembros del equipo.
- La mejora de habilidades de comunicación individual en público al exponer el proyecto en la sesión final.

### Fases:

**1.  Fase 1: Extracción de Datos**\
**2.  Fase 2: Organización y Almacenamiento de Datos**\
**3.  Fase 3: Análisis y Consultas de Datos** 

A su vez, la fase 1 de *Extracción de Datos* engloba cuatro extracciones desde: la API de CinemaExtract, IMBD y Wikipedia.

**1.1.** Hacemos solicitudes a la API proporcionada y extraemos una muestra de los datos relevantes sobre las películas ya que trabajamos en el período de tiempo comprendido desde el año 2000 hasta el 2015 incluido. 

<img src="https://github.com/elenacrami/mi_primer_repo/blob/main/IMDB_Log.png" width="200px" />

**1.2.** Obtenemos información más detallada sobre las películas de la página web IMBD, para lo que usamos la herramienta de automatización web Selenium.

**1.3.** Extraemos información detallada de los 10 principales actores de cada una de las películas extraídas.

**1.4.** Por último, trabajamos con la biblioteca BeautifulSoup para extraer datos relevante de las tablas de los premios Oscar desde 2000:
<img src="https://github.com/elenacrami/mi_primer_repo/blob/main/oscar.jpg" width="200px" />

**NOTA:** Almacenamos la información en una lista de tuplas donde cada tupla corresponderá a una película. 


En la fase 2 de *Organización y Almacenamiento de Datos* hemos normalizado los datos y definido 4 tablas:
    
    -  **peliculas_generos**\
    *Columnas*
    titulo: Nombre de la producción audiovisual 
    id: Id único de la película IMDB y API
    tipo: Tipo de producción audivisual(movie, short, TV series, Episode). PK
    año: Año de realización
    genero: Genero de la producción
    TOTAL REGISTROS = 825

    - **peliculas_IMDB**\
    Puntuación: Valoración de la película
    Dirección : Director de pelicula
    Guionista: Guionistas de la película
    Argumento: Descripción de la película
    Nombre_de_la_película: Titulo de la película
    ID_de_la_película: Id único de la película IMDB. PK
    Genero: Genero de la producción
    TOTAL REGISTROS = 611


    - **datos_oscars**\
     *Columnas*
    ceremonia: Fecha de la ceremonia. PK
    mejor_pelicula: Mejor pelicula ganadora
    mejor_director : Mejor director del año
    mejor_actor: Mejor actor del año
    mejor_actriz: Mejor actriz del año
    TOTAL REGISTROS = 96

   
    - **actor_imdb**\
    *Columnas*
    Nombre: corresponde a nombre del actor o actriz principales de la película
    Nacimiento : Fecha de nacimiento 
    Otras_Obras : Obras adicionales por las que ha sido reconocido
    Roles : Roles desarrollados en el ambito audiovisual
    Premios : Cantidad de premios obtenidos
    Pelicula: Pelicula entre el 2000 a 2015 en la que ha actuado
    ID_Pelicula : Identificación única de la película en IMDB
    Genero_Pelicula: Genero de la pelicula
    Id_Actor: Identificación única del actor. PK
    TOTAL REGISTROS = 5252


En la *Análisis y Consultas de Datos* hemos dado respuesta a algunas de las preguntas desarrolladas por el cliente a través de MySql.


#### Links:

[Link IMBD](https://www.imdb.com/)

[Link Academy Awards Wikipedia](https://en.wikipedia.org/wiki/Academy_Awards)

### Instalaciones: 

#### Python:

**1.Descarga el instalador:** Visita la web oficial de [Python](https://www.python.org/) y descarga el instalador correspondiente a tu sistema operativo (Windows, macOS, Linux).

**2.Ejecuta el instalador:** Sigue las instrucciones para descargarte las extensiones necesarias.

#### Bibliotecas:

**1.Instalación:** Para comenzar a utilizar Selenium y BeautifulSoup en tu proyecto de Python, ejecuta los comandos referenciados en la sintáxis en tu terminal.

**2.WebDriver:** Descarga el WebDriver correspondiente a tu navegador (Chrome, Firefox, etc.), ya que permitirá a Selenium controlar el navegador de forma automatizada.

**3.Uso:** Una vez instaladas las bibliotecas y el WebDriver, podrás importarlas en tus scripts de Python y comenzar a realizar tareas de web scraping.

*Selenium*
<img src="https://github.com/elenacrami/mi_primer_repo/blob/main/Selenium_Logo.png" width="200px" />

*BeautifulSoup*
<img src="https://github.com/elenacrami/mi_primer_repo/blob/main/tap-beautifulsoup.png" width="200px" />

#### Herramienta de gestión de base de datos: MYSQL Workbench

**1.Descarga el instalador:** Visita la página oficial de [MySQL](https://dev.mysql.com/) y descarga el instalador correspondiente a tu sistema operativo (Windows, macOS, Linux).

**2.Ejecuta el instalador:** Sigue las instrucciones del asistente de instalación, seleccionando las opciones que se adapten a tus necesidades.

**3.Configura MySQL:** Una vez instalado, configura el servidor MySQL estableciendo una contraseña segura para el usuario root y otros parámetros necesarios.

<img src="https://github.com/elenacrami/mi_primer_repo/blob/main/Mysql_logo.png" width="200px" />

#### Sintáxis:

**!pip install pandas**

**!pip install beautifulsoup4**

**!pip install selenium**

**!pip install webdriver-manager**

### Importación de librerías:

Importamos librerías y herramientas en Python para realizar solicitudes a API's de manera efectiva, así como para web scraping y manipulación de datos.

**-** *Requests*  para hacer solicitudes HTTP y descargar la página web.

**-** *Pandas* para manipulación y análisis de datos en Python.

**-** *BeautifulSoup* para analizar el contenido HTML.

**-** *Select* para interactuar con elementos select en páginas web.

**-** *Sleep* para pausar la ejecución del programa por un número de segundos.

**-** *ChromeDriverManager* gestiona la instalación del controlador de Chrome.

**-** *Keys* es útil para simular eventos de teclado en Selenium.

**-** Bibliotecas para la automatización de navegadores web con Selenium.

**-** Bibliotecas para pausar la ejecución.

**-** Configuraciones que establece una opción de Pandas para mostrar todas las columnas de un *DataFrame*.

#### Sintáxis:

**import pandas as pd**

**from bs4 import BeautifulSoup**

**import requests**

**from selenium import webdriver**

**from webdriver_manager.chrome import ChromeDriverManager**  

**from selenium.webdriver.common.keys import Keys**

**from selenium.webdriver.support.ui import Select**

**from time import sleep**

**pd.set_option('display.max_columns', None)**

### Conceptos básicos:

- **API** (*Application Programming Interfaces*) son conjuntos de reglas y protocolos que permiten a diferentes aplicaciones o sistemas comunicarse entre sí. Éstas definen cómo se pueden solicitar y compartir datos o funcionalidades de un sistema a otro de manera estructurada y estandarizada.

- **Web Scraping** Es una técnica utilizada para extraer información de sitios web de manera eficiente y automatizada. Consiste en escribir un programa o utilizar herramientas para recorrer y analizar el código HTML o XML de una página web, y extraer los datos relevantes para recopilar datos para análisis.

- **Beautiful Soup**: Es una biblioteca muy utilizada para el análisis y extracción de datos de páginas web. Proporciona una interfaz fácil de usar para analizar y manipular el HTML y XML de una página web, y permite buscar elementos utilizando etiquetas, atributos y contenido, facilitando la extracción de datos específicos.

- **Selenium**: Es una biblioteca que se utiliza para automatizar el navegador web y simular las acciones de un usuario, como hacer clic en elementos, completar formularios, navegar por diferentes páginas y extraer información.

- **HTML** (*Hypertext Markup Language - Lenguaje de Marcado de Hipertexto*) se basa en una estructura jerárquica de etiquetas que se utiliza para estructurar y presentar el contenido de una página web, como texto, imágenes, enlaces, formularios y otros elementos interactivos.

### Ejemplos de código:
FALTAN IMÁGENES POR INTRODUCIR CÓDIGO

### Contacto:

<img src="https://github.com/elenacrami/mi_primer_repo/blob/main/gmail.png" width="100px" />

<elena.crami@gmail.com>

<mariaandreagg@gmail.com>

<maria.elvira8@gmail.com>


<img src="https://github.com/elenacrami/mi_primer_repo/blob/main/linkedin.png" width="100px" />

[LinkedIn Elena Craven Miñarro](https://www.linkedin.com/in/elenacravenmiñarro )

[LinkedIn Andrea González](https://www.linkedin.com/in/maria-andrea-gonzalezg/)

[LinkedIn María Ibáñez](https://www.linkedin.com/in/maría-ibáñez-a02051178)

