<h1>Proyecto grupal Módulo 2</h1>

Este proyecto es un ejercicio académico grupal que contiene el código creado en respuesta a mejorar la calidad del contenido y satisfacción de los usuarios de una plataforma de streaming ficticia llamada DataStream.

Nuestro proyecto consiste en aplicar técnicas de análisis de datos para identificar cuáles son las películas y cortometrajes más populares y mejor valorados desde 1900 hasta la fecha. Esto ayudará a DataStream a tomar decisiones informadas sobre qué contenido promocionar y destacar en su plataforma.

El objetivo es identificar las películas y cortos más populares en la plataforma DataStream, basándonos en criterios como las calificaciones, el número de visualizaciones y las reseñas de los usuarios.

Para ello, utilizaremos técnicas de web scraping para extraer información de fuentes como la API de MoviesDataset, IMDB, Rotten Tomatoes y Wikipedia. Una vez que tengamos la información necesaria, la almacenaremos en una base de datos y realizaremos consultas para identificar las películas y cortos más populares y mejor valorados.

<h3>Nombre del equipo: </h3>

<h4>cinEMA Data</h4>

<h3>Nombre del proyecto: </h3>

<h4>Proyecto CinemExtract: 
Explorando el Séptimo Arte a través de Datos y Tecnología</h4>

**IMAGEN A INSERTAR LOGO CINE**

<h3>Componentes del equipo: </h3>

<h4> Elena Craven,  Andrea González, María Ibáñez</h4>

<h3>Propósito: </h3>

El propósito de la creación del código para este proyecto se define en los siguientes puntos:
- La comprobación de la adquisición de conocimiento de Python y SQL
- El uso de control de versiones en equipo para aprender las ventajas y conflictos que genera.
- La implementación de Scrum como marco de referencia para el desarrollo del producto, basándonos siempre en los valores de Agile como puntos clave del trabajo en equipo y la mejora continua.
- La mejora de la comunicación colaborativa entre los miembros del equipo.
- La mejora de habilidades de comunicación individual en público al exponer el proyecto en la sesión final.

<h3>Estructura del proyecto: </h3>

<h4>Historias de usuario: </h4>

<h6>Historia 1: Selección de Herramientas para la Recolección de Datos</h6>

<h6>Historia 2: Decisión de la Estructura de la Base de Datos</h6>

<h6>Historia 3: Extracción de Datos de APIs y Web Scraping</h6>

<h6>Historia 4:  Inserción de Datos en la Base de Datos</h6>

<h6>Historia 5: Realización de Consultas para Análisis de Datos</h6>

<h6>Historia 6: Presentación de Resultados</h6>

<h4>Fases: </h4>

**1.  Fase 1: Extracción de Datos**
**2.  Fase 2: Organización y Almacenamiento de Datos**
**3.  Fase 3: Análisis y Consultas de Datos** 

A su vez, la fase 1 de *Extracción de Datos* engloba tres tareas ya que extraemos datos de la API de CinemaExtract, de películas y actores con Selenium, así como Tablas de los Premios Oscar con Beautiful Soup.

Hacemos solicitudes a la API proporcionada y extraemos una muestra de los datos relevantes sobre las películas ya que trabajamos en el período de tiempo comprendido desde el año 2000 hasta el 2015 incluido. 

En el segundo paso obtenemos información más detallada sobre las películas de la página web IMBD, para lo que usamos la herramienta de automatización web Selenium:
- Puntuación de IMDB (en caso de que la tenga).
- Dirección (director/a o directores/as de cada película).
- Guionistas (de cada película).
- Argumento.
- Nombre de la película.
- Id de la película.

El siguiente paso es extraer información detallada de los 10 principales actores de cada una de las películas extraídas:
Nombre.
- Año de nacimiento.
- ¿Por qué es conocido?
- ¿Qué hace?
- Premios.

Por último, trabajamos con la biblioteca BeautifulSoup para extraer datos relevante de las tablas de los premios Oscar desde 2000:
- Fecha de la ceremonia.
- Mejor película.
- Mejor director.
- Mejor actor.
- Mejor actriz.

**NOTA:** Almacenamos la información en una lista de tuplas donde cada tupla corresponderá a una película. 

