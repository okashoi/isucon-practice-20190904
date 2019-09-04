all: deps build

.PHONY: clean
clean:
	rm -rf torb

deps:
	go get -u github.com/golang/dep/cmd/dep
	dep ensure

.PHONY: build
build:
	go build -o torb src/torb/app.go
