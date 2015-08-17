FROM nginx:latest
MAINTAINER David Parrish <daveparrish@gmail.com>

# Link built site to nginx static hosting directory.
RUN rm -rf /usr/share/nginx/html && ln -s /home/hakyll/hakyll/_site /usr/share/nginx/html

# Copy nginx conf files
COPY default.conf /etc/nginx/conf.d/default.conf
