---
title: "No such recipient here"
weight: 1
draft: false
# search related keywords
keywords: ["no, such, recipient, here"]
---


If you’re sending an email and immediately get the response “No such recipient here” there could be multiple answers to what happened. However, the answer we’re going to give here would cover 100% of all instances that users have reported this in the last year.

Most likely you just moved your domain to MXroute and tried to send an email from one user to another inside of that same domain, or you moved more than one domain to MXroute and tried to send an email between the domains. The “No such recipient here” error means you didn’t create that email address yet on MXroute. But, you might ask, why isn’t it trying to deliver to your previous email host instead of MXroute? That’s because our servers attempt local delivery first, for domains that are hosted on each server. If the domain exists on that server, it attempts to send locally. If the recipient doesn’t exist locally, it fails.

So now you have to ask yourself some questions:

Is it really worth sending this test email before you finish moving your mail over? Are you okay with making a change to our server’s configuration, which will cause our server to reject inbound mail for your domain if you forget to reverse it after changing your MX records to point to our server, just to send a test email?

If it is worth it, or you don’t intend to move one or more of those domains to have it’s inbound hosted on our servers, then the answer is simple. [Log in to DirectAdmin](https://mxroute.com/docs/login-to-directadmin/), click on E-mail Manager, click on Email Routing, and uncheck the box that says “Use this server…” next to it. Mission accomplished.

If you change your MX records to point to us later, you’re going to have to reverse that setting or you’ll end up receiving [another common error](https://mxroute.com/docs/550-authentication-required/).
