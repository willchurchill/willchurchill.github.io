---
title: "Video Conferencing - Zoom and other options"
date: 2020-04-10T10:00:00+00:00
description: "There are myriad options available to communicate with others - one on one or in a group. Here I go over some of the options."
question: "Is Zoom the best video conferencing option for my small organisation?"
content-type: guide
subject: "communication"
tags: ["communication","video conferencing","featured"]
headerimage: "communication.jpg"
---

***22/05/2020 UPDATE: Zoom have released version 5.0 of their application, and after 30th May 2020 will enforcing mandatory updates. One of the additional features is a switch to GCM encryption, which is a much more secure type of encryption than as been previously used. If you are using Zoom, you should update as soon as possible. You can find more information on [Zoom's blog here](https://blog.zoom.us/wordpress/2020/04/27/its-here-5-things-to-know-about-zoom-5-0/).***

*14/04/20 UPDATE: We are aware of the news that [over 500,000 Zoom passwords](https://www.businessinsider.com/500000-zoom-accounts-sale-dark-web-2020-4?r=US&IR=T) have been sold on the dark web. We are currently reviewing this news, and may update our advice below accordingly. If you have a Zoom account, we highly recommend that you change your password immediately.*

If you’re one of the many people now working from home, the chances are you’ve used Zoom at some point in the last 2 weeks. It’s ease of use, coupled with low price-point, have made it almost indispensable to organisations of all sizes.

Zoom has been gaining in popularity, with Zoom reporting more new users in the first quarter of 2020 than [in the whole of 2019](https://www.cnbc.com/2020/02/26/zoom-has-added-more-users-so-far-this-year-than-in-2019-bernstein.html), and is currently [second in the app download charts](https://www.businessinsider.com/zoom-video-everywhere-google-hangouts-skype-2020-3?r=US&IR=T#clear-evidence-of-zooms-rise-the-zoom-app-is-dominating-the-charts-for-both-iphone-and-android-users-2) (missing out to TikTok).

Of course, Zoom isn’t the only option. And while its successes are clear, there is [growing concern surrounding the security of the platform](https://www.cnet.com/news/zoom-every-security-issue-uncovered-in-the-video-chat-app/). Not least of which are reported [leaks of call recordings](https://www.nzherald.co.nz/business/news/article.cfm?c_id=3&objectid=12322451), and a lack of end-to-end encryption across the platform.

So what does that mean for a small organisation? Are the concerns valid? And if so what are your other options? We’ve been keeping an eye on the news and put together a guide of our thoughts. We will try to review this as and when new information comes to light.

***This post is purely meant as advice based on our (Copy & Code’s) experience and understanding of the current situation. It should not be used in place of your own organisation’s judgement. You should consult your organisation’s legal counsel, and or risk management processes, particularly if you deal with personal or sensitive data.***

*This post was last updated on 27th May 2020.*

# Why is Zoom so popular?
There are three things that make Zoom one of the most popular options for video conferencing:

1. **Price.** Zoom is one of the most price-accessible video conferencing options. Two people can have a call for up to 24 hours with no charge, and three or more people can talk for up to 40 minutes with no charge. If you want more than that, Zoom’s premium plans start from £12 per month.
2. **Ease of use.** If you’re a participant, you are sent a link that automatically downloads and runs Zoom. That’s it - you’re in the meeting, no account required, no credit card needed. If you’re setting up a Zoom call, the steps aren’t that much more complicated. Click a few buttons, and send your participants a link.
3. **Performance.** Zoom is one of the least bandwidth-heavy options on the market. This means that you don’t need a hyper-fast, mega-expensive internet connection to participate in calls. Of course, your mileage may vary, but generally speaking Zoom performs better than similar video conferencing options.

Beyond this, paid plans also have a range of easy to use features that are not always standard on other options. These include the ability to poll participants, and the option to hold ‘breakout sessions’ with subsets of your participants. You can also host full-featured webinars with one of Zoom’s additional packages.

# Sounds great, is there a catch?
There have been a number of issues with the platform since its increase in popularity. Some of the most common complaints are listed below. When considering what this means for your organisation, it’s important to understand the actual risk. What is important to one organisation may not be as relevant to another. Only you can determine whether a risk is too high to take.

## What is “Zoombombing”?
“Zoombombing” is when an unintended participant joins your Zoom call. This has happened to any number of cases - from [university lectures](https://www.studyinternational.com/news/zoombombing-online-classes/), to [religious ceremonies](https://www.bbc.co.uk/news/technology-52105209). One reason they occur is because Zoom calls are distinguished by a relatively short code - meaning that it is entirely feasible to guess a valid meeting ID, and thus gain entry.

It is possible to mitigate against Zoombombing by adding a password to your meetings. This way, even if someone guesses your Zoom Meeting ID, they will still also need to guess the password to gain access. Of course, this relies on you choosing something other than “password123”, and ensuring that you send it to your participants in a secure manner.

*EDIT: As of version 5 of Zoom, the length of meeting IDs have increased from 6 to 11 digits long. This makes it harder to "guess" a valid meeting ID, and therefore makes the likelihood of Zoombombing lower. Meeting passwords are also enabled by default in version 5, and administrators have the ability to define password complexity - stopping the "password123" problem.*

## What does “end-to-end encryption” mean?
You may have seen news that Zoom is insecure because it [lacks end-to-end encryption](https://www.theguardian.com/technology/2020/apr/02/zoom-technology-security-coronavirus-video-conferencing). Despite this coming to light, Zoom is still [falsely claiming](https://www.theregister.co.uk/2020/04/03/dont_use_zoom_if_privacy/) that the platform has this feature.

End-to-end encryption basically means that the signal is encrypted from your device all the way to the device(s) of the other participant(s) without interruption. It’s actually something that is relatively expensive from both a cost and resource point of view, and so many mainstream video conferencing tools lack this functionality for group calls. Slack, Microsoft Teams, and Google Hangouts, for example, all lack end-to-end encryption for group calls.

Does this matter? We’d argue usually not - the video is encrypted, but in order to maintain performance most video conferencing requires “video routers” along the way, and at these points the signal has to be decrypted and re-encrypted. This is the difference between encryption in transit, and true end-to-end encryption.

This is one of those considerations that your organisation will have to take into account. For many of the organisations we deal with, the lack of end-to-end encryption is not an issue. Alongside the encryption in transit, there is the option of password protecting the call itself. This is usually enough for many organisations. If you are dealing with sensitive information however, you might want to take a look at some other options (we’ve outlined some below).

## Video recordings are being stored on public servers
Zoom has the option to record the video conferences, which can be a very useful feature - for example to record lectures. However, [one of the more recent revelations](https://www.theverge.com/2020/4/3/21207134/zoom-recordings-exposed-thousands-identical-naming-search) about the platform is that thousands of these recorded calls are accessible to unintended audiences.

There are two ways to record Zoom calls. One is to record to the cloud, and the other is to record locally. If you wish to record Zoom calls, we would recommend that you always store the recording locally - meaning to the device the host is using. If you then wish to share that recording, you can share that file by other secure means.

# What are the other options?
If you’re still nervous about using Zoom, there are myriad other products. Below are just a few examples - bear in mind that these may not necessarily address all of the concerns raised regarding Zoom, so you will still need to do your own due diligence.

## Google Hangouts / Google Meet
This is a popular alternative, as it only requires a Google Account, and has a free option. In our experience, the video quality lacks a little compared to some other platforms, but Hangouts does have a number of features that help it stand out. One major bonus is that it requires no software, and only the host needs a Google Account, which makes it one of the most straightforward platforms to use.

If your organisation has a GSuite account, then you’re good to go. Hangouts Meet is included in your monthly subscription, and you get up to 100 participants in a call. If you’re a personal user, you can have calls with up to 10 other people. 

[Check out prices for GSuite here.](https://gsuite.google.co.uk/intl/en_uk/pricing.html)

*EDIT: Google has recently overhauled the Google Meet platform, adding a range of features to make it easier to use, more feature-rich, and more secure. Find our more via their website.*

## Cisco Webex
Cisco’s Webex platform is billed as one of the most secure platforms commercially available. It is used in many healthcare organisations, educational institutions, and corporations. End-to-end encryption is an option on its £12.50 plan, which makes it a commercially viable alternative to Zoom’s Pro plan. As with Zoom, only the host needs an account to start the call, so your participants can join for free.

Webex also has a pretty well featured free plan, though this doesn’t come with the same security enhancements. In terms of ease-of-use, we find Zoom a little more straightforward, but if security is your main concern, then the learning curve for Webex may be worth it.

[Check out Cisco’s Webex pricing here.](https://www.webex.com/pricing/index.html)

## Microsoft Teams
Teams is a platform that helps organisations not only video conference, but work more effectively together across a range of tools. This includes document collaboration, and instant messaging across channels. Teams is a great platform to use if your organisation already has Office 365. If not, the minimum £3.80 per user per month price tag may need consideration - though it is worth noting that this also gives you access to the Office Suite, and is comparable to the cost of the GSuite. As with most other platforms on this list, only the host needs an account to start a call.

[Check out Microsoft’s Office 365 pricing here.](https://products.office.com/en-gb/compare-all-microsoft-office-products?activetab=tab:primaryr2)

## Slack
Originally starting life as an instant messaging platform, Slack has expanded its offering to include a number of features, including video calling. The free Slack plan offers one-to-one video calling, but to get group calls for up to 15 people you’re looking at £6.30 per user per month. Unlike other options, everyone who wants to be on the call will need a Slack account, which may make this an expensive option if all you need is video conferencing.

[Check out Slack’s pricing here.](https://slack.com/intl/en-gb/pricing)

## Whereby
A relatively small player in the video-conferencing space, Whereby offers free calling for up to 4 people, and paid plans starting from $10 per month. It’s a popular option for quick and easy video conferencing, as - like with Google - there is no software required. Users other than the host also don’t need to register, making it a quick solution.

Crucially for this list, Whereby claims end-to-end encryption for its small rooms (4 people or fewer). However, it is transparent about the fact that for larger rooms the stream needs to pass through a server, requiring decryption and re-encryption - essentially the same as most options discussed here.

[See Whereby’s pricing here.](https://whereby.com/information/pricing/)

# Final thoughts
The last few weeks have highlighted a number of security concerns about Zoom’s platform. Nevertheless, it remains one of the most accessible options for organisations looking for a full-featured video conferencing tool. And for what it’s worth, the young company has been [quick to respond](https://www.bloomberg.com/news/articles/2020-04-09/zoom-hopes-to-win-back-clients-who-banned-app-on-privacy-worries) to its recent criticism.

At Copy & Code, we still recommend Zoom to certain clients - though making it clear that it is not a perfect product. The reality of the situation is that for most organisations, paying for a fully secured, full featured, easy to access platform is not feasible - and even if the money was there, it is better spent on other initiatives. The risk to many organisations is simply not that high.

Ultimately, your organisation has to make a decision for every product or service you use. 

We hope this has been helpful, but please do reach out if you have any questions.