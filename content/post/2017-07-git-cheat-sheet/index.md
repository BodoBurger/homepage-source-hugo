---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Git Resources and Cheat Sheet"
subtitle: ""
summary: ""
authors: []
tags: ["git"]
categories: ["cheatsheets"]
date: "2017-07-11"
lastmod:
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Placement options: 1 = Full column width, 2 = Out-set, 3 = Screen-width
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  placement: 1
  caption: "[by Brandon Green](https://unsplash.com/photos/GEyXGTY2e9w)"
  focal_point: "Center"
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

This blog post serves as a cheat sheet for git commands
I found myself googling again and again.
It will be updated from time to time.

## Useful articles / resources

- [Git reference manual](https://git-scm.com/docs)
- [Git for beginners on stackoverflow](https://stackoverflow.com/questions/315911/git-for-beginners-the-definitive-practical-guide)
- [Pro Git book (2nd, 2014)](https://git-scm.com/book/en/v2)
- [Git pretty chart](http://justinhileman.info/article/git-pretty/)
- [On undoing, fixing, or removing commits in git](http://sethrobertson.github.io/GitFixUm/fixup.html)
- [A successful Git branching model](https://nvie.com/posts/a-successful-git-branching-model/)
- [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/)
- [The beginner's guide to contributing to a GitHub project](https://akrabat.com/the-beginners-guide-to-contributing-to-a-github-project/)
- [Code Reviews: Before You Even Run The Code](https://lornajane.net/posts/2015/code-reviews-before-you-even-run-the-code)

---

## Change branch without committing changes: stash and pop

Want to have a look at another branch without committing changes done so far?
Put them in a stash where they can hide until you switch back.

~~~
# on branch dev
git stash
git checkout master

# do stuff on master

# back to dev
git checkout dev
git stash pop
~~~

[Source](https://stackoverflow.com/a/16114694),
[more about *git-stash*](https://git-scm.com/docs/git-stash).


## Create a local branch, push it to a remote repository and track it

~~~
# create and switch to new branch
git checkout -b MyNewBranch

# do some stuff

git push -u origin MyNewBranch
~~~


## Delete local branch

~~~
git branch -d MyLocalBranch
~~~

---
