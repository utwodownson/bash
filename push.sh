#!/bin/bash -

time=$(date +%D)

echo "-------poj push"
cd ~/poj 
git add .
git status
git commit -v -m "$time"
git push origin master
echo ""
echo ""

echo "-------blog push"
cd ~/utwodownson.github.com
git add .
git status
git commit -v -m "$time"
git push origin master
echo ""
echo ""

echo "-------leetcode push"
cd ~/leetcode
git add .
git status
git commit -v -m "$time"
git push origin master
echo ""
echo ""

echo "-------finish push github"
