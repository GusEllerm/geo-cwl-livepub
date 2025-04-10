.PHONY: test clean

test:
	pytest --cov=.

coverage:
	pytest --cov=. --cov-report=term-missing

htmlcov:
	pytest --cov=. --cov-report=html

clean:
	rm -rf .pytest_cache
	rm -rf .coverage
	rm -f .coverage