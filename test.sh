#!/bin/sh

pip install -r requirements-test.txt

if python -m unittest discover -s tests/ | grep OK ;
    then echo "Tests runned"
fi


if coverage run -m unittest discover -s tests/ | grep OK ;
    then echo "App covered with tests"
fi

coverage report --include crawler/crawler.py
