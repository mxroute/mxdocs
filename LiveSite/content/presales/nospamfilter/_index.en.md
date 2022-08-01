---
title: "Can I disable all spam filters on MXroute?"
weight: 5
draft: false
# search related keywords
keywords: ["presales, spam, filter, disable"]
---

Sometimes a customer or prospective customer will ask if they can fully disable all spam filtering systems, allowing them to receive 100% of emails addressed to them regardless of the source. The quick answer to this is no. Here's some more explanation:

All customers are subject to at least this:
- If you do not enable any spam filters on your account, we will enable it with settings to reject email that scores 25 or higher with SpamAssassin. If you disable it, we will re-enable it.
- IP blocks based on MXRBL will apply to all clients regardless of their configurations.

To avoid the first one, we ask that you configure your SpamAssassin filters. The second, our internal RBL, listed parties can request delisting at mxrbl.com if they are not active spammers.

In a shared environment, having no spam filters creates several problems that snowball into reduced performance, increased spam (more success = more spam sent), and forces us to increase pricing to compensate for this. It's just not a reasonable expectation to have no spam filters. This is why every well-known email service has a high-level spam filter outside of the user's control to reject emails. Gmail, Yahoo, Hotmail, all of them have this. We're not trying to be them. We just recognize the same problems that require this.
