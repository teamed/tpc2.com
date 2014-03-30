---
layout: post
title: How to Review Pull Requests
date: '2014-01-10T06:34:00+01:00'
tags: []
tumblr_url: /dev/pull
categories: blog
---

When a pull request is assigned to you for a code review, the rules are simple:
when it is closed, for any reason, you get 15 minutes plus one minute per each
comment posted in pull request by anyone.

Pay attention to the following:

 * unit test reproduces the problem being solved
 * [typical mistakes](https://github.com/tpc2/qulice/wiki/mistakes) are avoided
 * changes made don’t break existing design/architecture principles
 * size of the branch is less than 100 lines

Feel free to reject the changes if you don’t like them.
