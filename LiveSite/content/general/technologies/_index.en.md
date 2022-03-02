---
title: "What technologies do you use?"
weight: 3
draft: false
# search related keywords
keywords: ["technologies, features"]
---

#### Overall Tech

The overall technologies we use are:

Exim, Postfix, Dovecot, Rspamd, Dovecot, Roundcube, Crossbox, Snappy (Rainloop fork), DirectAdmin

#### E-mail Flow

E-mail arrives at each recipient server directly. Users are spread out across multiple servers. Your server is the one you log in to and set MX records for. Possible names for your server might include Eagle, One, Ghost, Ocean, Acadia, Echo, Arrow, Longhorn, etc.

Outbound e-mail leaves the server housing your account and goes out to filtergroup. The filtergroup hostname points to load balanced rspamd filter servers. From there, your email is scanned for spam. If spam is detected, the e-mail is rejected and the server housing your account returns the error back to you. If the e-mail passes the filters, it is forwarded on to relays. The relays run a wealth of IP addresses, no less than a /24 at any given time. E-mail is rotated randomly between those IPs and, if an e-mail fails for a reason that we think might be related to IP reputation, it is retried from different IPs several times. If the e-mail still fails, it forwards to SpamWall. SpamWall will attempt delivery from different IPs for up to 24 hours before bouncing the e-mail back to the sender.