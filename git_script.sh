#!/bin/sh

mkdir lab2-git
cd lab2-git

git init
git config --local user.name User1
git config --local user.email ex1@mail.ru

unzip -o ../commits/commit0.zip -d .
git add .
git commit -m "r0"

git config --local user.name User2
git config --local user.email ex2@mail.ru
git branch second
git switch second

unzip -o ../commits/commit1.zip -d .
git add .
git commit -m "r1"

git config --local user.name User1
git config --local user.email ex1@mail.ru
git switch master

unzip -o ../commits/commit2.zip -d .
git add .
git commit -m "r2"

git config --local user.name User2
git config --local user.email ex2@mail.ru
git switch second

unzip -o ../commits/commit3.zip -d .
git add .
git commit -m "r3"

unzip -o ../commits/commit4.zip -d .
git add .
git commit -m "r4"

unzip -o ../commits/commit5.zip -d .
git add .
git commit -m "r5"

git config --local user.name User1
git config --local user.email ex1@mail.ru
git switch master

unzip -o ../commits/commit6.zip -d .
git add .
git commit -m "r6"

git config --local user.name User2
git config --local user.email ex2@mail.ru
git branch third
git switch third

unzip -o ../commits/commit7.zip -d .
git add .
git commit -m "r7"

unzip -o ../commits/commit8.zip -d .
git add .
git commit -m "r8"

git config --local user.name User1
git config --local user.email ex1@mail.ru
git switch master

git merge third --no-ff -m "r9"


unzip -o ../commits/commit9.zip -d .
git add .
git commit -amend


unzip -o ../commits/commit10.zip -d .
git add .
git commit -m "r10"

unzip -o ../commits/commit11.zip -d .
git add .
git commit -m "r11"

unzip -o ../commits/commit12.zip -d .
git add .
git commit -m "r12"

git config --local user.name User2
git config --local user.email ex2@mail.ru
git switch second

unzip -o ../commits/commit13.zip -d .
git add .
git commit -m "r13"

git config --local user.name User1
git config --local user.email ex1@mail.ru
git switch master

git merge second
git commit -m "r14"

unzip -o ../commits/commit14.zip -d .
git add .
git commit --ammend
