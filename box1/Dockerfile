FROM treasureboat/centos6
RUN yum install httpd -y
RUN echo "<h1>Parte 2 parcial computacion en la nube 2017-1.</h1><br><h1>Estudiante: Juan Pablo Aguirre</h1>" > /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
