---
title: I blog in Markdown now
description: I flipflop between platforms a lot - this week it's the turn of Jekyll and Markdown
date: 2020-05-28T16:30:00+00:00
image: https://willchurchill.co.uk/assets/images/musings/yaml-post-header.PNG
categories: ['technology']
tags: ['blogging','markdown','technology','jekyll','wordpress','medium']
socialsharelink: ['Twitter','https://twitter.com/willchurchill/status/1266054546410942472']
---
I go through a lot of different platforms for various web-based things. I like learning new things.

For a while now, my personal site has been sitting on WordPress. WordPress attracts an equal amount of praise as it does vilification. It's cheap and easy to set up, which is good. It's customisable - both for the average user and for developers, which is great. It is easy to bloat it with plugins though, which is bad. And there those who worry that it being PHP-based (a comparative veteran of the web languages) makes it substandard.

It's definitely not for every use case. For me though, I liked it for my site because I could set it up and then more or less forget about it. It’d be ready and waiting if I wanted to post something, and doing so was quick and easy.

But, as might not have escaped your notice, dear reader, the vast majority of the world is in lockdown due to COVID-19. With that comes a seeming necessity to learn a new skill. Some took to baking, others to Tik-Tok dancing. I’m already a pretty good baker, and the less the world sees of my dancing the better. I decided to rebuild my personal website from scratch, using two technologies I had very little experience with: [Jekyll](https://jekyllrb.com/) and [Markdown](https://guides.github.com/features/mastering-markdown/)

## Wait, is this blog post an excuse for you to talk about nerdy web-dev things?
Yes. Consider yourself warned.

## Fine, what made you choose Jekyll and Markdown?
Markdown is a way of storing text-based information. Designed in 2004, it's a quasi-universal standard for easy to read and easy to edit files. These files can be converted to web pages, without the need to include the usual markups and tags required to render.

Markdown has little tricks and features that make it nice to write in. For one, it can be done from any editor (though there are Markdown specific editors available). Additionally, the lack of tags makes it quite a distraction-free experience.

Markdown itself is great - in the same way that flour, yeast, and water are great. To make tasty tasty bread though, you need an oven. For this site, the oven comes in the form of Jekyll. Jekyll takes Markdown files, combines them with template files made up of HTML, CSS, and other fun things, and spits out a static, flat-file website.

There are plenty of ways of getting to a static website. For me, putting my content into Markdown gives me the opportunity to start playing around with other technologies and Content Management Systems, without worrying about compatibility. I settled on Jekyll as a first foray into static sites, because it’s one of the most popular platforms, and allows for a lot of customisation.

## What is a static site?
A lot of the content-driven sites you’ll have visited are database driven. This means that the news article, blog post, or list of Top 10 Best Cheese Sandwich Recipes that you peruse are actually less like Word documents, and more like rows on Excel. When you visit that page, the browser “queries” (calls upon) the database and renders the page pretty much on-the-fly.

By contrast, static websites store each post and page as actual documents on the web server. When a user clicks a page, that file is presented. 

There are a number of benefits to this. The first is speed. Everytime you visit a page on a database-driven site, the browser has to make a connection to the database, pull down the information it needs, and then arrange it on the page so that you can see all of those cheese sandwich recipes. Static websites don’t need to do most of this. The page doesn’t need to be generated, as it already exists - it just needs to be shown. The result is a much faster load time for the content.

*It’s worth noting that most modern websites and browsers employ something called ‘caching’ which removes the requirement to query the database for every single page.*

One of the other benefits of static websites is security. Without a database, or a requirement for a login, there’s no data to steal or compromise.

Most static sites are also cheap to run - they don’t need any fancy servers or scripting languages. You upload the content to your page and you’re done. You can actually host a static site on [GitHub Pages](https://help.github.com/en/github/working-with-github-pages/about-github-pages) for completely free.

## Sounds great - why aren’t we all doing this?
One thing I’ve learned whilst putting together my Jekyll based website is that, while the end result of a static site is very straightforward, the journey there is not.

If I want to post a new blog, these are the steps I have to take:
1. I write the post in Markdown.
2. I put it into a specific folder on my computer.
3. I launch something called [Docker Desktop](https://www.docker.com/) which allows me to run Jekyll from my laptop.
4. I compile the website, including the new Markdown file (this process is actually quite intensive, and can take minutes to complete).
5. This creates the static pages ready for upload. Using a FTP client (I opt for FileZilla), I upload the static site to my web server.  
*Average time between writing the post and it being readable on the internet: 10 minutes.*

By contrast, to post something on my old WordPress website, I needed to do the following:
1. Login to WordPress
2. Write the post
3. Click Publish. 
*Average time between writing the post and it being readable on the internet: 10 seconds.*

The long and short of it is that this type of website is not for everyone. That said, what I’ve described is not the only way for you to have a flat-file website. There are other CMS options that give you a good middle ground between WordPress style functionality, and the static-site benefits. [Grav](https://getgrav.org/), is a great example.

It’s also important to note that my personal site is nothing more than a series of text-based pages. If you’re looking for more interactive content, perhaps something that requires a ‘back and forth’ between you and your users, then static sites might not be for you.  

***EDIT (22/06/2021): Since originally writing this post, I've changed the workflow for my post writing. This site is now hosted on GitHub Pages, which means all I have to do is write the post and then commit the change to my repository. GitHub handles the rest. It's still at slightly more protracted process than publishing in WordPress, but nowhere near as demanding as when I first started.***

## Was it worth it?
For me, yes. The exercise was about learning a new way of doing something, and I found that interesting. 

I also wanted a way of splitting out my content into different types. You may notice that I’ve got different sections for Musings, Fiction, and other things I’ve written. This is definitely possible on other CMSs - easy in fact - but I liked the process of doing this on Jekyll.

Would I recommend a Jekyll / Markdown based website for everyone? Absolutely not. But if all you want from your website is a simple blog, or a way of showcasing text-heavy content, then static sites should be something you look into. Maybe start with something like [Pico](http://picocms.org/) or [Grav](https://getgrav.org/).

## How long before you get bored and try something new?
Oh, it’ll be any day now… But all my posts are in Markdown, so it’s fine!
