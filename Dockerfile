FROM python:slim

RUN pip install pywikibot pytest
COPY pwb_example /app/pwb_example
COPY cfg/* /app/
COPY tests /app/tests
CMD cd /app && for test in `ls tests/test_*.py`; do pytest -q $test; done