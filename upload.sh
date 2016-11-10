#!/bin/bash
TARGET_FOLDER=../mircealungu.github.io

rm -rf '$TARGET_FOLDER/*'
hugo -d $TARGET_FOLDER
(cd $TARGET_FOLDER; git add *; git commit -a; git push)