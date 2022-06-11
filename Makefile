.PHONY: build
build:
	@echo "Cleaning existing binaries"
	@rm -rf docs
	@echo "Building binaries..."
	@cd ../passwordio-client && npm run build
	@echo "Copying binaries for deployment"
	@mkdir -p docs
	@cp -R ../passwordio-client/build/* ./docs/
	@echo "✔️ Build successful"

.PHONY: deploy
deploy:
	@echo "Cleaning existing binaries"
	@rm -rf docs
	@echo "Building binaries..."
	@cd ../passwordio-client && npm run build
	@echo "Copying binaries for deployment"
	@mkdir -p docs
	@cp -R ../passwordio-client/build/* ./docs/
	@git add .
	@git commit -m "${message}"
	@git push origin main
	@echo "✔️ Deployment successful"
