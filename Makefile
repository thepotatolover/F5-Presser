.PHONY: help install install-dev test lint format clean run build

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

install: ## Install production dependencies
	pip install -r requirements.txt

install-dev: ## Install development dependencies
	pip install -r requirements.txt
	pip install -r requirements-dev.txt
	pip install pre-commit
	pre-commit install

test: ## Run tests
	python -m pytest tests/ -v

lint: ## Run linters
	flake8 . --max-line-length=88 --extend-ignore=E203,W503
	mypy . --ignore-missing-imports || true
	bandit -r . || true

format: ## Format code with Black and isort
	black .
	isort .

format-check: ## Check code formatting without making changes
	black --check .
	isort --check-only .

clean: ## Clean build artifacts and cache
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info
	rm -rf .pytest_cache/
	rm -rf .mypy_cache/
	rm -rf .coverage
	rm -rf htmlcov/
	find . -type d -name __pycache__ -exec rm -r {} +
	find . -type f -name "*.pyc" -delete
	find . -type f -name "*.pyo" -delete

run: ## Run the main script
	python main.py

build: ## Build the package
	python -m build

check: format-check lint test ## Run all checks (format, lint, test)

ci: install-dev format-check lint ## Run CI checks locally

.DEFAULT_GOAL := help
