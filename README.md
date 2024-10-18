## SITIO WEB - DIGICERT
El proyecto está desarrollado en WordPress, utilizando una base de datos MySQL. Todos los elementos esenciales del sitio, incluyendo plugins, temas, archivos subidos, fuentes y archivos de idioma (la carpeta wp-content), están respaldados en Google Drive para garantizar su seguridad y disponibilidad.

## Requisitos

Los requisitos recomendados para el compilado de Wordpress:

- Tener Instalado CURL.
- Contar con un Servidor Web (Ej.: XAMPP, Apache, Nginx).
- MySQL
- PHP 5.6 o superior
- Git Instalado
- WP-CLI Instalado

### PASOS DE INSTALACION EN LOCAL
 
### Using pages

Clonar repositorio en tu ordenador

```
git clone https://github.com/kikeProgramer007/digicert-website.git
```
<b>PASO 2:</b> Creación de la base de datos

- Crea la base de datos con el nombre de “digicert_website_db”
- Importa la base de datos, el backup sql está en la raíz de proyecto con el nombre de “digicert_website_db.sql”

<b>PASO 3:</b> Crear el wp-config.php para establecer conexión a bd

> **¡Importante!**  Debes tener instalado WP-CLI.

Establece las credencioales de conexion a la bd:

**Windows(cmd o PowerShell)**

```
wp config create --dbname=digicert_website_db --dbuser=root --dbpass= --dbhost=localhost --path=C:\xampp\htdocs\digicert-website --allow-root
```
**Linux(consola)**

```
wp config create --dbname=digicert_webisite_db --dbuser=root --dbpass= --dbhost=localhost --path=/var/www/html/digicert-website --allow-root
```
<b>PASO 4:</b> Actualización de la URL Base con WP-CLI

> **¡Nota!** Utiliza una de estas opciones: PowerShell,Git Bash o Linux.

Estar en modo administrador e ir a la ruta del proyecto por ejemplo en XAMPP:

```
cd C:\xampp\htdocs\digicert-website
```

Siempre se recomienda hacer un “simulacro” antes de realizar la búsqueda y el reemplazo reales. Esto mostrará cuántas instancias se cambiarán

```
wp search-replace --dry-run 'http://localhost:8082/digicert/' 'http://localhost:8082/digicert-website/'
```

Ahora, para realizar la búsqueda y reemplazo real con WP-CLI, elimina el parámetro -dry-run
```
wp search-replace 'http://localhost:8082/digicert/' 'http://localhost:8082/digicert-website/'
```