---
title: "Why your website needs an SSL"
date: 2023-11-17T10:00:00+00:00
description: "You've likely heard of SSL, but do you need one? And what even is it anyway? Read on and find out..."
question: "Why do I need an SSL Certificate when my website doesn't have sensitive data?"
content-type: guide
subject: "webdev"
tags: ["webdev","internet","cdn"]
image: "assets/images/articles/padlock.jpg"
wrcpost: "yes"
---

## Introduction

If you've done much of anything in the way of managing your organisation’s website, you'll likely have come across the concept of SSL. But what is it? What are they for? Do you need one? And why does everything in tech need a three letter acronym?

For answers to (almost) all those questions, and more, read on!

## What is an SSL certificate

Without getting bogged down in the technical details, an SSL certificate allows your website to use a secure connection between it and your visitor. It carries credentials to tell the user's web browser that the website is the one it says it is, that the host server is verified, and that if there is any sensitive information being passed from the user to the site (think login details) then they will be encrypted.

You can tell if a website has an SSL certiciate by the padlock icon that appears next to the web address in your browser. If a site doesn't have this, or if the certificate has expired, they the browser will let you know. But we'll come on to that...

## Why do I need one?

It might seem obvious why you would need an SSL certificate if you're handling user's passwords or credit card information. But what if your website is just informational content. Maybe you run a charity and your website just holds some case studies of your work and a contact form. Even this website that you're on now - which is basically just a bunch of articles - has an SSL certificate. If you're not asking people to login, and you aren't selling them anything, why do you need to get a certificate?

There are a number of reasons why having an SSL certificate is crucial. Here are the main ones...

### Google penalises you for it

When people use Google to search for websites, there are a lot of factors that determine what makes it to the hallowed ground of the first results page. The formula is a constantly moving target that almost no one fully understands (by design). But there are a few keys markers that Google - and the other search providers - make a point of explaining. One of these is security, and an SSL is a must-have if your site wants to make it in the SEO game. As of a few years ago, Google now actively warns users away from unsecured sites. 

This goes further than search engines too. The Google Chrome browser - among others - will warn you if you are accessing a site without an SSL certificate. 

### You might still have information that is sensitive

I speak to a lot of organisations that don't have members' areas, and don't sell anything on their site, but they might have a contact form. Even if you aren't asking for someone's credit card details in your contact form (what, you don't?) they are still filling out their name, and likely their email address. This is sensitive information, and without an SSL certificate that data gets sent in plain-text, unencrypted, to the server. This makes it very easy for someone to intercept this data and use it for their own nefarious means - likely without any way for you to know.

An SSL certificate protects that - and in fact all - information that comes from your visitor.

## Cool, so an SSL protects me against all hackers?

Ah wouldn't it be great if life were that simple? But no. Unfortunately, SSL certificates are one layer of security for your site, but there are other ways that people can mess with you. An SSL is the mimimum you need, but not the only thing that you should consider. If you've got a WordPress site, I go into a little more detail on that [in this post]().

## Ok, I need one. But how do I get one?

There are different "levels" of SSL that you can get, depending on what you need.

## I wanted the technical details