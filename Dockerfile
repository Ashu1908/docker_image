FROM centos:7
RUN yum install sudo -y && \
    yum install httpd -y && \
    echo "hello docker123" > /var/www/html/index.html

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
