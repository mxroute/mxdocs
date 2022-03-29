---
title: "How do calendars/contacts work?"
weight: 1
draft: false
# search related keywords
keywords: ["calendar, contacts, caldav, carddav"]
---

There are a lot of different ways that you can handle calendar and contacts. Right from the start you should be aware that we are primarily an email service and that using us for calendar and contacts will not be as simple as using Google or iCloud to manage email, calendar, and contacts on your devices. Those devices were built for those services, their implementations built into major software, for an easy UX that can only be provided by a company selling a product with the kind of adoption levels you would find with Apple and Google. If you want to continue to handle your contacts with Gmail, iCloud, Outlook, etc. this is fine and frankly what many of our customers do. If you really do want us to handle them, continue reading.

Through our license with Afterlogic, we provide CalDAV and CardDAV which do work with many applications/systems. You need to locate the URL for these items by logging into AfterLogic (DirectAdmin \> Webmail \> Afterlogic, or servername.tld/afterlogic if you know which server you’re on). Keep in mind that our other webmail systems (Crossbox, Roundcube) may have their own calendars and contacts that do not sync with or connect to the ones in Afterlogic.

Once logged into Afterlogic, click on Settings at the top right, and then on Mobile Sync on the left side. There you will find URLs for your contacts and calendar. These will be requested by your application when setting up Cal/CardDAV. The username/password will be your full email address and password, the same as you created in [another tutorial](https://mxroute.com/docs/add-new-email-account/).

Device/app-specific tutorials coming soon.