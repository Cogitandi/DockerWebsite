FROM alpine
LABEL maintaniner="PawelKapica"
LABEL description="TimeZones"
RUN mkdir -p /run/apache2
RUN apk update --no-cache && apk add apache2 --no-cache
ADD src.tar.gz/ /var/www/localhost/htdocs/	
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]