---
title: "How do I set a profile photo for recipients to see?"
weight: 15
draft: false
# search related keywords
keywords: ["profile, photo"]
---

You might be familiar with the concept in Gmail, when they first implemented Google+ into Gmail and used your profile photo on the Google+ network. The recipient would open your email and see a little round photo next to the sender, and it would be your custom profile photo from their social network. Today the implementation has matured a bit, and Google+ has gone away, but the feature remains. Perhaps you’ve seen it elsewhere as well, and not just at Gmail.

It is important to build this as the foundation of the answer to the question: Profile photos are not part of an email. There is no method of sending an email and including in it instructions for the recipient service to display a profile photo. There is no standard for SMTP that involves the transmission of any data relating to profile photos.

Now, an email client (the application used to view your email) might support an external lookup method. This means that the software could say “I see this email came from [user@domain.com](mailto:user@domain.com), let me check this external database to see if it has a profile photo for [user@domain.com](mailto:user@domain.com).” An old and reasonably highly implemented service for this is Gravatar, where anyone can look up your email address and find a matching profile photo. This is commonly used on internet forums and blog/news comment sections, but can be used by email applications as well.

A newer standard named BIMI (Brand Indicators for Message Identification) attempts to solve this. Don’t expect it to be widely supported, but it might get there. We may write up more about that later, but for now we recommend this article: https://blog.mailup.com/2020/10/how-to-authenticate-with-bimi/

Note that neither of the above solutions (Gravatar or BIMI) are MXroute features, and they have nothing to do with MXroute at all. If you’ve implemented one of these solutions and your recipients are not seeing your profile photo, either you implemented it wrong or their software does not support it. It is 100% impossible for MXroute to have any influence or authority over this, it completely bypasses any and all relation to our service.