---
title: "550 Authentication Required"
weight: 1
draft: false
# search related keywords
keywords: ["550, authentication, required"]
---

What this error basically means is that you are sending an email to a server that has not been configured to receive email for that domain. There are two common causes for it:

1. You pointed your MX records to the wrong server. You need to go back and find your DNS records: https://mxroutedocs.com/dns/dnsrecords/

2. You fixed another problem by disabling email for the domain on that server, and after pointing your MX records to us you are now receiving this error. First, log in to DirectAdmin. Next, select the domain in question from the dropdown box at the top right of the screen. After doing that, look in the menus on the left side for “Email Routing.” Click that, and look for a checkbox that says “Use this server to handle my e-mails” next to it. Put a check in the box. This should solve the issue.
