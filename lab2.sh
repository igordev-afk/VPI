    #!/bin/bash

    set -x

    REPA=~/vpiLabs/lab2-review

    echo "task 2" | tee -a $REPA

    mkdir ~/localrep
    pushd ~/localrep
    touch first.txt second.txt

    ls -la . | tee -a $REPA

    echo "task 3" | tee -a $REPA

    git init
    ls -la . | tee -a $REPA
    ls -la .git/ | tee -a $REPA
    git status | tee -a $REPA


    echo "task 4" | tee -a $REPA

    git add first.txt second.txt # untracked -> staged
    git status | tee -a $REPA
    ls -la —full-time .git/index | tee -a $REPA

    echo "task 5" | tee -a $REPA

    git config —global user.email "igorshverlo@gmail.com"
    git config —global user.name "Igor Shverlo"
    git commit -m "init commit"
    git show | tee -a $REPA
    git status | tee -a $REPA
    ls -la —full-time .git/index | tee -a $REPA

    echo "task 6" | tee -a $REPA

    touch third.txt
    git add third.txt
    echo "some changes into third.txt" > third.txt
    git commit -a -m "without indexing for 6th task"

    echo "task 7" | tee -a $REPA

    echo "some changes into first.txt" » first.txt
    echo "some changes into second.txt" » second.txt
    echo "some changes into third.txt" » third.txt
    git status | tee -a $REPA

    echo "task 8" | tee -a $REPA

    git checkout first.txt
    git add second.txt third.txt
    git status | tee -a $REPA

    echo "task 9" | tee -a $REPA

    git reset HEAD second.txt
    git add third.txt
    git status | tee -a $REPA
    git checkout second.txt
    git status | tee -a $REPA

    echo "task 10" | tee -a $REPA

    echo "new changes into first.txt" » first.txt
    git add first.txt
    git commit —amend
    git status | tee -a $REPA

    echo "task 11" | tee -a $REPA

    git log —pretty=short | tee -a $REPA
    git log —pretty=full | tee -a $REPA
    git status | tee -a $REPA

    echo "task 12" | tee -a $REPA

    git log first.txt | tee -a $REPA
    git log -p -2 | tee -a $REPA
    git status | tee -a $REPA

    echo "task 13" | tee -a $REPA

    echo "new new changes into first.txt" » first.txt
    echo "new new changes into second.txt" » second.txt
    git add first.txt second.txt
    git diff —staged ~/vpiLabs/first.txt
    git diff —staged ~/vpiLabs/second.txt
    git status | tee -a $REPA

    echo "task 14" | tee -a $REPA

    git status | tee -a $REPA

    echo "task 15" | tee -a $REPA

    mv first.txt f1.txt
    git mv second.txt f2.txt
    git status | tee -a $REPA

    echo "task 16" | tee -a $REPA

    cp third.txt f3.txt
    git status | tee -a $REPA

    echo "task 17" | tee -a $REPA

    touch fourth.txt
    echo "text" » fourth.txt
    git add fourth.txt
    git status | tee -a $REPA

    echo "task 18" | tee -a $REPA

    touch fifth.txt
    git status | tee -a $REPA

    echo "task 19" | tee -a $REPA

    git status | tee -a $REPA
    git add f3.txt

    echo "task 20" | tee -a $REPA

    touch .gitignore
    echo '*.html' » .gitignore
    echo '!index.html' » .gitignore
    echo '*.[css]' » .gitignore
    echo 'a?.??' » .gitignore
    git add .gitignore

    echo "task 21" | tee -a $REPA

    touch index.html
    touch index1.html
    touch index.ts
    touch index.css

    echo "task 22" | tee -a $REPA

    git status | tee -a $REPA
    git add index.html
    git add index1.html
    git add index.css
    git add index.ts

    echo "task 23" | tee -a $REPA

    ls -la | tee -a $REPA
    rm f2.txt
    git status | tee -a $REPA
    git restore f2.txt
    git status | tee -a $REPA

    echo "task 24" | tee -a $REPA

    git rm -f fifth.txt
    git commit -m "Deletes txt"
    git status | tee -a $REPA

    echo "task 25" | tee -a $REPA

    echo "change fifth.txt" » fifth.txt
    git add fifth.txt
    git status | tee -a $REPA

    echo "task 26" | tee -a $REPA
    echo "change new txt" » fifth.txt
    git add fifth.txt
    git commit -m "Fixed"
    echo 'fifth.txt' » .gitignore
    ls -la | tee -a $REPA

    echo "task 27"

    echo "change fourth.txt" » fourth.txt
    git add fourth.txt
    git rm -f fourth.txt
    git status | tee -a $REPA