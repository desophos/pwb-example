FROM python:slim

RUN pip install pywikibot pytest
COPY . /app
CMD cd /app && for test in `ls tests/test_*.py`; do pytest -q $test; done