FROM centos:latest
MAINTAINER mohinirr98@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
Add https://www.free-css.com/assets/files/free-css-templates/download/page262/shicso.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip shicso.zip
RUN cp -rvf shicso/* .
RUN rm -rf shicso shicso.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
