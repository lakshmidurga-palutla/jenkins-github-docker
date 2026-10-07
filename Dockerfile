FROM nginx:latest

RUN echo "Jenkins + GitHub CI/CD is working!" > /usr/share/nginx/html/index.html
