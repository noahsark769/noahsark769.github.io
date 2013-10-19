---
layout: post
title: How to make your first website (really)
user_date: July 29th, 2013
---
Recently, I've been getting multiple emails from people (usually fellow students) who appreciate some of the work that I've done (and some of the work that I've collaborated with others on). Invariably these guys want to get into web development themselves, and they ask me a few questions:

>    "I know there are a ton of tutorials online to learn HTML, but I was wondering if there was anything specific that worked for you."
>    
>    "I was wondering, how did you learn Django and how did you become good with HTML/CSS/Javascript?"

Instead of replying to all these emails with hastily written responses, I'd like to cover all the bases here by talking about how I got started with web dev and how to (really) do the same thing yourself. So, as a student/novice, how do you start learning web development? Well, with a few guiding principles.

#Be interested.

The first experience I ever had with web coding was when I was about ten years old, googling "how to make a website". The first google result was a fairly terrible looking page overflowing with `<marquee>` (you can look that up), but it taught me about how the structure of an HTML document works, what tags are, and the difference between `head` and `body`. I stuck on this, started fiddling around, and kept trying to make cooler and cooler websites. I wish I had a copy of the first full page that I ever made. Animated gifs and embedded midi music was everywhere, but I loved it - I couldn't get enough of this stuff.

Why couldn't I? It was so interesting to me that making my own version of what I used every day could be so easy! How cool was it that I could make my own website just like GameFAQs or Miniclip? (These were sites that I frequented as a child.) The best part about this was that it took _literally_ twenty minutes, and the big takeaway is that _you can literally find answers to all your questions by googling_.

If you want to do the same thing I did, any tutorial will do. The web application engineering class on [Udacity](https://www.udacity.com/) is pretty good. I can also recommend [Treehouse](http://teamtreehouse.com/) and I've heard good things about [CodeAcademy](http://www.codecademy.com/).

#Understand servers.

One of the most common introductory interview questions in software engineering is, "What happens when I go to `www.google.com`?" The non-in-depth, only-the-most-common-case answer is this:

_Your browser looks up the IP address that `www.google.com` corresponds to in the DNS service, then sends a request (which is just a sequence of letters) over the internet to the physical computer that is specified by that IP address. That computer looks at the request (which usually specifies a file) and sends a similar sequence of characters back to your browser with the contents of that file (a response). Your browser interprets those characters as HTML, and since it was been programmed to convert HTML to graphics, it does so, and you see the google homepage._

Once you can see a webpage that you made, I highly recommend paying a little bit a year to buy a hosting plan and play around with cPanel, `ssh`, and apache - I think being able to fiddle with that stuff and figure out how it works is very important. An added bonus is that at this point, you'll be able to put something that you made on the _actual internet_. A good starting point is to buy {your-name-here}.com and make it your mission to create a good looking website so that you can show people you can make websites. That's what I did.

#Know the command line.

There's only so far you can get in web app development without being able to run commands from the UNIX command line. If you're on Mac, you're in luck because `Terminal.app` is already a UNIX command line shell (if you don't know what that means, google it). If you're on Windows, the command line is a little different, so you're going to have to do a little more digging, or download something like [Cygwin](http://www.cygwin.com/).

[My first CS class](http://www-inst.eecs.berkeley.edu/~cs61a/fa11/61a-python/content/www/index.html) had a pretty good introduction to the command line if you've never used it before.

If you get super into UNIX shells and you're on Windows, try installing [Ubuntu](http://www.ubuntu.com/) alongside. [Wubi](http://www.ubuntu.com/download/desktop/windows-installer) does this for you easily, it's quick and dirty, and you'll feel like a super hacker.

#Read blog posts.

The first time I went to an infosession for a design club in college, I noticed that on the application it asked what design blogs I read. I didn't read any! I figured it might be time to start, so I did a google search (a deep theme is emerging here) for the best design blogs.

[Smashing Magazine](http://www.smashingmagazine.com/) is one of my favorites, and the articles over there range from very technical to not technical at all. [CSS Tricks](http://css-tricks.com/) is a great site for CSS articles. [Hacker News](https://news.ycombinator.com/) is _by far_ the best resource I can offer in terms of getting aclimated to the culture of software and startup design/development.

Tech talks are awesome too - my first exposure to MVC frameworks was watching a cast of the introduction of Ruby on Rails. I wish I could remember where I'd found that or I would link to it here. Invariably, tech talks will have a positive effect on your understanding of, well, probably something different each time. [Confreaks](http://www.confreaks.com/) has some good recordings, and check out [Destroy All Software](https://www.destroyallsoftware.com/screencasts) as well.

#Read the spec.

When you have a basic understanding of how CSS works, go to the [W3C's website](http://www.w3.org/TR/css-2010/) and read the specification on CSS. Yes, it can be a little dry, but expecially when you get into CSS3, the stuff actually becomes very interesting. Besides, this is _the absolute best_ way to be absolutely sure how your code works, which means you'll know how to write better code right off the bat.

#Have a github account.

One of the designers that I follow on [Dribble](http://dribbble.com/) wrote a great blog post about the fact that learning to be a good designer is simple: just download the designs of others. This principle actually applies to web development too - reading code written by great writers is invaluable in becoming a better writer.

[Github](https://github.com/) is great because it gives free access to millions of lines of good code. I'd recommend [colorbox](https://github.com/jackmoore/colorbox) as a good repo to read once you hav a basic understanding of [jQuery](http://jquery.com/), and you can check out some [coffeescript](http://jquery.com/) on [my page](https://github.com/noahsark769).

#Use chrome dev tools/firebug.

To be honest, nothing will be able to make you learn HTML/CSS better than visualizing elements and editing them in real time. [Chrome Dev Tools](https://github.com/noahsark769) let you do just that.

#Have a background.

In order to learn Javascript well, it helps to have a background in other scripting languages like [python](http://www.python.org/) (and, as a bonus, you'll need to know either python or [ruby](http://www.ruby-lang.org/en/) if you want to use [Django](https://www.djangoproject.com/) or [Rails](http://rubyonrails.org/)). Again, I've got to plug the lecture notes from [the first CS class I ever took](http://www-inst.eecs.berkeley.edu/~cs61a/fa11/61a-python/content/www/index.html) for an awesome python/scripting tutorial.

I started out learning javascript by just assuming that the syntax was exactly the same as python and going from there (and googling when I had errors). Maybe this was a good way, or maybe it wasn't, but the point was that it got me going and actively thinking about how the language worked and how I could implement advanced web functionality if I wanted to, which is a __very good thing__.

Any resource online is good for javascript [__except W3Schools__](http://www.w3fools.com/).

#Have a curriculum.

I find that the absolute biggest obstacle for me (when learning anything) is lack of responsibility to answer for knowledge. Reading a whole book on javascript is no good if you can't actually remember it.

Having a curriculum is the best way to deal with this. I _highly_ recommend sites like [Udacity](https://www.udacity.com/), where you can take courses at your own pace but are still responsible for homework assignments, etc. _Coding is the best way to learn to code_, and coding up something that you just learned is even better. For [Django](https://www.djangoproject.com/) specifically, I recommend sitting down for a day or two and doing the [Django tutorial](https://docs.djangoproject.com/en/dev/intro/tutorial01/).

#And now, the takeaway:
If you want to learn how to do web development, be interested, learn actively by coding, and google a lot. Get started right now: [here's your first google search](https://www.google.com/search?q=beginning+html+tutorial&oq=beginning+html+tutorial).
