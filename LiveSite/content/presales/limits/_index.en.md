---
title: "What are the service limits?"
weight: 3
draft: false
# search related keywords
keywords: ["limit"]
---

We want to be clear about two things:

1. MXroute is a full email provider. We are not SendGrid (SpamGrid, sorry). While you can use us for transactional email, you shouldn't expect from us interfaces that match companies who commonly refer to themselves as transactional email providers.

2. MXroute is not indescriminate pipeline designed to carry any volume or quantity of shit from one location to another. That sounds harsh but hear us out. Our aim is to deliver your intentional emails to inboxes and not spam folders, where it can be at all possible for us to do that (we can't guarantee it, we aim to do everything we can to not cause it). To do that, it means your neighbor on our service cannot send the same email to the same Gmail address 600 times in one hour, just because your neighbor coded some poorly designed script that they connected to our SMTP server. We can either be an indescriminate pipeline, or we can aim for inboxes. The idea of doing both is just a funny joke.

So with that said, we do have limits. Here they are:

1. 300 outbound emails per hour, per email address. You should not send from multiple addresses just to get around this limit. You can and should separate different use cases, which may cause you to exceed 300 per hour over multiple email addresses, so long as they are legitimate use cases and not an obvious workaround (i.e. sender1, sender2, sender3 all sending the same email campaign).

2. No marketing.

3. Definitely no unsolicited marketing.

4. No marketing.

5. No marketing.

6. "Cold outreach" is unsolicited marketing, stop trying to trick people by changing the words.
