.DEFAULT_GOAL := help

#help: @ List available tasks on this project
help:
	@grep -E '[a-zA-Z\.\-]+:.*?@ .*$$' $(MAKEFILE_LIST)| tr -d '#'  | awk 'BEGIN {FS = ":.*?@ "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

#build.compile: @ Compile project
build.compile:
	./mvnw clean test-compile

#build.package: @ Package project into a jar file
build.package:
	./mvnw package
	docker build --tag cicd-test:1.0.0-SNAPSHOT .

#test.unit: @ Execute unit test
test.unit:
	./mvnw test