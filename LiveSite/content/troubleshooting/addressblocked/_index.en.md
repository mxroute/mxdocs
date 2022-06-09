---
title: "Your sending/recipient address has been blocked by admins"
weight: 10
draft: false
# search related keywords
keywords: ["sending, recipient, address has been blocked, admins"]
---

We maintain a list of banned senders and recipients on each server. They are up for discussion, we are happy to discuss if you feel this has impacted you negatively. First, let's talk about what these most often mean.

## Your sending address has been blocked by admins

The most common reasons for this:
- You were caught spoofing this sender address as your From address when sending mail, but you objectively do not own the domain in this sending address.
- You were caught sending from an obviously invalid sender address and junking up mail queues because we can't bounce email to "root@localhost" so we ACL'd it so you would get an error instead.
- Your sending behavior is violating policy and not just by a little.

## Your recipient address has been blocked by admins

The most common reasons for this:
- You kept sending email to someone who didn't want it and we wanted you to get a direct error next time.
- You were spamming absolute junk to a third party service. We know you don't read 600 cron job notifications in your Gmail inbox every day, why are you wasting resources and rate limiting on this?
- You kept sending to an invalid recipient, one that doesn't even exist, and we're reducing the overhead reqeuired to constantly spam you with bounce errors.
- You are determined that this address not receive email so you keep it's quota full and make us bounce every message sent to it, and we're not interested in playing that role for you.

If you want to dispute any listing in these, open a ticket: https://accounts.mxroute.com/index.php?/tickets/
