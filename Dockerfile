FROM alpine:3.21.3

WORKDIR /usr/share/nginx/html

COPY index.html /usr/share/nginx/html/
COPY offres.html /usr/share/nginx/html/
COPY reclamation.html /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/


RUN apk update && apk upgrade

RUN chown -R nginx:nginx /usr/share/nginx/html


USER nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

