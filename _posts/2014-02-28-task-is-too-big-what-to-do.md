---
layout: post
title: Task is too big, what to do?
date: '2014-02-28T14:05:20+01:00'
tags: []
tumblr_url: http://www.tpc2.com/post/78136971467/task-is-too-big-what-to-do
---
Scope of the task is too broad, but you have just 30 minutes to implement it. What to do?

It’s a very common situation, don’t be scared. In short, you should 1) identify the highest abstraction layer, 2) implement it, and 3) mark unimplemented parts by puzzles (we call it PDD).

Let’s say, your task is to implement a feature called “Database Periodic Archiving”. The entire scope of this task can be presented as a pyramid. The highest layer of it explains in one sentence what database we should archive, where to put the data, and what is “periodic”. If even this layer is unclear for you, ask for clarification and stop working with the task.

Don’t waste your time trying to understand it yourself. If the task is not clear for you, it’s not your fault. It’s a fault of those who gave you the task. Moreover, if you see that project documentation has defects and doesn’t explain the product properly, submit a bug. Someone will fix it and you will get the information you’re looking for. Besides, you will be paid for the bug reported (15 minutes).

When the highest abstraction layer of the scope is clear for you, start thinking about its implementation. You already know that the database should be compressed into GZIP format and saved into some directory, every hour (for example). You don’t know how the compression will be implemented, how errors will be handled or whether this “per hour” schedule should be configurable or not.

However, you have enough information to wire components together and write a test (we always start with tests). Make sure the test fails and commit it. Then, implement as little as you can in order to make the test pass. If you can’t implement that much, mark the test as @Ignore, and commit.

It is not expected that you will close your task with a fully implemented feature! This is where our model of work differs from others you’ve seen before. We understand that software development is a continuous process, and can’t be measured by fixed-scope tasks. That’s why we ask you to push the product a few steps forward, cover your changes by unit tests, align your changes with our quality standards, merge them into master, close the ticket, and get your money.

Again, you do as much as you can on the highest level of abstraction. And leave the rest of the scope unimplemented. If you have questions, problems, or suggestions, ask them in new tickets.
