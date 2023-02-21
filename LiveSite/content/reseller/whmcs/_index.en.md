---
title: "Reselling With WHMCS"
weight: 5
draft: false
# search related keywords
keywords: ["whmcs"]
---

**This tutorial is under construction, as it is currently missing important screenshots.**

As a reseller, you may want to sell our services to your customers and use an automated billing system to provision service, bill clients, etc. We’re going to show you how to set this up.

First, you should have created your packages. Click here for that tutorial.

You should create a **Welcome Email** before you create the product. Click **Setup** and then **Email Templates** in WHMCS.

[Screenshot 1 Missing]

Click Create New Email Template.

Set **Email Type** to **Product/Service**, give it a unique name. Click Create.

Your email template is yours to create. This is what your software will send to customers when they purchase email service from you. At the bottom, there are all kinds of variables (Available Merge Fields) that you can fill in to make the template dynamic. We can’t make this for you, but we can show you what our template looks like: https://docs.google.com/document/d/14yuMEOlvSPZyM8hKtLx1TbRcf404ZDSG7jI9q2TiQMM/edit?usp=sharing

Next, you need to add the server.

In your WHMCS admin, go to **Setup > Products/Services > Servers**.

[Screenshot 2 Missing]

From there, click **Add New Server**.

[Screenshot 3 Missing]

In my example, we’re using the safari.mxrouting.com server, and you can see what I’ve configured in the screenshot below. Yours should look similar, but relative to the server you were provisioned on (described in the Important Reseller Information e-mail we sent you).

[Screenshot 4 Missing]

Scroll down to **Server Details**. Change **Type** to **DirectAdmin**, and enter your reseller username/password (from the Important Reseller Information e-mail) in the **Username** and **Password** fields. The end result should look something similar to this:

[Screenshot 5 Missing]

Click **Save Changes**.

Next, go to **Setup > Products/Services > Products/Services:**

[Screenshot 6 Missing]

Click **Create a New Product:**

[Screenshot 7 Missing]

The next page should look something like this when you’ve filled it all out:

[Screenshot 8 Missing]

Make sure to use Shared Hosting and not Reseller Hosting. We sold you the Reseller Hosting, you are selling your customers the Shared Hosting. Don’t forget to change Module to DirectAdmin. You can disable “Create as Hidden” but be aware that this will become publicly visible in your WHMCS as soon as you’re finished. You may want to test first, then return later and edit the product to unhide it.

Click **Continue**.

Take a look at Product Description and Welcome Email to see how we set up our example:

[Screenshot 9 Missing]

When finished with that, click the **Pricing** tab. Look at how we’ve configured that to charge $10 per month:

[Screenshot 10 Missing]

When you finish that, click the **Module Settings** tab. Here’s an example of how ours might be set up:

[Screenshot 11 Missing]

Click on the **Links** tab and you can copy the URL required to order the product. You might use that to send to potential customers or to link from your website.

You can keep doing things in there as you need or want, but that’s all you need to do the basic setup. Click Save Changes and you’re done.
