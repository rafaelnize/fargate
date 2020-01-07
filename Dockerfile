FROM nginx:1.13.0-alpine

COPY default.conf /etc/nginx/conf.d/default.conf

RUN echo "Hello World 3 modified" > /usr/share/nginx/html/index.html

EXPOSE 3000