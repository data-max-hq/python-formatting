# python-formatting
Using:
* pre-commit
* isort
* black
* flake8
* sqlfluff 
* pytest
* pytest-cov
for code formatting

Install dependencies:
```bash
pip install -r requirements.txt
```

Run tests
```
pytest
```

Run tests with coverage report
```
pytest --cov-report term --cov=src tests/
```

Install pre-commit hooks
```bash
pre-commit install
```

Pre-commit check
```bash
pre-commit run --all-files
```

sqlfluff lints
```bash
sqlfluff lint .
```