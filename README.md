![Github Actions](https://github.com/h4wk590/global-airport-webmap/actions/workflows/build-and-deploy.yml/badge.svg)

# Dynamic Webmap Created With QGIS

Learning QGIS/GIS basics and web mapping fundamentals.

## Features

- Dynamic web map using Google Maps baselayer
- Pan/Zoom within map extent
- Searchable via class/city/country
- Displays coordinates and links Wikipedia page to selected airport

## Local Development

Clone the repo. You will be able to view the map by opening `index.html`

### Run with Docker

- Ensure you are in the project directory
- run `docker build -t 'imagename' .` to build the image
- run `docker run -it --rm -d -p 8080:80 --name 'containername' 'imagename'` to run container from image
