.DEFAULT_GOAL := help

#help: @ List available tasks on this project
help:
	@grep -E '[a-zA-Z\.\-]+:.*?@ .*$$' $(MAKEFILE_LIST)| tr -d '#'  | awk 'BEGIN {FS = ":.*?@ "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

#build.compile: @ Compile project
build.compile:
	mvn clean test-compile

#build.package: @ Package project into a jar file
build.package:
	mvn package

#test.unit: @ Execute unit test
test.unit:
	mvn test