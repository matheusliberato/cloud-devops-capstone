FROM nginx:1.17.3

WORKDIR /usr/share/nginx/html

COPY css/ css/
COPY img/ img/
COPY vendor/ vendor/
COPY index.html .

EXPOSE 80

