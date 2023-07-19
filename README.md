![Github Actions](https://github.com/h4wk590/global-airport-webmap/actions/workflows/build-and-deploy.yml/badge.svg)

# Dynamic Webmap Created With QGIS

View the web map here: https://airportwebmap.aidantech.xyz

Learning QGIS/GIS basics and web mapping fundamentals.

## Map Features

- Dynamic web map using Google Maps baselayer
- Pan/Zoom within map extent
- Searchable via class/city/country
- Displays coordinates and links Wikipedia page to selected airport

## CI/CD Workflow

Upon merge/push on the main branch:

- A new Image is created from html/css/js files that make up the map
- DigitalOcean API access via `doctl` to push new image to [DigitalOcean Registry](https://www.digitalocean.com/products/container-registry), it purges any old images in the process.
- New container is built from registry image 
- SSH into DigitalOcean droplet using Keypairs
- Script is run to remove old containers and images on the droplet
- New container is built on the droplet

## Data

- Created with QGIS2Web plugin
- Airport data from [Natural Earth Data](https://www.naturalearthdata.com/downloads/10m-cultural-vectors/airports/)

## Local Development

Clone the repo. You will be able to view the map by opening `index.html`

### Run with Docker

- Ensure you are in the project directory
- run `docker build -t 'imagename' .` to build the image
- run `docker run -it --rm -d -p 8080:80 --name 'containername' 'imagename'` to run container from image
