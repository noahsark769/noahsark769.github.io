---
layout: post
title: Crashing Chrome
user_date: October 6th, 2012
truncate_length: 500
---
While developing [Berkeleytime](http://berkeleytime.com), a project I'm working on to help UC Berkeley students browse courses and plan their schedule effectively, we ran into one of the most interesting bugs I've ever encountered. The page would load, but the password field on the login form would occasionally stop working - when you removed all the text from the password field Chrome would slow to a halt and crash.

The odd thing was that the same bug happened in Safari, but not in Firefox. We knew it must be something to do with webkit, but we had no idea what was causing it - and since our deadline to launch was coming up, we puzzled over it all night.

Check out this [example](http://noahgilmore.com/examples/webkit-password-crash.html). It seems that whenever Webkit detects that a password field (i.e. `<input type='password'>`) has been made empty, it iterates through every DOM node present on the page BEFORE that password node.

If the password input is at the top of the page, it hardly iterates through anything, but if the password node is the final element, it iterates through all the nodes in the tree. We were loading a page with about 5000 `li`s for all the Berkeley courses, plus 700+ `li`s for all the departments, plus maybe 1000+ more for the user interface. We had the login form in a popup with [colorbox](https://github.com/jackmoore/colorbox), which automatically appends the popup content to the end of the page. So every time we deleted all the characters in the password, field, *all* the nodes got iterated through.

We eventually fixed the problem by modifying the colorbox code to prepend the popup HTML rather then appending it.

This is presumably a security measure, though I can’t think of a reason why Webkit would look through every single DOM node. It’s worth it to note that DOM trees of greater depth seem to make the “checking” algorithm even slower. For the record, this is Chrome 22.0.1229.79 and the bug has been posted for a while (6 months) [here](https://code.google.com/p/chromium/issues/detail?id=121918&q=password%20lag&colspec=ID%20Pri%20Mstone%20ReleaseBlock%20OS%20Area%20Feature%20Status%20Owner%20Summary).

Moral of the story: make sure you don’t have an inane number of elements before a password input in your HTML. If you really need to, consider using a dropdown menu jQuery plugin for your form, or anything you can use to provide your password field at the top of the HTML and display it later using javascript. Please [let me know](http://twitter.com/noahsark769) if you're more knowledgeable about this than I am and you have an idea of why this might happen!