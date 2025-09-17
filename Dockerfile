FROM quay.io/centos/centos:9
RUN yum -q -y install httpd && yum clean all
COPY index.html /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
