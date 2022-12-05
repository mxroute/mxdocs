---
title: "This domain is banned from sending mail through MXroute due to DMARC, SPF, or spam"
weight: 1
draft: false
# search related keywords
keywords: ["banned, dmarc, spf, spam"]
---

You may sometimes see this error message from our outbound filter server:

"This domain is banned from sending mail through MXroute due to DMARC, SPF, or spam"

This message is used for several different things, but 999 out of 1000 times (made up number, probably true though) what it means is this:

You're forwarding email to Gmail, and we know that Gmail will reject this email when forwarded. It is a well documented fact (by Google even) that Gmail will sometimes reject emails that are forwarded, which they would have otherwise accepted if they were addressed directly to an @gmail.com address. It's a bit less known that Gmail's AI takes notice of how many emails you send them that they reject, and this statistically informs their algorithms. Therefore, it is most beneficial to work on improving your success to failure ratio, and an easy way to do that is to not forward emails that we know they will reject. If you think about it, it's quite an easy choice between these two options:

1. Let Google reject an email and ding your domain (and our IP) for a rejection.
2. Reject the email and no such ding takes place.

Same result to the end user, but a statistical improvement for you and all of our customers is only found in the second option. Easy choice.

Now, presently we do not differentiate between users forwarding to Gmail and users who don't, which means that you might say "Actually, I'm forwarding somewhere else" when you read this. You are, however, such a statistical minority that it isn't presently worth it for us to develop a solution that treats this differently based on the intended recipient network.

Forwarding email to Gmail is something we support and work hard to provide, and part of providing that is making sure that we're reducing the number of emails they reject when forwarded. Forwarding to Gmail is not a perfect situation, and you have to come to terms with the fact that there will never be a 1:1 comparison of emails we receive for you and emails that Gmail receives when forwarded to them. It's fine if you want to use Gmail as a mail client, but if you submit yourself to their rules then you must accept that their rules are what they are. If you really want to ensure that you receive 100% of emails that we accept on your behalf, in Gmail's interface, then you should consider using POP3 fetch instead. You can find a tutorial for that here: https://www.lifewire.com/how-to-collect-mail-from-other-pop-accounts-in-gmail-1172076

Remember this article for helping you to find your POP3 information: https://mxroutedocs.com/general/smtpimappopdetails/
