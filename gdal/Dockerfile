FROM rocker/verse:devel
MAINTAINER "Carl Boettiger" cboettig@ropensci.org

ENV GDAL_VERSION=2.4.0
ENV GDAL_VERSION_NAME=2.4.0
RUN wget http://download.osgeo.org/gdal/${GDAL_VERSION}/gdal-${GDAL_VERSION}.tar.gz \
  && tar -xf gdal-${GDAL_VERSION}.tar.gz \
  && cd gdal-${GDAL_VERSION} \
  && ./configure \
  && make -j2


