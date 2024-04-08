# Use the official PHP image with Apache
FROM php:apache

# Enable Apache modules
RUN a2enmod rewrite proxy proxy_http

# Install MySQLi extension
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the PHP files into the container
COPY . /var/www/html/

# Copy Apache virtual host configuration
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf

# Enable Apache modules
RUN a2enmod rewrite

RUN echo 'ProxyPass "/skin" "http://skin:5000"' >> /etc/apache2/apache2.conf 
RUN echo 'ProxyPassReverse "/skin" "http://skin:5000"' >> /etc/apache2/apache2.conf

RUN echo 'ProxyPass "/static/images/melanoma" "http://skin:5000/static/images/melanoma"' >> /etc/apache2/apache2.conf 
RUN echo 'ProxyPassReverse "/static/images/melanoma" "http://skin:5000/static/images/melanoma"' >> /etc/apache2/apache2.conf

RUN echo 'ProxyPass "/display" "http://skin:5000/display"' >> /etc/apache2/apache2.conf 
RUN echo 'ProxyPassReverse "/display" "http://skin:5000/display"' >> /etc/apache2/apache2.conf

# Expose port 80 for Apache
EXPOSE 80

# Start Apache when the container launches
CMD ["apache2-foreground"]
