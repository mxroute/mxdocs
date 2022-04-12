---
title: "Gmail forwarder not working"
weight: 1
draft: false
# search related keywords
keywords: ["gmail, forward"]
---

Please don’t test a Gmail forwarder by sending an email to yourself from the Gmail account that you are forwarding to. For example:

If I forward email from jarland@mxroute.com to jarland@gmail.com, and I test this forwarder by sending an email to jarland@mxroute.com from jarland@gmail.com, this will not appear in my inbox at jarland@gmail.com. Google conversation view doesn’t allow this to appear like any normal email, because you already have a copy of it in your Sent folder. Test the forwarder from a different email account that isn’t the one you are forwarding to.
