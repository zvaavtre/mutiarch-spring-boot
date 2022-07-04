# MultiArch Spring Boot Docker Image

Does all the thing you need to get a spring-boot multi arch docker image that can run on
`linux/amd64` and `linux/arm64`

* Assumes you're running `Docker Desktop` since it has buildx ready to go
* Super minimal docker file and makefile for demoing things.


### OCI BuildPacks

OCI Build packs will do most of this, but I've found the multiarch support lacking (or at least the documentation for it
is) and by the time you've set a bunch of vars to get a different jdk base image, etc. you might as well just
go with the dockerfile.  

A simple Docker file is clearer about what's going on and it's straightfoward to use this as a base image or 
customize with layers, etc.

