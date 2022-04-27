# Définir mon image de base 
FROM ubuntu
# label en cas de besoin pour me contacter
MAINTAINER hamedprojet hamelito.gaming@gmail.com
# Avoir les dernières mise à jour sur cette image
RUN apt-get update
# installer un server web pour heberger mon application "inginx"
RUN apt-get install -y nginx
# Expose le port 
EXPOSE 80
# copier le code source de mon application "commande COPY OU ADD" de préférence ADD car COPY de prend pas en compte l'arborescence du repertoire  
ADD static-website-example/ /var/www/html/
# Definir comment l'application va etre lancer (ENTRYPOINT ou CMD)
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]



  
 
   
