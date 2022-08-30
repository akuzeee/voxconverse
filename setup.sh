#!/bin/bash


echo "Downloading ..."
wget -nc "https://www.robots.ox.ac.uk/~vgg/data/voxconverse/data/voxconverse_dev_wav.zip"
wget -nc "https://www.robots.ox.ac.uk/~vgg/data/voxconverse/data/voxconverse_test_wav.zip"

echo "Extracting training data"
unzip voxconverse_dev_wav.zip
echo "Extracting test data"
unzip voxconverse_test_wav.zip

echo "Structure directories"
mkdir wav
mv audio/* wav/
mv voxconverse_test_wav/* wav/
rm -rf audio voxconverse_test_wav