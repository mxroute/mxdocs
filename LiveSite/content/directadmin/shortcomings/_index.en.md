---
title: "Shortcomings"
weight: 3
draft: false
# search related keywords
keywords: ["directadmin"]
---

DirectAdmin is a web hosting control panel that we have modified for the purpose of managing your email. This means that we can outsource the security of our control panel while we’re still growing, without having to risk poorly managed/audited code, and while only making minor sacrifices.

## Shortcomings

When using a web hosting control panel for email, we want to be up front that there are some shortcomings for the use case. There are times where the panel references items that have little to no relevance for our use case. This is why it is important that you focus on our documentation. If you’re wandering around the control panel and making assumptions, you may make incorrect ones. Some good examples:

The DNS page was renamed “DKIM Keys” and you’re only meant to use the DKIM keys there. The SPF records, NS records, MX records, these are all wrong on that page. It’s leftovers from the intention of hosting DNS. We don’t host DNS. We just want you to be able to get your DKIM key and that’s how DirectAdmin exposes it.

More to be added.