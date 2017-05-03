.PHONY: default
default:
	@echo ""
	@echo "Please select a specific target:"
	@echo ""
	@echo "docker-image	Builds a docker image. To install sql packages, use MYSQL, PGSQL or SQLITE variable passing true"
	@echo "			ex: make docker-image MYSQL=true"
	@echo "build		Builds the vapor app using the docker image installed with the docker-image target"
	@echo "run		Runs the vapor app"
	@echo ""

.PHONY: docker-image
MYSQL=false
PGSQL=false
SQLITE=false
docker-image:
	docker build -t eam_vapor_xenial_sql --build-arg INSTALL_MYSQL=$(MYSQL) --build-arg INSTALL_PGSQL=$(PGSQL) --build-arg INSTALL_SQLITE=$(SQLITE) .

.PHONY: build
build:
	docker run --rm -ti -v ${CURDIR}:/vapor eam_vapor_xenial_sql vapor build

.PHONY: run
run:
	docker run -ti -v ${CURDIR}:/vapor -p 8080:8080 eam_vapor_xenial_sql vapor run

