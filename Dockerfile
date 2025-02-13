# Utiliser une image de base officielle Node.js
FROM node:18

# Créer un répertoire de travail
WORKDIR /app

# Copier le fichier package.json et package-lock.json (si disponible)
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de votre projet
COPY . .

# Exposer le port sur lequel l'application fonctionne
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]
