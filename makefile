# Makefile

# Variables
PYTHON = python
BLACK = black
PEP8 = pycodestyle  # 'pep8' es el nombre antiguo de 'pycodestyle'

# Targets
.PHONY: run test lint

run:
	$(PYTHON) manage.py runserver

test:
	$(PYTHON) -m unittest discover

lint:
	$(BLACK) .
	$(PEP8) .