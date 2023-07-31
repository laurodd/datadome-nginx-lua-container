FROM fabiocicerchia/nginx-lua:1.25.1-ubuntu22.04 

COPY nginx.conf /etc/nginx/nginx.conf

COPY ./nginx-module.sh /
RUN chmod +x /nginx-module.sh
RUN ./nginx-module.sh
