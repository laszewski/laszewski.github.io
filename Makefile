IMAGE_NAME = jekyll-spark-site
PORT       = 4000
REMOTE_REPO = $(shell git remote get-url origin)
CURRENT_DATE := $(shell date +'%Y-%m-%d %H:%M:%S')

# Captures current user and group IDs to prevent permission issues
USER_ID  := $(shell id -u)
GROUP_ID := $(shell id -g)

# Use 'sudo' before docker if your Spark node requires it
DOCKER_CMD = docker

# Standard flags for running Jekyll with current user permissions
# We map the current directory to /srv/jekyll inside the container
DOCKER_RUN_FLAGS = --rm \
    --user "$(USER_ID):$(GROUP_ID)" \
    -v "$$(pwd):/srv/jekyll"

install:
	$(DOCKER_CMD) build -t $(IMAGE_NAME) .

build:
	$(DOCKER_CMD) run $(DOCKER_RUN_FLAGS) $(IMAGE_NAME) bundle exec jekyll build --destination docs

serve:
	@echo "Starting Jekyll on NVIDIA Spark Node..."
	$(DOCKER_CMD) run $(DOCKER_RUN_FLAGS) \
		-p $(PORT):$(PORT) \
		$(IMAGE_NAME) bundle exec jekyll serve --host 0.0.0.0

populate:
	cp -r _site/* docs

deploy: populate
	git add docs && \
	git commit -m "Update on $(CURRENT_DATE)" && \
	git push

clean:
	rm -rf docs .jekyll-cache .jekyll-metadata

