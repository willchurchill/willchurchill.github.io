---
title: "Why you always need an SSL for your website"
date: 2022-08-01T10:00:00+00:00
description: "There are myriad options available to communicate with others - one on one or in a group. Here I go over some of the options."
question: "Why do I need an SSL Certificate when my website doesn't have sensitive data?"
content-type: guide
subject: "charity tech"
tags: ["communication","video conferencing","featured"]
headerimage: "padlock.jpg"
---

## What is an SSL certificate
Without getting bogged down in the [technical details](#i-wanted-the-technical-details), an SSL certificate allows your website to use a secure connection between it and your visitor. It carries credentials to tell the user's web browser that the website is the one it says it is, that the host server is verified, and that if there is any sensitive information being passed from the user to the site (think login details) then they will be encrypted.

You can tell if a website has an SSL certiciate by the padlock icon that appears next to the web address in your browser. If a site doesn't have this, or if the certificate has expired, they the browser will let you know. But we'll come on to that...

## Why do I need one?
It might seem obvious why you would need an SSL certificate if you're handling user's passwords or credit card information. But what if your website is just informational content. Maybe you run a charity and your website just holds some case studies of your work and a contact form. Even this website - which is basically just a bunch of articles - has one. If you're not asking people to login, and you aren't selling them anything, why do you need to get a certificate?

There are a number of reasons why having an SSL certificate is crucial. Here are the main ones...

### Google penalises you for it
When people use Google to search for websites, 

In addition, most modern web browsers will also warn you if you're trying to access a site without an up-to-date SSL Certificate. 

### You might still have information that is sensitive
I speak to a lot of organisations that don't have members' areas, and don't sell anything on their site, but they might have a contact form. Even if you aren't asking for someone's credit card details in your contact form (what, you don't?) they are still filling out their name, and likely their email address. This is sensitive information, and without an SSL certificate that data gets sent in plain-text, unencrypted, to the server. This makes it very easy for someone to intercept this data and use it for their own nefarious means - likely without any way for you to know.

An SSL certificate protects that - and in fact all - information that comes from your visitor.

## Cool, so an SSL protects me against all hackers?
Ah wouldn't it be great if life were that simple? But no. Unfortunately, SSL certificates are one layer of security for your site, but there are other ways that people can mess with you. An SSL is the mimimum you need, but not the only thing that you should consider. If you've got a WordPress site, I go into a little more detail on that [in this post]({% post_url 2022-07-15-wordpress-site-security %}).

## How do I get one?
There are different "levels" of SSL that you can get, depending on what you need.

## I wanted the technical details