FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY . /usr/share/nginx/html

RUN chmod +x /usr/share/nginx/html/entrypoint.sh

ENTRYPOINT ["/bin/sh", "/usr/share/nginx/html/entrypoint.sh"]