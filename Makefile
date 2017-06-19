all: devel latest 3.4.0 3.3.3 3.3.2 3.3.1

# sync 'latest' to dev and it's version-tagged equivalent
sync: 
	make devel/Dockerfile 3.4.0/Dockerfile
devel/Dockerfile: Dockerfile
	export R_VERSION=devel && make update
3.4.0/Dockerfile: Dockerfile
	export R_VERSION=3.4.0 && make update

3.4.0: .PHONY
	docker build -t rocker/geospatial:3.4.0 3.4.0
3.3.3: .PHONY
	docker build -t rocker/geospatial:3.3.3 3.3.3
3.3.2: .PHONY
	docker build -t rocker/geospatial:3.3.2 3.3.2
3.3.1: .PHONY 
	docker build -t rocker/geospatial:3.3.1 3.3.1
latest: 
	docker build -t rocker/geospatial .
devel: .PHONY 
	docker build -t rocker/geospatial:devel devel 


update:
	cp Dockerfile ${R_VERSION}/Dockerfile
	sed -i 's/verse:latest/verse:${R_VERSION}/' ${R_VERSION}/Dockerfile



.PHONY: 
	echo "building image..."
