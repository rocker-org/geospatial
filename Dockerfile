FROM rocker/verse:devel
MAINTAINER "Carl Boettiger" cboettig@ropensci.org

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    lbzip2 \
    libfftw3-dev \
    libgeos-dev \
    libgsl0-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libhdf4-alt-dev \
    libhdf5-dev \
    libjq-dev \
    liblwgeom-dev \
    libpq-dev \
    libprotobuf-dev \
    libnetcdf-dev \
    libsqlite3-dev \
    libssl-dev \
    libudunits2-dev \
    netcdf-bin \
    postgis \
    protobuf-compiler \
    sqlite3 \
    tk-dev \
    unixodbc-dev

# Adapted from https://github.com/r-spatial/sf/blob/master/inst/docker/gdal/Dockerfile

# PROJ:
ENV PROJ_VERSION=5.0.0
ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

RUN wget http://download.osgeo.org/proj/proj-${PROJ_VERSION}.tar.gz \
  && tar zxf proj-*tar.gz \
  && cd proj-${PROJ_VERSION} \
  && ./configure \
  && make \
  && make install \
  && cd .. \
  && ldconfig \
  && rm -rf proj*

# install proj-datumgrid:
RUN cd /usr/local/share/proj \
  && wget http://download.osgeo.org/proj/proj-datumgrid-1.8.zip \
  && unzip -o proj-datumgrid*zip \
  && rm proj-datumgrid*zip

# GEOS:
#ENV GEOS_VERSION 3.6.2
#ENV GEOS_VERSION 3.7.0
#
#RUN wget http://download.osgeo.org/geos/geos-${GEOS_VERSION}.tar.bz2 \
#  && bzip2 -d geos-*bz2 \
#  && tar xf geos*tar \
#  && cd geos* \
#  && ./configure \
#  && make \
#  && make install \
#  && cd .. \
#  && ldconfig \
#  && rm -rf geo*

# GDAL:
ENV GDAL_VERSION=2.4.0
ENV GDAL_VERSION_NAME=2.4.0
COPY --from=rocker/gdal /gdal-${GDAL_VERSION} /gdal-${GDAL_VERSION}
RUN cd gdal-${GDAL_VERSION} \
  && make install \
  && cd .. \
  && ldconfig \
  && rm -rf gdal*


RUN install2.r --error \
    RColorBrewer \
    RandomFields \
    RNetCDF \
    classInt \
    deldir \
    gstat \
    hdf5r \
    lidR \
    mapdata \
    maptools \
    mapview \
    ncdf4 \
    proj4 \
    raster \
    rgdal \
    rgeos \
    rlas \
    sf \
    sp \
    spacetime \
    spatstat \
    spdep \
    geoR \
    geosphere \
    ## from bioconductor
    && R -e "BiocManager::install('rhdf5')"


