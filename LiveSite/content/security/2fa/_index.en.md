---
title: "2FA on Email Accounts"
weight: 1
draft: false
# search related keywords
keywords: ["2fa, two, factor, security"]
---

The truth is no one does, and a few vendors out there have tricked you into thinking they do by sleight of hand. Email protocols (POP, IMAP, SMTP) do not support two factor authentication at all. Any attempt to implement them on those services would render all third party mail clients useless as they would be incompatible, because there is no mechanism in the protocol. While a company as large as Google may be able to use a proprietary login method that is then supported by all developers of all major email clients, anyone smaller than Google is unlikely to get developers to massively support their non-standard implementations, which would also render third part mail clients useless. The only consistent way to handle email login is to use the primary, universal protocols that do not support 2FA.

Now, some people bring up “app-specific passwords” for POP/IMAP/SMTP as a solution. From a security perspective, it isn’t a solution. There are potential convenience gains but they’re mostly mitigated by the actual reality of what a compromised password looks like. App-specific passwords is the “sleight of hand” I’m referring to above. They’re plain passwords used to log in and bypass 2FA, which renders 2FA invalid on the account. While many offer this, no one tracks them, and they can’t be limited to just the app (because, again, the protocols don’t work this way). So if your account gets compromised and you have 50 passwords, what do you do besides delete all 50 passwords and start over? Delete them one at a time and see how long it takes for spam to stop going out from your account? Reduce server security and log which password is being used (because that’s the only way to gain that insight from the universal protocols)?

App-specific passwords do not provide security, and two-factor authentication on email protocols does not exist. The only secure method at this time would be to limit to web-only logins and use 2FA on the webmail clients, but this isn’t a viable trade off as it nullifies most use cases of the service.

So please remember to keep your passwords secure, and please don’t fall into the trap of thinking that 2FA on email exists while plain passwords can bypass it.

