FROM busybox
MAINTAINER David Parrish <daveparrish@tutanota.com>

# Copy entire hakyll source directory for development
COPY hakyll /home/hakyll/hakyll
