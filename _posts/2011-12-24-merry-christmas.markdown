---
layout: post
title: Merry Christmas!
author: Julian R. Moore
---
Merry Christmas, and a Happy New Year! (and such.)

It's winter break, so it's time to start some projects that I will almost certainly not maintain into my next semester of school. This year I opted to update my blog. Prior to this [flymoore.com](http://flymoore.com/) was driven by [TextPattern](http://textpattern.com/), which is all well and good, except that I really never updated anything, and had forgotten how it all worked and how to get into it, and it really was overkill for a blog that had all of two posts on it.

So welcome to my new, [jekyll](http://jekyllrb.com/)-powered, [git](http://git-scm.com/)-published, and [320 and Up](http://www.stuffandnonsense.co.uk/projects/320andup/) based blog!

I have to say that working with jekyll is always fun, because it is absolutely built with the mentality of a lazy programmer, and makes so much sense to someone that spends most of their day staring at bash terminals. The [Less.js](http://lesscss.org/) stylesheets provided by 320 and Up made mangling out the CSS much more enjoyable (parametric mixins are the coolest thing since sliced bread!). Even now, writing posts in Markdown makes much much more sense to me than any browser-based WYSIWYG editor I've ever tried to fight with.

If any part of this was unpleasant, it was getting the git-publishing to work. I had to rework my gitolite server, which is always scary and confusing, and then make a post-receive hook work. I almost hope to post this and let it pass and never look at it again because it really is atrocious.

<script src="https://gist.github.com/1518791.js?file=post-receive">&nbsp;</script>

I really don't want to say anything else about this *incredibly robust* script other than, well it works, right now...

And an interesting fun-fact: Embedding gists in markdown/jekyll is a little more complicated than I thought it might be. If you just use the code given to you by github:

	<script src="https://gist.github.com/1518791.js?file=post-receive"></script>
	
Then markdown/jekyll will try to shorten it to:

	<script src="https://gist.github.com/1518791.js?file=post-receive"/>
	
Which will destroy your DOM tree, placing everything inside the script tag. To fix this all you have to do is put some "content" inside the script tag. I just did:

	<script src="https://gist.github.com/1518791.js?file=post-receive">&nbsp;</script>
	
and voila it works! (as you can see above)