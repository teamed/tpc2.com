---
layout: post
title: SVN Branches
date: '2011-07-18T04:03:00+02:00'
tags:
- SVN
- branches
- subversion
- PDD
tumblr_url: /dev/branches
---

Now you have a ticket, say #123, assigned to you and you are ready to implement
required functionality. First of all, you need to have Subversion 1.6 command
line client installed on your machine. Checkout the code from repository
(project name is test):

{% highlight bash %}
svn co svn://svn.fazend.com/test/trunk test
cd test
{% endhighlight %}

Build the product, in order to make sure that it is in good health. If you can’t
build the product because of errors/defects, or you just don’t know how to do it
- don’t blame yourself. Submit a new ticket explaining what the problem is
about. Don’t forget to attach your log. Wait for help, don’t spend time trying
to fix the problem. This time won’t be paid.

Assuming the build is clean you can start a new branch:

{% highlight bash %}
svn cp ^/trunk ^/branches/ticket123 -m "refs #123 - new branch"
svn sw ^/branches/ticket123
{% endhighlight %}

Make changes to the code. Commit your changes to repository as often
as possible, every time giving detailed explanation of your changes:

{% highlight bash %}
svn ci -m "refs #123 - class Foo was refactored"
{% endhighlight %}

All questions you may have during working with the task shall be
answered by yourself. If something is not clear - make assumptions and
document them with PDD puzzles.

Don’t spend more than a day for one ticket. Do everything you can in
order to finish working with a ticket within one calendar day. If, for
some reason, you need to spend more, don’t forget to resynchronize your
branch with trunk and resolve merge conflicts, if any:

{% highlight bash %}
svn merge ^/trunk
svn ci -m "refs #123 - resync with trunk"
{% endhighlight %}

When all changes are made, make sure the build is still clean. Run full cycle
testing of the entire product, to make sure you didn’t brake anything.

When finished, re-assign the ticket to those who assigned it to you. Explain in
the ticket how the problem was solved. Don’t make any more changes to the
branch.

We encourage you to read these articles about source control branching:

Chapter 4: Branching and Merging by Subversion
FeatureBranch by Martin Fowler
Chapter 7: Branches by Eric Sink, as part of his book “Source Control HOWTO”
Branching and Merging Primer by Chris Birmele
Streamed Lines: Branching Patterns for Parallel Software Development by Brad Appleton et. al
