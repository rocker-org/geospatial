devel/Dockerfile: Dockerfile
	export R_VERSION=devel && make update

devel: .PHONY 
	docker build -t rocker/geospatial:devel devel 
3.4.4: .PHONY
	docker build -t rocker/geospatial:3.4.4 3.4.4
3.4.3: .PHONY
	docker build -t rocker/geospatial:3.4.3 3.4.3
3.4.2: .PHONY
	docker build -t rocker/geospatial:3.4.2 3.4.2
3.4.1: .PHONY 
	docker build -t rocker/geospatial:3.4.1 3.4.1
3.4.0: .PHONY
	docker build -t rocker/geospatial:3.4.0 3.4.0
3.3.3: .PHONY
	docker build -t rocker/geospatial:3.3.3 3.3.3
3.3.2: .PHONY
	docker build -t rocker/geospatial:3.3.2 3.3.2
3.3.1: .PHONY 
	docker build -t rocker/geospatial:3.3.1 3.3.1



.PHONY: 
	echo "building image..."
