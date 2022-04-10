FROM centos:lates
Maintainer attarfaisal087@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css/assets/files-css-templates/download/page247/kindle.zip/var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*.
RUN rm -rf_Macosx markups-kindle.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
