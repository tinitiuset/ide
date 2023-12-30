build:
	docker build -t tinitiuset/ide -f ./Dockerfile .

run:
	docker run -it --rm -v $(PWD):/workspace -u $(id -u):$(id -g) tinitiuset/ide

clean:
	docker rmi tinitiuset/ide

.PHONY: build run clean
