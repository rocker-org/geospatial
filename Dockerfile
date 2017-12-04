FROM rocker/verse:latest
MAINTAINER "Carl Boettiger" cboettig@ropensci.org

RUN add-apt-repository -y ppa:opencpu/jq && \
    apt-get update \
  && apt-get install -y --no-install-recommends \
    lbzip2 \
    libfftw3-dev \
    libgdal-dev \
    libgeos-dev \
    libgsl0-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libhdf4-alt-dev \
    libhdf5-dev \
    liblwgeom-dev \
    libproj-dev \
    libnetcdf-dev \
    libprotobuf-dev \
    libsqlite3-dev \
    libssl-dev \
    libudunits2-dev \
    libv8-3.14-dev \
    protobuf-compiler \
    tk-dev \
    unixodbc-dev \
  && install2.r --error \
    RColorBrewer \
    RandomFields \
    classInt \
    deldir \
    gstat \
    lidR \
    mapdata \
    maptools \
    mapview \
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
    tmap \
    geoR \
    geosphere \
    ## from bioconductor
    && R -e "BiocInstaller::biocLite('rhdf5')"
