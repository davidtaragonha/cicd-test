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

#build.deploy: @ Deploy project to the package repository
build.deploy:
	./mvnw deploy

#test.ut: @ Execute uts
test.ut:
	./mvnw -Dgroups=ut test

#test.it: @ Execute its
test.it:
	./mvnw -Dgroups=it test

#test.at: @ Execute ats
test.at:
	./mvnw -Dgroups=at test