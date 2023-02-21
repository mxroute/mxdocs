---
title: "Add Domain Alias"
weight: 6
draft: false
# search related keywords
keywords: ["alias"]
---

Please note that this is NOT for adding another domain. This is ONLY for when you want one domain to be an alias for another.

A domain alias treats one domain as a pure alias for another. In my example, I’m going to make the domain “jar.land” be an alias for the domain “jarland.me.” This means that when you send email to any address @ jar.land, it goes to the same address at jarland.me, provided that I’ve already created that address on the jarland.me domain (or have a catch-all configured). To make it extra fun, I can actually log in to webmail as “me@jar.land” and send from it, while this is merely an alias for “me@jarland.me.”

If none of this makes sense, you probably don’t want to use this feature, and you should probably ignore it. If it sounds like exactly what you want, let’s go over it.

## Step 1: Log in
You should be logged in to the DirectAdmin control panel. If you’ve forgotten how to do this, review this tutorial: https://mxroutedocs.com/directadmin/login/

## Step 2: Navigate to Domain Pointers
![](https://static.mxrouteapps.com/Tutorial%20Images/Domain%20Alias/domainalias-1.png)

Click on Domain Pointers under Advanced Features

## Step 3: Select the target domain
Remember in my example, I want to make “jar.land” an alias for “jarland.me.” So I’m going to select “jarland.me” as the target domain in the dropdown box located in the top-right corner of the DirectAdmin panel.
![](https://static.mxrouteapps.com/Tutorial%20Images/Domain%20Alias/domainalias-2.png)

Click the target domain in the dropdown box.

## Step 4: Create domain pointer
Click on the CREATE DOMAIN POINTER button:
![](https://static.mxrouteapps.com/Tutorial%20Images/Domain%20Alias/domainalias-3.png)

## Step 5: Create that alias
I know it says “http://www” in the box before it, but remember that DirectAdmin was made for web hosting and we’re modifying it for our use. You can ignore that, I promise this does email too. Fill in the domain you want to be an alias for your target domain. For me, that’s “jar.land” and you can see what I’ve filled in here:
![](https://static.mxrouteapps.com/Tutorial%20Images/Domain%20Alias/domainalias-4.png)

You’re done! That wasn’t so bad, right?
