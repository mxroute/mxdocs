---
title: "Cloudflare DNS Tutorial"
weight: 2
draft: false
# search related keywords
keywords: ["dns, cloudflare"]
---

Several parts of this document are animated GIFs showing how to accomplish a task. When you scroll to them, you may be viewing them from the middle or end. Watch through them to see them start over.



## Find DNS Records

**Step 1**: Log in to Cloudflare https://dash.cloudflare.com/login

**Step 2**: Locate and click on your domain ![img](https://mxrouteprod.b-cdn.net/wp-content/uploads/2020/08/cloudflare-domains.png)



## Delete old MX Records

![img](https://mxrouteprod.b-cdn.net/tutorialimages/DNS/Cloudflare/deleteoldmx.gif)



## Locate MX Records

Find the “Important Account Information” email that contains them here: https://accounts.mxroute.com/index.php?/clientarea/emails/



## Add MX Records

Note that the records used in this example need to match the ones you located in the previous step, not necessarily the ones we used in the example. ![img](https://mxrouteprod.b-cdn.net/tutorialimages/DNS/Cloudflare/addmxrecords.gif)



## Add SPF Record

![img](https://mxrouteprod.b-cdn.net/tutorialimages/DNS/Cloudflare/addspfrecord.gif)



## Add DKIM Record

Note in the video below that we removed the quotations at the beginning and the end. This is because Cloudflare automatically adds them, and leaving them results in two sets of them which breaks DKIM. Also note that the name is always:

```
x._domainkey
```

Video: https://www.youtube.com/watch?v=Q6amwMvOzWw
