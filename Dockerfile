FROM nginx:latest

# Expose nginx port
EXPOSE 8080

# Copy local files
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./css /usr/share/nginx/html/css
COPY ./data /usr/share/nginx/html/data
COPY ./images /usr/share/nginx/html/images
COPY ./js /usr/share/nginx/html/js
COPY ./legend /usr/share/nginx/html/legend
COPY ./markers /usr/share/nginx/html/markers
COPY ./webfonts /usr/share/nginx/html/webfonts