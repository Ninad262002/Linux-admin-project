#!/bin/bash

echo "Creating main project folder..."
mkdir -p project

cd project

echo "Creating subfolders..."
mkdir -p docs images scripts

echo "Creating sample file..."
touch docs/file1.txt

echo "Project structure:"
ls -R
