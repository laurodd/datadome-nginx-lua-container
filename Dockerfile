FROM fabiocicerchia/nginx-lua:1.25.1-ubuntu22.04 

COPY nginx.conf /etc/nginx/nginx.conf
RUN luarocks install datadome-openresty
