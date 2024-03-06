* Git global setup
git config --global user.name "Alperen"
git config --global user.email "alperenosman132@gmail.com"
--- 

* Create a new repository
git clone https://gitlab.com/devops5591410/DevposProje.git
cd techcareer_middle_devops
git switch --create main (main branchi oluşturma)
cat >> README.md (readme oluşturma)s
git add README.md
git commit -m "add README" (açıklama ile commit etmek)
git push --set-upstream origin main (main branchimize pushlamak)
--- 

* Push an existing folder
cd existing_folder
git init --initial-branch=main
git remote add origin https://gitlab.com/devops5591410/DevposProje.git
git add .
git commit -m "Initial commit"
git push --set-upstream origin main
---

* Push an existing Git repository
cd existing_repo
git remote rename origin old-origin
git remote add origin https://gitlab.com/devops5591410/DevposProje.git
git push --set-upstream origin --all
git push --set-upstream origin --tags
---

* TAG 
git tag -a v1.0.0 -m "version 1.0"
git tag
git show v1.0.0 (içeriği gösterir)
git push origin v1.0.0

git push origin --tags
git tag -d v1.0.0
git push origin :refs/tags/v1.0.0

--- 
* INIT 
git init
git status
git add .
git commit -m "DevopsProje"
git remote add origin URL 
git push -u origin master (u => --set-upstream)
git push

---
* GIT COMMON 
git --help (Komutları hatırlamak)
git status (Durumu öğrenmek)

---
* ADD 
git add . 
git commit -m "Data"

* Kisa yoldan add commit yapmak
git commit -a -m "Data2"


---
* ALIAS 
git log 
git log --decorate --oneline --graph --all
git config --global alias.log44 "log --decorate --oneline --graph --all"
git log44


---
* REMOTE 
git remote 
URL Değiştirmek => git remote set-url origin2 yeniURL


---
* CHECKOUT/SWITCH 
Dikkat: checkout tyapmadan önce add yapmanız gerekmektedir.
git log 
git checkout hashCode(En az 7 karakter)
git checkout master

---
* STASH 
Dikkat: stash tyapmadan önce add yapmanız gerekmektedir.
git add .
git stash
git stash save "customiseStashName"
git stash list
git stash apply stash@{0}
git stash drop stash@{0}
git stash pop


---
* BRANCH/ MERGE/REBASE 
git branch -M main
git add .
git commit -m "branch öncesi"
git push 

git branch    (local branch)
git branch -a (Remote+local branch)

git log44

git branch backend (branch oluştur)
git checkout backend  (branch dallan)
git add .
git commit -m "backend"
git push origin backend (backend push)
cat >> backend.txt 
git add .
git commit -m "backend data"
git push -u origin backend
git commit -a -m "backend data-2"
git push 
git switch master
git checkout master 
git merge backend
git branch -D backend (silme)

git checkout master 
git merge backend (backend'i master'a birleştirme)
git merge backend --no-ff (backend'i master'a birleştirme)
cat >> frontend.txt 
git add .
git commit -m "backend data"
git push -u origin backend
git commit -a -m "backend data-2"
git push 
git switch master
git checkout master 
git merge backend

git checkout -b frontend (branch oluşturup dallanma)