#!/usr/bin/env bash

rm -rf dist/*
python setup.py clean
python setup.py sdist bdist_wheel --plat-name=manylinux1_x86_64

pip install twine
twine upload --skip-existing dist/*
