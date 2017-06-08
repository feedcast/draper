#!/bin/bash

BUNDLE_PATH=$(pwd)
BUNDLE_FILE=$(pwd)/bundle.zip

pip install -r requirements.txt

cd functions/train/
zip -9 $BUNDLE_FILE main.py

cd $VIRTUAL_ENV/lib/python3.6/site-packages/
zip -r9 $BUNDLE_FILE *

cd $BUNDLE_PATH

aws lambda update-function-code --function-name draper_train --zip-file fileb://bundle.zip

# rm bundle.zip
