# Usar una imagen base con Java
FROM openjdk:17

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR al contenedor
COPY target/eureka-server-0.0.1-SNAPSHOT.jar eureka-server.jar

# Exponer el puerto del Eureka Server
EXPOSE 8761

# Definir el comando para ejecutar el servicio
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]