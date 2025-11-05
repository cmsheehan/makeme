# Makefile Template
# Add your targets below with comments in the format: ## description
# Running 'make' will automatically show all targets and their descriptions

# Default target - shows help
.PHONY: help
help: ## Show this help message
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

# Set default target to help
.DEFAULT_GOAL := help

# Example targets - customize these for your project

.PHONY: all build test

all: ## Build and test everything
	@echo "Building and testing all components..."
	@$(MAKE) build
	@$(MAKE) test

build: ## Build the project
	@echo "Building project..."
	@# Add your build commands here
	@echo "Build complete!"

test: ## Run all tests
	@echo "Running tests..."
	@# Add your test commands here
	@echo "All tests passed!"

# Add more targets below following the same pattern:
# target-name: ## Description of what this target does
# @commands go here