**FASES 2 Y 3 BBDD/SQL**
**+ IMAGEN SQL A INSERTAR**

<h3>Links: </h3>

[Link IMBD](https://www.imdb.com/)

[Link Academy Awards Wikipedia](https://en.wikipedia.org/wiki/Academy_Awards)

**BONUS** [Link Rotten Tomatoes](https://www.rottentomatoes.com/)

**IMAGEN LOGO IMBD & ROTTEN TOMATOES A INSERTAR**

<h3>Instalaciones: </h3>

<h4>Python: </h4>

1. Ve al sitio web oficial de [Python](https://www.python.org/)
2. Descarga la versión más reciente de Python 3.
3. Sigue las instrucciones de instalación en tu sistema operativo (*Windows, Mac o Linux*)

<h4>Bibliotecas: </h4>

<h6>sintáxis:</h6>

**!pip install pandas**

**!pip install beautifulsoup4**

**!pip install selenium**

**!pip install webdriver-manager**

<h3>Importación de librerías: </h3>

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

<h6>sintáxis:</h6>

**import pandas as pd**

**from bs4 import BeautifulSoup**

**import requests**

**from selenium import webdriver**

**from webdriver_manager.chrome import ChromeDriverManager**  

**from selenium.webdriver.common.keys import Keys**

**from selenium.webdriver.support.ui import Select**

**from time import sleep**

**pd.set_option('display.max_columns', None)**

**IMAGEN A INSERTAR LOGO BEAUTIFULSOUP**
**IMAGEN A INSERTAR LOGO SELENIUM**
**IMAGEN A INSERTAR LOGO PANDAS**

<h3>Conceptos básicos:</h3> 

- **API** (*Application Programming Interfaces*) son conjuntos de reglas y protocolos que permiten a diferentes aplicaciones o sistemas comunicarse entre sí. Éstas definen cómo se pueden solicitar y compartir datos o funcionalidades de un sistema a otro de manera estructurada y estandarizada.

- **Web Scraping** Es una técnica utilizada para extraer información de sitios web de manera eficiente y  automatizada. Consiste en escribir un programa o utilizar herramientas para recorrer y analizar el código HTML o XML de una página web, y extraer los datos relevantes de forma estructurada con diversas finalidades, como recopilar datos para análisis, realizar comparaciones de precios, monitorizar contenido u obtener información de noticias, entre otras aplicaciones.

- Existen varias bibliotecas en Python que son ampliamente utilizadas para realizar *web scraping*. En En este proyecto hacemos uso de BeautifulSoup y Selenium.

- **Beautiful Soup**: Es una biblioteca muy utilizada para el análisis y extracción de datos de páginas web. Proporciona una interfaz fácil de usar para analizar y manipular el HTML y XML de una página web, y  permite buscar elementos utilizando etiquetas, atributos y contenido, lo que facilita la extracción de datos específicos.

- **Selenium**: Es una biblioteca que se utiliza para automatizar el navegador web y simular las acciones de un usuario, como hacer clic en elementos, completar formularios, navegar por diferentes páginas y extraer información. . Selenium es útil cuando el contenido que se desea extraer es generado dinámicamente a través de JavaScript u otras interacciones del lado del cliente. Proporciona funciones para interactuar con elementos de la página, hacer clic en botones, enviar formularios y más.

- **HTML** (*Hypertext Markup Language - Lenguaje de Marcado de Hipertexto*) se basa en una estructura jerárquica de etiquetas/elementos que tienen un propósito específico y se colocan dentro del código HTML para darle formato. HTML se utiliza para estructurar y presentar el contenido de una página web, como texto, imágenes, enlaces, formularios y otros elementos interactivos.

<h3>Ejemplos de código: </h3> FALTAN IMÁGENES POR INTRODUCIR CÓDIGO
<h3>Contacto: </h3>

<elena.crami@gmail.com>

<mariaandreagg@gmail.com>

<maria.elvira8@gmail.com>



[LinkedIn Elena Craven Miñarro](https://www.linkedin.com/in/elenacravenmiñarro )

[LinkedIn Andrea González](https://www.linkedin.com/in/maria-andrea-gonzalezg/)

[LinkedIn María Ibáñez](https://www.linkedin.com/in/maría-ibáñez-a02051178)
