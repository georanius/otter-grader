# Otter-Grader

[![PyPI](https://img.shields.io/pypi/v/otter-grader.svg)](https://pypi.org/project/otter-grader/)
[![DOI](https://zenodo.org/badge/208363438.svg)](https://zenodo.org/badge/latestdoi/208363438)
[![Run tests](https://github.com/ucbds-infra/otter-grader/actions/workflows/run-tests.yml/badge.svg)](https://github.com/ucbds-infra/otter-grader/actions/workflows/run-tests.yml)
[![codecov](https://codecov.io/gh/ucbds-infra/otter-grader/branch/master/graph/badge.svg)](https://codecov.io/gh/ucbds-infra/otter-grader)
[![Documentation Status](https://readthedocs.org/projects/otter-grader/badge/?version=latest)](https://otter-grader.readthedocs.io/en/latest/?badge=latest)
[![Slack](https://img.shields.io/endpoint?logo=slack&url=https%3A%2F%2Fraw.githubusercontent.com%2Fucbds-infra%2Fotter-grader%2Fmaster%2Fslack-shields.json)](https://join.slack.com/t/otter-grader/shared_invite/enQtOTM5MTQ0MzkwMTk0LTBiNWIzZTYxNDA2NDZmM2JkMzcwZjA4YWViNDM4ZTgyNDVhNDgwOTQ0NjNlZjcwNmY5YzJiZjZhZGNhNzc5MjA)

Otter Grader is a light-weight, modular open-source autograder developed by the Data Science 
Education Program at UC Berkeley. It is designed to work with classes at any scale by abstracting 
away the autograding internals in a way that is compatible with any instructor's assignment 
distribution and collection pipeline. Otter supports local grading through parallel Docker 
containers, grading using the autograder platforms of 3rd party learning management systems (LMSs), 
the deployment of an Otter-managed grading virtual machine, and a client package that allows 
students to run public checks on their own machines. Otter is designed to grade Python scripts and 
Jupyter Notebooks, and is compatible with a few different LMSs, including Canvas and Gradescope.

## Documentation

The documentation for Otter can be found [here](https://otter-grader.rtfd.io).

## Install and Contributing (easy going )

Run local in your Unix/ubuntu- shell with conda installed:

```bash
git clone https://github.com/georanius/otter-grader.git

cd otter-grader/

conda activate base

conda env create -f environment.yml

```
Starting the not from condas environement ```base``` takes endless, but
 !!!Wait!!! or speed up conda, maybe with  ```conda install -n base conda-forge::mamba```

Then continue with:
```bash
 conda activate otter-grader
 
 pip install .
 
 pip install jupyterlab
 
```
 So funny this ecosystem neads also his own jupyterlab , since not notebooks (.ipynb) opened when starting jupyterlab from (base)...
And then start your new jupyterlab in otters envirenement in the bagground
with, and see it emerging in the browser

```bash 'jupyter-lab &'
```
 In jupyterlab take a terminal, click ```File->New->Terminal``` (automatic in otter-grader env)  and:
 ```bash
 cd otter-grader/examples/env-validation
 ```
 and choose this directory also in the Filebrowser and open env-validation.jpynb
 Here you might assign your first assignement 
 ```bash
otter assign env-validation.ipynb solutionsAndExamsNotebooks
 ```
 
If you like to run more tests look in the file: [`CONTRIBUTING.md`](CONTRIBUTING.md).

## Changelog

See [`CHANGELOG.md`](CHANGELOG.md).
