# Utilisation de l'image officielle Nginx basée sur Alpine (légère et sécurisée)
FROM nginx:alpine

# Définir le répertoire de travail
WORKDIR /usr/share/nginx/html

# Copier uniquement les fichiers nécessaires pour éviter d'inclure des fichiers temporaires
COPY . .

# Assurer que Nginx ne fonctionne pas en tant que root pour des raisons de sécurité
RUN chown -R nginx:nginx /usr/share/nginx/html

# Passer à l'utilisateur non-root pour limiter les privilèges
USER nginx

# Exposer le port 80 pour permettre l'accès HTTP
EXPOSE 80

# Commande par défaut pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]

