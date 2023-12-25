.PHONY: all build
all: ./build/index.html
./src/lib/assets/snow.css: scripts/generate_snow.sh
	@scripts/generate_snow.sh > $@
build: ./src/lib/assets/snow.css
	rm -rf ./build
	pnpm build --mode production
