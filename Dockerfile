FROM nginx:alpine

WORKDIR /app

COPY app /usr/share/nginx/html

EXPOSE 3080:80