#!/usr/bin/env bash

REPO_NAME = $1

mkdir $REPO_NAME;
mkdir $REPO_NAME/tests;
touch $REPO_NAME/tests/__init__.py;
touch $REPO_NAME/__init__.py;

git -C $REPO_NAME init;
echo "*.pyc" > $REPO_NAME/.gitignore;
git -C $REPO_NAME add -A;
git -C $REPO_NAME commit -m "Boilerplate repo."
