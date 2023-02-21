---
title: "Customizing Reseller Template"
weight: 1
draft: false
# search related keywords
keywords: ["template, reseller, theme"]
---

Tips for customizing what your customers see on your reseller package.

When you first log in, you’re going to see an interface that is nothing like what you’re used to as a normal MXroute customer. This is what DirectAdmin looks like for resellers, and without our customizations.

[Screenshot 1 Missing]

It’s okay to feel a little overwhelmed here, but I’m going to walk you through some of the customizations that we make for our users so that you can do the same for yours, or do it differently if you prefer.

First, I want you to mouse over the Reseller Tools menu and you’ll see this dropdown:

[Screenshot 2 Missing]

From there, click Customize Evolution Skin. Then you’ll find yourself here:

[Screenshot 3 Missing]

The Evolution skin is what we prefer, and it has the best options for customizations. So that’s what we’re going to recommend. When you click on a category or an option under it (on the left side), you’re going to notice that options appear to on the right side. For example, I clicked on DNS Management:

[Screenshot 4 Missing]

If you’ve used the rest of our services, or reviewed our DKIM tutorial then you know we rename this to “DKIM Keys.” We’re not hosting DNS here, but DNS hosting is a feature of Direct Admin. For our purposes, the only thing relevant in that menu is the public DKIM key.

The next menu item we focus on is FTP Management. We disable this, because your customers won’t be able to use it and they shouldn’t see the menu option for it. To disable it, click on the FTP Management menu item on the left, and then uncheck the Enabled box on the right.

[Screenshot 5 Missing]

We’re going to go ahead and do the same thing (disable) to MySQL Management and Site Redirection. You can go ahead and Save your changes if you want, just to make sure you don’t make a whole bunch and then lose them. Click the Save button to the right of “Customize Evolution Skin.”

[Screenshot 6 Missing]

At this point we’re done with the Account Manager menu. So we’re going to click the blue, left pointing arrow to go back.

[Screenshot 7 Missing]

Now that you’ve got the hang of it, let’s show you what we’ve done to each menu so that you can speed through it. If the words have lines through them, we’ve unchecked Enabled for that item. If the whole menu name has a line through it, we unchecked Enabled for that whole menu. Here’s what we’ve done to each menu for our customers.

In the E-mail Manager menu we disabled Mailing Lists, and renamed MX Records to Email Routing.

[Screenshot 8 Missing]

In Advanced Features we’ve disabled most of the features. We also moved Domain Pointers here from Account Manager, because we feel it’s more of an advanced feature. You can read a tutorial and explanation of it in our domain alias guide.

[Screenshot 9 Missing]

System Info & Files was easy, we disabled the whole menu.

[Screenshot 10 Missing]

The Extra Features menu we renamed to Webmail, and we’ll show you how we added options to it below the screenshot.

[Screenshot 11 Missing]

We added Crossbox and Rainloop to the Webmail menu. First, click on the header of the Webmail menu (assuming you renamed it from Extra Features like we did). On the right side, you’ll see an Add Entry section like this:

[Screenshot 12 Missing]

Change the radio button from “Route” to Link” at the top right of the section shown in that screenshot.

Here’s a look at the settings we used to add Crossbox and Rainloop. Be sure to replace “lisa.mxrouting.net” with the hostname of the server your account was provisioned on. This is listed in the Important Account Information email we sent to you when you signed up.

[Screenshot 13 Missing]

That’s it for menus!

If you click on Colors and Misc. Options toward the top (under Customize Evolution Skin), you can adjust several more things about the template. Here’s a sample of our settings for our customers:

[Screenshot 14 Missing]

In the next tutorial, we’ll talk about how to add packages that take advantage of the changes that you just made.
