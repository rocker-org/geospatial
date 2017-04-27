all: geo-devel geo-latest geo-3.4.0 geo-3.3.3 geo-3.3.2 geo-3.3.1

geo-3.4.0: 
	docker build -t geospatial:3.4.0 3.4.0
geo-3.3.3: 
	docker build -t geospatial:3.3.3 3.3.3
geo-3.3.2: 
	docker build -t geospatial:3.3.2 3.3.2
geo-3.3.1: 
	docker build -t geospatial:3.3.1 3.3.1
geo-latest: 
	docker build -t geospatial .
geo-devel: 
	docker build -t geospatial:devel devel 
