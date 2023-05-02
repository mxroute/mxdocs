---
title: "Configure Spam Filters"
weight: 7
draft: false
# search related keywords
keywords: ["spam, filters"]
---

## Log in to Control Panel
You can find a guide for that by clicking this [here](https://mxroutedocs.com/directadmin/login/).

## Click E-mail Manager on left side
![](https://mxrouteprod.b-cdn.net/tutorialimages/SpamFilters/afterlogin.png)

## Click Spam Filter Config on left side
![](https://mxrouteprod.b-cdn.net/tutorialimages/SpamFilters/filterconfig.png)

Here, in the screenshot above, you can see the interface for configuring your account's spam filters. Next, let's break down what each section means.

### Always scroll to the bottom of the page and click "Save" after making any changes to your spam filter configuration.

## Where to send the spam?
![](https://mxrouteprod.b-cdn.net/tutorialimages/SpamFilters/wheretosendspam.png)

Remember that what you set here doesn't necessarily mean that it will always be spam, so you should be careful, this could be what you want it to also do with false positives. The "Send the spam to the user's spam folder" option is by far the most popular. This can, however, cause a problem with forwarders which we'll explain in a FAQ at the bottom of this article.

## Set threshold
![](https://mxrouteprod.b-cdn.net/tutorialimages/SpamFilters/threshold.png)

Any email scoring at or above the value set here will be considered spam and treated as otherwise configured on this page. A setting of 10 here is probably a decent starting point, but you could start higher (15 maybe?) and see how things work out for you before adjusting further.

## To delete or not to delete?
![](https://mxrouteprod.b-cdn.net/tutorialimages/SpamFilters/blockornot.png)

You might set an upper threshold here so as to say "If it hits a score this high, I don't even want to see it, just reject it." That is what this option allows you to do, or not do.

## Rewrite Subject
![](https://mxrouteprod.b-cdn.net/tutorialimages/SpamFilters/rewritesubject.png)

Do you want to identify what we considered to be spam, based on your settings, by changing the email subject to make it obvious? You can do that here, if you want.

## How to deliver spam
![](https://mxrouteprod.b-cdn.net/tutorialimages/SpamFilters/howtodeliverspam.png)

In theory this allows you to basically quarantine the email by requiring you to download it as an attachment. This function, frankly, doesn't work very well. You are welcome to try it, we're not prioritizing it and more than likely will end up removing it in a future iteration (it was added there by licensed software).

# Blocklist and Allowlist

Scrolling down on that page you'll find where you can modify your blocklist and allowlist. You can use wildcards here as well. Here are a few examples of things you can put in those boxes (Always click "Add" after):


Allowing a whole domain:
![](https://mxrouteprod.b-cdn.net/tutorialimages/SpamFilters/allowasteriskatdomain.png)

Allowing a specific sender:
![](https://mxrouteprod.b-cdn.net/tutorialimages/SpamFilters/allowsenderatdomain.png)

Blocking a specific sender:
![](https://mxrouteprod.b-cdn.net/tutorialimages/SpamFilters/blocksenderatdomain.png)

Blocking a TLD:
![](https://mxrouteprod.b-cdn.net/tutorialimages/SpamFilters/blocktld.png)

# FAQ

- At the top I see "Manually edit the config file yourself" does that work?

Yes. If you feel comfortable writing your own user_prefs file for SpamAssassin, go for it. Take note that if you add too many allow/block items in there, this whole UI may fail to load for you later. It's an old habit, you should break yourself of it, blocking every email you ever received 1 spam from adds too much overhead to your account for no benefit. How often do you really get two emails from the same spam sender? Probably never 2 years down the road, clean your list for your own benefit.

- What's the issue with forwarders + the "Send the spam to the user's spam folder" option?

Let's say I have jarland@mxroute.com as my email account, and I create forward@mxroute.com which only forwards email to jarland@mxroute.com. I have the "Send the spam to the user's spam folder" selected. Where does the spam go? In theory, the spam folder of forward@mxroute.com. But forward@mxroute.com is just a forwarder and doesn't have an inbox much less a spam folder. So then, if the email isn't an account and is only a forwarder, where does the spam go? To the spam folder of the owner of mxroute.com, which is your DirectAdmin username @ the server you are on. So, for my example, it goes to the spam folder for ebrsquee@arrow.mxrouting.net. I have to go to Roundcube (at server name /webmail) and log in with my DirectAdmin username and password to find the email. This scenario is more rare than you'd think, but we just don't have a way with the current software iteration to fully resolve the oddity...for now.

- Can I train my spam filters to learn from my preferences?

You cannot. This was an intentional decision. The overhead for using sa-learn on customer folders is justified by virtually no end result. In cases that we've observed where users used sa-learn to train bayesian filters over roughly 3 years, the result was that it finally started working and it started targeting ham as spam, forcing the user to admit after 3 years of training that the entire thing needed to be dumped. Not worth it. Spammers are too intelligent for bayesian algorithms these days.

- Can we make the spam filters work better?

You're welcome to continue tweaking your settings to your liking, but if you're looking for a flawless setting or a perfect match for what you've seen on some other email service, the quick answer is no. We're not anyone else, we make all of our work available and open source for anyone who wants to contribute (and we contribute to it ourselves almost daily). We're always working on it, it's not a job that will ever be finished. Spammers are humans, as are we, and we're both actively and intelligently working against each other at all times. One day they'll outsmart us, the next the opposite, rinse and repeat until the end of time.
