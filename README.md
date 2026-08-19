# Mi Portafolio Web - Modelo N-Capas (JSP + MySQL)

Este proyecto es un sitio web de portafolio personal desarrollado para la asignatura de **Desarrollo Web II**. Integra tecnologías frontend y backend bajo una arquitectura en N-Capas con persistencia de datos.

##  Tecnologías Utilizadas
* **Frontend:** HTML5, CSS3 (CSS Reset), Bootstrap 5.
* **Backend:** Java, JavaServer Pages (JSP), Apache Tomcat 11.
* **Base de Datos:** MySQL (Gestión de persistencia para proyectos y habilidades).
* **Control de Versiones:** Git y GitHub.

##  Estructura del Proyecto (N-Capas)
* **Capa de Presentación:** Páginas JSP y componentes de diseño responsivo estructurados con Bootstrap.
* **Capa de Negocio / Lógica:** Archivos JSP/Servlets procesando las solicitudes dinámicas.
* **Capa de Datos:** Conexión mediante JDBC a MySQL para la extracción de proyectos y habilidades.

##  Desafíos Encontrados y Soluciones

### 1. Configuración del Servidor Apache Tomcat y Variables de Entorno
* **Problema:** El servidor Tomcat presentaba el error `JAVA_HOME environment variable is not defined` o no iniciaba correctamente desde el entorno local.
* **Solución:** Se configuró manualmente la variable de entorno apuntando a la ruta exacta de la instalación de Java JDK (`Eclipse Adoptium JDK 17`) en `setclasspath.bat` para garantizar un despliegue correcto sobre el puerto `8080`.

### 2. Renderizado de Páginas JSP
* **Problema:** Al abrir los archivos dinámicos directamente en el navegador, el código JSP no se procesaba y el navegador descargaba el archivo en lugar de renderizarlo.
* **Solución:** Se desplegó la carpeta completa del proyecto dentro del directorio `webapps` de Apache Tomcat y se accedió mediante la URL local `http://localhost:8080/mi-portafolio/index.jsp`.

## 3. Configuración de la Base de Datos
1. Importar el script `bd_portafolio.sql` ubicado en la raíz del repositorio hacia MySQL.
2. Asegurarse de que el conector MySQL JDBC Driver (`mysql-connector-j.jar`) esté presente en la carpeta `WEB-INF/lib` de Tomcat.