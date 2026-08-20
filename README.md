# Mi Portafolio Web - Modelo N-Capas (JSP + MySQL)

Este proyecto es un sitio web de portafolio personal desarrollado para la asignatura de **Desarrollo Web II**. La aplicación está estructurada bajo una arquitectura de **N-Capas** e integra tecnologías frontend y backend con persistencia de datos mediante MySQL.

---

##  Tecnologías Utilizadas

* **Frontend:** HTML5, CSS3, Bootstrap 5.
* **Backend:** Java, JavaServer Pages (JSP), Servidores HTTP Java (Servlets).
* **Servidor Web / Servidor de Aplicaciones:** Apache Tomcat (versión 10 u 11).
* **Entorno de Ejecución Java:** Java JDK 17 o superior.
* **Base de Datos:** MySQL (Gestión de persistencia con conector JDBC).
* **Control de Versiones:** Git & GitHub.

---

##  Estructura del Proyecto (Modelo N-Capas)

1. **Capa de Presentación (`index.jsp`, `css/styles.css`):**
   * Diseñada con HTML5 y Bootstrap 5 para garantizar una interfaz moderna y adaptativa.
   * Procesa la vista que se renderiza dinámicamente en el navegador.

2. **Capa de Negocio / Lógica:**
   * Archivos JSP/Servlets que procesan la lógica del servidor, formatean la información y manejan las peticiones HTTP del cliente.

3. **Capa de Datos (`database.sql`, `WEB-INF/lib/mysql-connector-j.jar`):**
   * Conexión persistente a la base de datos MySQL a través del controlador JDBC para la lectura y gestión de la información.

---

##  Guía Paso a Paso para Despliegue e Instalación 

Para ejecutar esta aplicación en el equipo local, siga las instrucciones detalladas a continuación:

### Requisitos Previos
1. **Java Development Kit (JDK 17 o superior)** instalado.
2. **Servidor MySQL** activo (XAMPP, MySQL Workbench o MySQL Server).
3. **Apache Tomcat** (versión 10 u 11) instalado y configurado.

---

### Paso 1: Configurar la Base de Datos en MySQL
1. Abra su gestor de MySQL (por ejemplo, phpMyAdmin o MySQL Workbench).
2. Cree o importe la base de datos utilizando el archivo incluido en la raíz de este proyecto:
   * Archivo: `database.sql` (o `base de datos.sql`).
3. Verifique que las credenciales de conexión en los archivos JSP/Java coincidan con su servidor local (Usuario: `root`, Contraseña: la que corresponda a su entorno local).

---

### Paso 2: Copiar el Conector JDBC
1. Asegúrese de que el conector `mysql-connector-j-8.3.0.jar` se encuentre dentro de la carpeta:
   `WEB-INF/lib/` del proyecto.
2. *(Opcional)* Si su instalación de Tomcat lo requiere, copie el archivo `.jar` directamente en la carpeta `lib/` de Apache Tomcat.

---

### Paso 3: Despliegue del Proyecto en Apache Tomcat

1. **Ubicación del Proyecto:**
   * Copie la carpeta completa del proyecto (por ejemplo, `mi-portafolio`) dentro del directorio `webapps` de su instalación de Apache Tomcat.
   * *Ruta habitual:* `C:\Program Files\Apache Software Foundation\Tomcat 10.1\webapps\` (o la ruta de su servidor Tomcat).

2. **Configuración de Variables de Entorno (si aplica):**
   * Verifique que la variable de sistema `JAVA_HOME` apunte correctamente a la ruta del JDK instalado (ej. `C:\Program Files\Java\jdk-17`).

3. **Iniciar Apache Tomcat:**
   * **En Windows:** Ejecute el archivo `startup.bat` ubicado en la carpeta `bin` de Tomcat (o inicie el servicio Tomcat desde Servicios).
   * **En Linux/Mac:** Ejecute `./startup.sh` desde la terminal en la carpeta `bin`.

4. **Acceder a la Aplicación en el Navegador:**
   * Abra su navegador e ingrese a la siguiente URL local:
     ```text
     http://localhost:8080/mi-portafolio/index.jsp
     ```
   * *(Nota: reemplace `8080` si su servidor Tomcat utiliza un puerto diferente).*

---

##  Solución a Desafíos Encontrados Durante el Desarrollo

1. **Error de Variable `JAVA_HOME` en Tomcat:**
   * *Problema:* Tomcat no iniciaba correctamente indicando que `JAVA_HOME` no estaba definida.
   * *Solución:* Se editó el archivo `setclasspath.bat` especificando la ruta exacta del JDK 17 e indicando la ruta del entorno de ejecución.

2. **Descarga Directa de Archivos JSP sin Renderizado:**
   * *Problema:* Al abrir directamente el archivo `index.jsp` en el navegador sin pasar por Tomcat, el navegador descargaba el archivo en lugar de ejecutar la lógica Java.
   * *Solución:* Se desplegó la aplicación correctamente dentro de `webapps` y se accedió mediante la dirección del servidor local `http://localhost:8080/...`.

---