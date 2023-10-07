#!/bin/sh

echo "--- Running tests ---"

if python -m unittest discover -s tests/ | grep -q OK
then 
    echo "--- Tests runned ---"
else
    echo "Test did not ran OK"
    exit 1
fi

echo "--- Generating report ---"

if coverage run -m unittest discover -s tests/ | grep -q OK
then 
    echo "App covered with tests"
else
    echo "Report did not generated"
    exit 1
fi

coverage report --include crawler/crawler.py
