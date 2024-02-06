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
- v2board
- Violation of "Intended for human consumption" [policy](https://mxroute.com/policy.html)
- ENOUGH. WITH. THE. CRON. JOB. SPAM. It may be new to you but it isn't new to us. You send an email for every cron job that executes every minute, from an invalid sender, to an invalid recipient. It floods our queue, sets off alerts, and we have to play the role of janitor to clean it up and write new ACLs to block it. A new customer does this to us every 6-12 hours, and it's driving us crazy. If you want to relay your whole Linux server through us, learn what your server is sending and make sure it's only stuff someone actually needs to read. We are not a toilet, we do not want to be required to flush every time you fill us with shit.
- You recently sent too many emails to invalid recipients. This must mean you are either sending spam, sending to a non double opt in mailing list (which we also consider to be spam), or you have made a mistake which threatens to negatively impact the reputation of your domain.
- Your Wordpress contact form was being used to send spam to third party email services with which we would like to maintain a highly positive reputation (Gmail, Hotmail, Yahoo, etc).
- You were intentionally circumventing the 300 outbound per hour limit by sending the same email campaign from additional addresses (ex. sender1, sender2, sender3, etc).
- You sent marketing emails. We do not allow marketing emails to be sent from our platform, the fact that we only blocked your sending address means we probably still think you can be saved as a customer. If we didn't, we would have terminated the account.
- We saw a significant number of rejected emails from your domain to third party services, because you didn't add us to your SPF record. [Fix your SPF](https://mxroutedocs.com/dns/dnsrecords/) and [open a support ticket](https://accounts.mxroute.com/index.php?/tickets/).
- You were caught spoofing this sender address as your From address when sending mail, but you objectively do not own the domain in this sending address.
- You were caught sending from an obviously invalid sender address and junking up mail queues because we can't bounce email to "root@localhost" so we ACL'd it so you would get an error instead.
- Your sending behavior is violating policy and not just by a little.

## Your recipient address has been blocked by admins

The most common reasons for this:
- You tried to send email to SMS which we forbid by policy (long story, very legit reasoning)
- You kept sending email to someone who didn't want it and we wanted you to get a direct error next time.
- You were spamming absolute junk to a third party service. We know you don't read 600 cron job notifications in your Gmail inbox every day, why are you wasting resources and rate limiting on this?
- You kept sending to an invalid recipient, one that doesn't even exist, and we're reducing the overhead required to constantly spam you with bounce errors.
- You tried to send email to a domain that does not have a valid MX record in DNS, and we're blocking it to reduce overhead and preserve our IP reputation.
- You are determined that this address not receive email so you keep it's quota full and make us bounce every message sent to it, and we're not interested in playing that role for you.
- Your recipient has a misconfigured server causing it to claim we are blacklisted at spamhaus when we are not, which is causing our automation to put the IPs we tried to send the mail from into a cooldown/mitigation period. It's unreasonable for us to address this problem on their behalf.

If you want to dispute any listing in these, open a ticket: https://accounts.mxroute.com/index.php?/tickets/
