---
title: "Can i disable all spam filters on MXroute?"
weight: 5
draft: false
# search related keywords
keywords: ["presales, spam, filter, disable"]
---

Sometimes a customer or prospective customer will ask if they can fully disable all spam filtering systems, allowing them to receive 100% of email addressed to them regardless of the source. The quick answer to this is no. Here's some more explanation:

All customers are subject to at least this:
- If you do not enable any spam filters on your account, we will enable it with settings to reject email that scores 25 or higher with Rspamd. If you disable it, we will re-enable it.
- IP blocks based on MXRBL will apply to all clients regardless of their configurations.

To avoid the first one, all we ask is that you configure your Rspamd filters. You can even contribute to them on [GitHub](https://github.com/mxroute/rspamd_rules). The second, our internal RBL, listed parties can request delisting at mxrbl.com if they are not active spammers.

In a shared environment, having no spam filters creates several problems that snowball over time into reduced performance, increased spam (more success = more spam sent), and forces us to increase pricing over time to compensate for. It's just not a reasonable expectation to have no spam filters, and this is why every major email service in existence has a high level spam filter outside of the user's control which is used to reject email. Gmail, Yahoo, Hotmail, all of them have this. We're not trying to be them, we just recognize the same problems that require this.
