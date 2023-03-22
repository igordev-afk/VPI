#!/bin/bash

set -x

REP=~/vpiLabs/lab3-review
git init

# task 6

mkdir ~localrepo1
pushd ~localrepo1
touch file1.txt
ls -la . | tee -a $REP


# task 7

echo "come changes" > file1.txt
git add file1.txt
git log -p file1.txt

# task 9
git config —global user.email "igor@example.com"
git config —global user.name "Igor Shverlo"
git commit -m "config init"

# task 10
touch file2.txt
git add file2.txt
git status
git commit -m "fixed.10task"
ls -la . | tee -a $REP

#task 11
git add lab-3-report.sh
git commit -m "fixed.13p"
git push
git status | tee -a $REP

#task 12
git pull
git status | tee -a $REP

#task 18
echo "some changes second member" > file2.txt
git add file2.txt
git commit -m "Changex second member"
git status | tee -a $REP
git push

#task 20
echo "new changes first member" > file1.txt
git status | tee -a $REP

#task 21
echo "new changes 2 member" > file2.txt
git add file2.txt
git status | tee -a $REP
git push

#task 22
git status | tee -a $REP

#task 24
echo "firstmemberfixed.24task" > file1.txt
git add file1.txt
git status | tee -a $REP
git push
git status | tee -a $REP

#task 25
echo "secondmemberfixed.25task" > file1.txt
git add file1.txt
git status | tee -a $REP
git push
git status | tee -a $REP
# task 26 Возникнет конфликт локальных репозиториев, если вы запушите с двух локальных репозиториев то по сути актуален будет последнее изменение, но проблема возникнет после того как один юзер запушит одно изменение файла, а другой изменение при pull заменит то что писал у себя.
# task 27
git status | tee -a $REP
ls -la | tee -a $REP

#rm -rf ~/localrepo1 $REP