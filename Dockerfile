FROM nginx:1.27.0
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/