# Étape 1 : Construction de l'application
FROM node:latest AS build

# Définir le répertoire de travail
WORKDIR /app

# Copier le package.json et le package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers dans le conteneur
COPY . .

# Construire l'application pour la production
RUN npm run serve