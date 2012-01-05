---
layout: post
title: Flymoore on Github
---
Just this evening I created a repository and used the requisite git voodoo magic to push the existing git repository this website is based on to GitHub. You can check it out [here](https://github.com/jlulian38/flymoore)

This is neat for a number of reasons. Firstly now I have a backup of my website that is certainly more stable than either the MacBook my development version exists on or the VPS this website lives on. Secondly I know have a separate development repository. I can dork around and play with the GitHub repository as much as I like and it won't ever break the live website. I can start editing the website from multiple computers through GitHub and not worry about the website repository getting all out-of-sync and broken, and limit the number of computers that have access to the flymoore.com repository. All in all it's really quite cool that this is possible.

GitHub obviously provides the service that makes Git so easy to use nowadays, but the real hero of this story is Git itself. Git is so flexible. Many of my projects start out as a local repository on my computer used just so I can look back and figure out where a bug is coming from or just compare different versions of code. Git usually starts out as a failsafe against stupid mistakes, making it harder to break a project such that it can't be repaired. If I want to though, I can go create a GitHub repository and share this project with the world, or share it with my colleagues on a number of private repositories. There are all sorts of different models that Git supports, different levels of distribution of developers and their repositories. (There are a whole bunch of interesting ones described [here](http://progit.org/book/ch5-1.html)) Git will let you do all of this, and its all very easy.

Git is in a sense kind of like the Linux (guess who developed it...) of Source Control Management systems. It's incredibly adaptable and really a pleasure to use, but many people are stuck using old more cumbersome systems or simply unaware.
