# Utiliser une image Nginx comme base
FROM nginx:alpine

# Copier les fichiers du projet dans le répertoire où Nginx servira les fichiers
COPY . /usr/share/nginx/html

# Exposer le port 80 pour que l'application soit accessible
EXPOSE 80

# Commande par défaut pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]

