.PHONE: build
build:
	@echo "Cleaning existing binaries"
	@rm -rf docs
	@echo "Building binaries..."
	@cd ../passwordio-client && npm run build
	@echo "Copying binaries for deployment"
	@mkdir -p docs
	@cp -R ../passwordio-client/build/* ./docs/
	@echo "✔️ Deployment successful"
