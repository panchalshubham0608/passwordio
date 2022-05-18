.PHONE: build
build:
	@echo "Cleaning existing binaries"
	@rm -rf build
	@echo "Building binaries..."
	@cd ../passwordio-client && npm run build
	@echo "Copying binaries for deployment"
	@mkdir -p build
	@cp -R ../passwordio-client/build/* ./build/
	@echo "✔️ Deployment successful"
	@rm -rf docs
	@mkdir -p docs
	@cp -R build/* docs/

