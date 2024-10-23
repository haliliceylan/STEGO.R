# Define variables
IMAGE_NAME = my-alpine-r-env
DOCKERFILE = Dockerfile

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) -f $(DOCKERFILE) .

# Run the Docker container
run:
	docker run -it $(IMAGE_NAME)

# Clean up the Docker image
clean:
	docker rmi $(IMAGE_NAME)

# Help command
help:
	@echo "Makefile Commands:"
	@echo "  build  - Build the Docker image"
	@echo "  run    - Run the Docker container"
	@echo "  clean  - Remove the Docker image"
	@echo "  help   - Show this help message"
