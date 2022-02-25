---
title: "How do you deal with IP reputation?"
weight: 1
draft: false
# search related keywords
keywords: ["ip, reputation, blacklist"]
---

It's simple really. When you send an email from our platform it goes to an outbound filter which scans it to make sure that it isn't spam. If that passes, the email goes out to a series of outbound relays. If an email is rejected at any time for an issue relating to IP reputation, we pull that IP address from production for a cooldown period and address the problem while we deliver your email again from a different IP. If, by chance, the recipient doesn't like any of our IP addresses, we send the email out to a contracted service (SpamWall) who will then attempt to deliver the email again, from several different IPs, for 24 hours. If it fails there, safe to say your recipient doesn't want your email and we'll bounce it back to you.