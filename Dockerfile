FROM nginx:1.13.0-alpine

COPY default.conf /etc/nginx/conf.d/default.conf

RUN echo "Hello World 4 modified" > /usr/share/nginx/html/index.html

HEALTHCHECK --interval=5m --timeout=5s \
  CMD curl -f http://localhost/ || exit 1

EXPOSE 3000