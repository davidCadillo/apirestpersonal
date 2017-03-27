# API Rest en Codeigniter

Este es un ejemplo sencillo de una API Rest usando la [versión 3.1.4](https://github.com/bcit-ci/CodeIgniter/archive/3.1.4.zip) de Codeigniter,
además de lo más importante, la librería [codeigniter restserver](https://github.com/chriskacerguis/codeigniter-restserver) que facilita la construcción de las APIRest.
## Detalles técnicos
La base de datos, de nombre **personal**, tiene una sola tabla llamada ___personas___, el cual tiene 8 campos que son los siguientes:
* id
* name
* surname1
* surname2
* email
* phone
* marital_status
* hobbies

La API Rest soporta los 4 métodos principales del protocolo **HTTP**: GET, POST, PUT, DELETE. El método GET por defecto lista
toda la información de la base de datos, además, si se le pasa un número en la URL se obtiene solo los datos según el id encontrado
en la base de datos. Por ejemplo, para obtener el 1 elemento de la base de datos se consultaría de la siguiente forma: 
```
http://hostname:port/apirestci/personas/1 
```
>
> `Las operaciones de los métodos PUT y DELETE se hacen exactamente igual, solo que poniendo el verbo adecuado.`

Tanto para los métodos POST y PUT, los datos se pasan en formato JSON, un ejemplo de ello sería de la siguiente forma:
```json
{    
    "name": "Roger",
    "surname1": "Federer",
    "surname2": "Federer",
    "email": "rogerfederer@gmail.ch",
    "phone": "+51977124288",
    "marital_status": "married",
    "hobbies": "tennis, soccer, videogames"
}

```

La API Rest se ha construido bajo las siguiente especificaciones de software:
* Ubuntu 16.04
* Apache 2.4
* MySQL 5.7.17
* PHP 7.1.

Se ha usado las siguientes herramientas para facilitar la codificación y funcionamiento de la API Rest.
* PhpStorm `un IDE para PHP`
* Postman `para probar los métodos POST, PUT y DELETE.`
* Generatedata `un lorem ipsum para generar automáticamente datos.`
## Posibles problemas o incovenientes
A continuación se presentan algunas soluciones a problemas inherentes a codeigniter.
### 1. Quitar peticiones index.php de codeigniter
Por norma general al instalar codeigniter, index.php recibe todas las peticiones de tal manera que para llamar al controlador
por defecto(welcome) la url quedaría de la siguiente forma:`http://hostname:port/index.php/welcome`. Esto no añade nigún problema
a la programación de la API Rest, pero no es muy vistoso, así que para eliminarlo ofrezco una de las tantas soluciones que hay.
Ya que no es seguro que esto funcione en tu propio entorno, lo mejor es consultar la documentación de codeigniter o en stackoverflow.
#### Configurar un .htaccess 
Es necesario añadir un fichero .htaccess para eliminar las peticiones a index.php. Este archivo ha de añadirse a la raíz del proyecto.
Este archivo ya figura en el proyecto, sin embargo no garantiza que eso vaya a resolver el problema.
#### Configurar el archivo config.php
Hay que modificar las siguientes lineas en el archivo config/config.php
```php
//Reemplazar apirestci por el nombre de tu proyecto
$config['base_url'] = 'http://localhost/apirestci/';
$config['index_page'] = '';
```
### 2. Habilitar el módulo rewrite
Para los que usan alguna distribución linux y no usan xampp, el módulo rewrite de apache está deshabilitado. Esto es importante
a la hora de querer realizar el punto 1. Esto se puede comprobar ejecutando la función phpinfo() de tu navegador y buscar rewrite.
De no existir hay que habilitarlo haciendo lo siguiente:
```bash
sudo a2enmod rewrite
sudo service apache2 restart
```
En caso de usar Windows es muy raro de que no esté habilitado, en otro caso habrá que editar el archivo `httpd.conf`
### 3. Evitar autoloads 
Si vamos a usar algún recurso intensamente, lo mejor que se puede hacer es cargarlo por defecto, de esta manera se tiene
un acceso global, aquí se pone algunos ejemplos. Para ello ha de modificarse el `config/autoload.php`:
```php
   $autoload['libraries'] = array('database');
   $autoload['model'] = array('personas_model');
```
### 4. Algunas solicitudes dan error y muestran la lógica de la programación
Aunque la programación no es perfecta ni mucho menos, esto sucede escencialmente porque el modo depuración está activado, para
desabilitarlo hay que modificar el archivo `config/database.php` y setear a false el modo debug:
```php
    //'db_debug'     => (ENVIRONMENT !== 'production'),
    'db_debug'     => false,
```
