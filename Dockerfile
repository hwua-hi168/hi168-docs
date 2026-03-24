FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html/
RUN rm -f /usr/share/nginx/html/Dockerfile \
         /usr/share/nginx/html/nginx.conf \
         /usr/share/nginx/html/taskfile.yaml \
         /usr/share/nginx/html/package.json \
         /usr/share/nginx/html/package-lock.json \
         /usr/share/nginx/html/.gitignore
EXPOSE 80
