
jar:
	mvn package -DskipTests

build: jar
	# For this to work you need to run `docker buildx create --name multi --use` to get a builder setup
    # Docker desktop has everything you need for this to work, on linux server you'll need to
    # configure qemu and a few other things.
	docker buildx build --platform linux/arm64,linux/amd64 --tag spring-demo --push .


build-arm-load: jar
	# For single platform you can load it into image cache.
	docker buildx build --platform linux/arm64 --tag spring-demo --load .
	$(info "Docker image for arm64 loaded into local repo. `docker image ls` to see it.")


buildx-du:
	docker buildx du

buildx-prune:
	docker buildx prune

run-example:
	# See the docker.env for a good way to load env vars
	docker run -p 8080:8080 --env-file docker.env --rm --name spring-demo spring-demo


print-final-flags:
	# Run with the same props and print out final settings... for debuggin.
	docker run --entrypoint java --env-file docker.env --rm --name spring-demo spring-demo -XX:+PrintFlagsFinal -version

