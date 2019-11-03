SHELL:=/bin/bash
BASEDIR=$(CURDIR)
OUTPUTDIR=public

.PHONY: all
all: clean get_repository build deploy

.PHONY: clean
clean:
	@echo "Removing public directory"
	rm -rf $(BASEDIR)/$(OUTPUTDIR)

.PHONY: get_repository
get_repository:
	@echo "Getting public repository"
	git clone https://github.com/bodoburger/bodoburger.github.io.git public

.PHONY: build
build:
	@echo "Generating site"
	hugo --gc --minify

.PHONY: deploy
deploy:
	@echo "Preparing commit"
	@cd $(OUTPUTDIR) \
	&& git config user.email "bodo.burger@gmail.com" \
	&& git config user.name "BodoBurger" \
	&& git add . \
	&& git status \
	&& git commit -m "Deploy via Makefile and Netlify" \
	&& git push -f -q https://$(GITHUB_TOKEN)@github.com/bodoburger/bodoburger.github.io.git master

	@echo "Pushed to remote"
