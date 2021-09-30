# rocker/geospatial

[![DOI](https://zenodo.org/badge/85984414.svg)](https://zenodo.org/badge/latestdoi/85984414)

***Dockerfiles & documentation for images `r-ver`, `rstudio`, `tidyverse`, `verse`, `geospatial`, `shiny`, and `binder`, for R >= 4.0.0, HAVE MOVED to the [`rocker-versioned2` repository](https://github.com/rocker-org/rocker-versioned2).***

Docker-based Geospatial toolkit for R, built on versioned Rocker images. 

This image extends the [`rocker-versioned` stack](https://github.com/rocker-org/rocker-versioned) with geospatial-related tools, particularly those that can be difficult or slow to add on-the-fly.  As such, this image includes RStudio, the tidyverse packages, and `verse` libraries (notably LaTeX and JAVA environments).  Like the rest of the `rocker-versioned` stack, tags for specific recent versions, including the `latest` and `devel` tags, are also provided. Versions older than the most recent will install R packages from an MRAN snapshot, and may not provide all the same packages as seen on the most recent versions.   



## Packages


The packages included in this image are not meant to provide a kitchen-sink of all geo-spatially related R packages, see the [Spatial Task View](https://cran.r-project.org/web/views/Spatial.html) and [SpatioTemporal Task View](https://cran.r-project.org/web/views/SpatioTemporal.html) on CRAN.  This image seeks to provide a more opinionated collection of packages, prioritizing those packages that can be slow or tricky to install due to compiled code and external dependencies, and with an emphasis on more general-purpose libraries and classes.

Please note that many additional geospatial (and other) packages are pulled in as dependencies of this list and thus can also be found on the image.  Feel free to request any additional packages you would like to see added by [filing an issue](https://github.com/rocker-org/geospatial/issues). 

Package       | Maintainer| Description 
--------------|-----------|----------------------------------
RColorBrewer  |           | Colors for maps and other plots
RandomFields  |Schlather  | Methods for the inference on and the simulation of Gaussian fields, and simulation of extreme value random fields.
RNetCDF       | Woods     | Bindings to C API NetCDF library, with udunits 
classInt      | Bivand    | Selected commonly used methods for choosing univariate class intervals for mapping or other graphics purposes.
deldir        | Turner    | Delaunay Triangulation and Dirichlet (Voronoi) Tessellation 
gstat         | Pebesma   | Spatial and Spatio-Temporal Geostatistical Modelling, Prediction and Simulation
hdf5r         | Hoefling  | Modern bindings to HF5 C API (replaces hf package)
lidR          | Roussel   | Airborne LiDAR (Light Detection and Ranging) interface for data manipulation and visualization. Read/write 'las' and 'laz' file
mapdata       | Deckmyn   | Extra map data for the `maps` package (originally from S)
maptools      | Bivand    | Set of tools for manipulating and reading geographic data, in particular ESRI Shapefiles.  (See `rgdal` and `sf` for more comprehensive I/O)
mapview       | Appelhans | sf-compatible interactive map viewer, extends leaflet
ncdf4         | Pierce    | `raster`-package compatible netcdf bindings
proj4         | Urbanek   | A simple interface to lat/long projection and datum transformation.  See `sf` implementation as well. 
raster        | Hijmans   | Reading, writing, manipulating, analyzing and modeling of gridded spatial data.
rgdal         | Bivand    | Interface to GDAL, I/O formats. See `sf` for more recent implementation
rgeos         | Bivand    | Interface to GEOS (geometry operations). See `sf` for more recent implementation
sf            | Pebesma   | Simple-features oriented replacement for sp, rgdal, rgeos, and proj4 libraries, includes dplyr-style methods.
sp            | Pebesma   | Original & widely used spatial object class
spacetime     | Pebesma   | Classes and Methods for Spatio-Temporal Data
spatstat      | Baddeley  | Large spatial statistics package: Spatial Point Pattern Analysis, Model-Fitting, Simulation, Tests
spatialreg    | Bivand    | Spatial Regression Analysis: Spatatial Autregressive Models (formerly in spdep)
spdep         | Bivand    | Spatial Dependence: Weighting Schemes, Statistics and Models
tmap          | Tennekes  | Thematic, layer-based maps (sf and sp compatible)
geoR          | Ribeiro   | Geostatistical analysis including traditional, likelihood-based and Bayesian methods.
geosphere     | Hijmans   | Spherical trigonometry for geographic applications. That is, compute distances and related measures for angular (longitude/latitude) locations. 

 
