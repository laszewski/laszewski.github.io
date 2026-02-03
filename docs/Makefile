IMAGE_NAME = jekyll-spark-site
PORT       = 4000
REMOTE_REPO = $(shell git remote get-url origin)
CURRENT_DATE := $(shell date +'%Y-%m-%d %H:%M:%S')

# Use 'sudo' before docker if your Spark node requires it
DOCKER_CMD = docker

install:
	$(DOCKER_CMD) build -t $(IMAGE_NAME) .

build:
	$(DOCKER_CMD) run --rm -v "$$(pwd):/srv/jekyll" $(IMAGE_NAME) bundle exec jekyll build

serve:
	@echo "Starting Jekyll on NVIDIA Spark Node..."
	$(DOCKER_CMD) run --rm \
		-v "$$(pwd):/srv/jekyll" \
		-p $(PORT):$(PORT) \
		$(IMAGE_NAME)

#deploy: build
#	cd _site && git init && git add . && git commit -m "Deploy from Spark Node" && git push --force $(REMOTE_REPO) master:gh-pages


deploy:
	git add docs && \
	git commit -m "Update on $(CURRENT_DATE)" && \
	git push

clean:
	rm -rf _site .jekyll-cache .jekyll-metadata
