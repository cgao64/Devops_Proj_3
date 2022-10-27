FROM  centos:latest
LABEL maintainer = "chrisgao64@gmail.com"
RUN yum install -y httpd 
RUN yum install -y zip
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip shine.zip
RUN cp -rvf shine/* .
RUN rm -rf shine shine.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80   