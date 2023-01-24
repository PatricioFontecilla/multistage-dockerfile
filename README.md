# multistage-dockerfile


## 1. Clonar proyecto:
   ```
   $ git clone https://github.com/emunozmejias/multistage-dockerfile.git

   ```
## 2. Construir la imagen
   ```
   $ docker build -t multistage .
   ```
## 4. Revisar imagen
   ```
   $ docker images
   ```
## 5. Crear container
    $ docker run -d -p 8081:8081 multistage

## 6. Test 
    $ curl  http://localhost:8081/rest/mscovid/estadoMundial


