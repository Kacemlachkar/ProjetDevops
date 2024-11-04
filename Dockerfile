# Utiliser une image de base Java
FROM openjdk:17-jdk-slim

# Installer Maven
RUN apt-get update && apt-get install -y maven && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier JAR de votre application
COPY target/tp-foyer-5.0.0.jar app.jar

# Exposer le port de l'application
EXPOSE 8083

# Démarrer l'application
CMD ["java", "-jar", "app.jar"]
