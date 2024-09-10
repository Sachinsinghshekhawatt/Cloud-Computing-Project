From ubuntu:latest
LABEL "AUTHOR"="Sachin"
LABEL "PROJECT"="TO-DO-LIST"
Run apt update && apt install git -y
Run apt install apache2 -y
EXPOSE 80
WORKDIR /var/www/html
copy index.html /var/www/html/index.html
//ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["/usr/sbin/apache2ctl" , "-D", "FOREGROUND"]
