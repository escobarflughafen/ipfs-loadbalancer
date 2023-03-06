FROM ubuntu

RUN apt-get -y update && apt-get -y install nginx

COPY ipfs.conf.template ipfs.conf.template

ENV SERVER_TYPE $SERVER_TYPE

EXPOSE 5001
EXPOSE 9094

CMD ["envsubst", "<", "ipfs.conf.template", ">", "/etc/nginx/ipfs.conf", "&&", "nginx", "-c", "/etc/nginx/ipfs.conf", "-g", "daemon off;"] 
