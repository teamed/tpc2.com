---
layout: post
title: You're stuck, what to do?
date: '2014-02-28T13:56:00+01:00'
tags: []
tumblr_url: http://www.tpc2.com/post/78136148940/youre-stuck-what-to-do
---
It’s a very common situation, when you get a task, which you can’t implement. It’s not a problem at all, let’s see what you should do:

Design flaws. It’s not clear what design is required. You don’t know how to implement a class, how to define method arguments, what classes to use as dependencies, etc. This happens mostly when you just joined the project and don’t have enough information yet. Don’t try to figure this out yourself. Rule of thumb is this: “if something is not clear, it is our fault, not yours”. If you don’t understand how project is designed, it is a fault of project designer. Submit a bug report, asking for an explanation of a design concept. You will be paid for this report, and the information you get back will be shared between all other developers. Your contribution will be appreciated.

Don’t ask for help. When something is not clear, don’t expect anyone to help you. The only source of help is the source code itself. If it doesn’t explain everything that you need - it is a bug, which should be reported. When you’re working with a task and you have questions - don’t ask them in the task. Instead, create a new bug report. Someone will be assigned to this new task and will provide you the help you’re looking for.

Broken build. You can’t merge your branch because of failures in tests that don’t belong to your task. This may happen, mostly because some of unit tests are not 100% stable. Don’t try to fix them, just report a problem as a new bug and wait for its resolution.

As you can see, in all situations we strongly recommend to report bugs instead of trying to fix the problem yourself.
