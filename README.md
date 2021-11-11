
# Reciclando App delivery 
 ![alt text](https://github.com/BryanApolinario/reciclandoApp/blob/main/assets/img/delivery.png)
- ReciclAndo es una app que ayuda a crear un impacto y consientización ecologica mientras que ganas beneficios  que puedes ser canjeados en productos y descuentos  y con solo unas botellas de plastico podras hacer una gran diferencia en el cambio climatico.

### features 21/10/2021
- Configuracion del archivo main.dart
- Diseño de la pantalla de login
- Establecer el color por defecto para nuestra aplicación
- Interaccion con Widgets, Animaciones y Fuentes externas
- Sistemas animaciones en Flutter
- Tipos de fuentes personalizadas
- Navegacion de una pantalla a otra
- Diseño de la pantalla de registro
- Interaccion con los Widgets
- Configuracion Backend de la aplicación
- Creacion servidor en NodeJS
- Probando rutas del servidor
- ![50%](https://progress-bar.dev/50)



![Alt Text](https://media.giphy.com/media/6Qotkeqtn2PnUBzry1/source.gif)



## [Link del ux case del proyecto :art:](https://www.figma.com/file/TZl198OABgCCgkhJq0nuUS/Reciclando_UX_Estudio?node-id=216%3A10)

### Pre-requisitos 📋
- [VisualStudio code](https://code.visualstudio.com/)
- [Android studio](https://developer.android.com/studio?hl=es-419)
- [Flutter](https://flutter.dev/docs/get-started/install)
- [Postman](https://www.postman.com/)
- [PostgreSQL](https://www.postgresql.org/)
- [Nodejs](https://nodejs.org/es/)

### Instalación 🔧
- para instalar Flutter seguir las [instrucciones](https://flutter.dev/docs/get-started/install/windows)
- Editar variables de entorno en [windows](https://www.genbeta.com/desarrollo/variables-entorno-que-sirven-como-podemos-editarlas-windows-linux )
- verificar la instalacion de flutter en el powershell
```bash
flutter --version
```
### Instalacion de un servidor nodejs para pruebas locales 🔧
- crear una carpeta con el nombre de NodejsProyects/BackendDelivery 
- copiar la ruta y pegarlo en el git bash 
- ejecturar el comando 
- 
```bash
npm init
```

- instalar las dependendecias
```bash
npm i express
npm i http
npm i morgan 
```
- crear un archivo server.js y copiar el siguiente codigo. 
```Javascript
const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const logger = require('morgan');
const cors = require('cors');



const port = process.env.PORT || 3000;

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({
    extended: true
}));
app.use(cors());

app.disable('x-powered-by');
app.set('port', port);

server.listen(3000, 'direccion ipv4' || 'localhost', function(){
    console.log('Aplicacion de Nodejs para la APP Reciclando en el puerto: '+ port +' iniciando...')
} );

app.get('/', (req, res) => {
    res.send('Ruta raiz del backend');
});

app.get('/test', (req, res) => {
    res.send('este es la ruta TEST');
});
// ERROR HANDLER
app.use((err, req, res, next) => {
    console.log(err);
    res.status(err.sttus || 500).send(err.stack);
});

//200 es un mensaje exitosa
//404 es un mensaje que significa que la url no existes
//500 error interno del servidor 

```
- comprobar las rutas con postman



- instalar [maquina virtual](https://www.youtube.com/watch?v=MAmrggRxEJ4) en android studio 
- Extensiones recomenados en Visual studio Code
	-  Awsome Flutter Snippets
	- Dart
	- Flutter

### Construido con 🛠️
- [Flutter](https://flutter.dev/) - Framework para dispositivos moviles
- [Dart](https://dart.dev/) - Lenguaje de programacion base


