all: devel latest 3.4.0 3.3.3 3.3.2 3.3.1

3.4.0: .PHONY
	docker build -t geospatial:3.4.0 3.4.0
3.3.3: .PHONY
	docker build -t geospatial:3.3.3 3.3.3
3.3.2: .PHONY
	docker build -t geospatial:3.3.2 3.3.2
3.3.1: .PHONY 
	docker build -t geospatial:3.3.1 3.3.1
latest: 
	docker build -t geospatial .
devel: .PHONY 
	docker build -t geospatial:devel devel 

.PHONY: 
	echo "building image..."
