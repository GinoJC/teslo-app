# Flutter - Authenticated CRUD App - TesloShop

Este es un proyecto para trabajar con:

* Cámara
* Tokens de acceso
* CRUD (Create Read Update Delete) Rest API Endpoints
* Riverpod
* GoRouter


## El backend lo pueden obtener de aquí

[Teslo Backend - Nest RestServer](https://hub.docker.com/repository/docker/klerith/flutter-backend-teslo-shop/general)

# Importante
Recuerden leer y seguir la guía para montar el backend localmente.


## Conectar emulador a localhost:3000

1. Mostrar listado de dispositivos conectados:

```
adb devices
```

2. Ejecutar:

```
adb -s emulator-5554 reverse tcp:3000 tcp:3000
```

Donde **emulator-5554** es el nombre del emulador y **3000** es el puerto al que se lo quiere conectar.
