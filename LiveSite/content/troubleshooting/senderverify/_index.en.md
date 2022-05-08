---
title: "Sender Verify Failed"
weight: 1
draft: false
# search related keywords
keywords: ["sender, verify, failed"]
---

If you receive the error "Sender verify failed" from our SMTP server this has a very specific meaning, but the correct resolution for you may not be as clear as it will be rooted in preference and use case. These are the most common fixes for it:

1. Remove the sending domain from DirectAdmin (Domain Setup page)
2. Rename the domain in DirectAdmin (Domain Setup page)
3. Create the sending address on the domain in DirectAdmin
4. Create a forwarder or catchall on the domain so that it can receive mail for the sending address
5. Tell the server that it doesn't host that domain by going into DirectAdmin, Email Routing, select the domain from the dropdown box at the top right, and then uncheck the "Use this server..." box on that page.

Here's the longer explanation:

Each SMTP server has a list of domains that it has been given by our users. This list is something you add to when you go into Domain Setup in DirectAdmin and add a domain. It's also populated with the initial domain that you give when you register your account with us. When the SMTP server receives an email where the FROM address lists a domain that is in it's local list, exim says "Hey I know that domain, I was told I manage it. Let me see if this sender exists." If the sender, the FROM address, is incapable of receiving mail (specifically ON THAT server of ours that your account is on) then the verification for the sender fails. In other words, "Sender verify failed."

It doesn't matter if you actually host that domain with us. All that matters is that the server THINKS you host that domain with us, and that the same server of ours which thinks that cannot locally deliver mail to the From address. Your MX records are not taken into consideration. Whether you expect to receive mail for the domain on our server or not, irrelevant. As long as it is in the list of domains that the server manages, this is how the logic functions.
