# Utiliser l'image de base Nginx
FROM nginx:alpine

# Supprimer la configuration par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copier le contenu de votre application dans le répertoire Nginx
COPY . /usr/share/nginx/html

# Exposer le port 80 pour le serveur web
EXPOSE 80

# Démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
