---
title: "Failure to comply with SPF policy"
weight: 1
draft: false
# search related keywords
keywords: ["spf, failure, comply, policy"]
---

When sending an email, you may receive this error:

`Your domain has been blocked from sending mail due to failure to comply with SPF policy`

If you receive this, it means we sent you a warning and you did not comply. We manually blocked your domain in our outbound filters. Most likely you were sending emails to someone who declined them because your SPF record didn’t match our policy, and when reviewing reasons for failed deliveries your domain came up in our list.

We absolutely require that you use our SPF record to send email through our service. We may not notice if you are not, unless your emails are being declined due to it. Failed deliveries can impact IP reputation, and your failure to take proper measures to ensure that delivery from your domain is possible is not appreciated.

[SPF documentation](https://mxroutedocs.com/dns/dnsoverview/).

[Request domain to be unblocked](https://accounts.mxroute.com/index.php?/tickets/).
