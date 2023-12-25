FROM centos:latest
RUN yum install -y httpd \
  zip\
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page43/gazebo.zip /var/www/html

WORKDIR /var/www/html/
RUN unzip gazebo.zip
COPY cp -rvf gazebo.zip/* .
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
