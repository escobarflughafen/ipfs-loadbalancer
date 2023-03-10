FROM ubuntu

RUN apt-get -y update && apt-get -y install nginx

COPY ipfs.conf /etc/nginx/ipfs.conf
COPY serverinfo.html /www/test/index.html

EXPOSE 5001
EXPOSE 9094

CMD ["nginx", "-c", "/etc/nginx/ipfs.conf", "-g", "daemon off;"] 
