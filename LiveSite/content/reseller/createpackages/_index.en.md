---
title: "Creating Reseller Packages"
weight: 3
draft: false
# search related keywords
keywords: ["packages, creating"]
---

This tutorial will go over how to create packages that you will sell to your customers.

Note: You CAN oversell with these packages, you are only held to the total combined usage of the reseller plan that you purchased. For example, you might have a 50GB reseller package. You could sell 100 accounts with 10GB allocated to each, even though this is far more storage than you have purchased with us. It’s up to you to balance this according to your needs and your customer’s needs.

# Step 1: Create Package
Mouse over the Account Manager menu and click on Manage User Packages.

![](https://assets.mxrouteapps.com/Create_Packages/Manage_Packages_Menu.png)

On the right side, look for the ADD PACKAGE button and click it.

![](https://assets.mxrouteapps.com/Create_Packages/addpackage.png)

This might look overwhelming, here’s a bit of what you’re going to see next:

![](https://assets.mxrouteapps.com/Create_Packages/addpackage_page.png)

Let me walk you through these items. For any of these items, you can select “Unlimited” on the right to not be bound by a limit on that feature.

 - Bandwidth. Put a check in the Unlimited box on the right side.
 - Disk Space. You can switch this to GB if needed, there is a dropdown box that defaults to MB. You choose what goes here.
 - Inode. Leave this unlimited.
 - Domains. How many domains do you want the customer on this package to be able to add? (ex. domain.tld)
 - Sub-Domains. How many subdomains do you want them to be able to add? (ex. sub.domain.tld)
 - E-mail Accounts. How many email accounts do you want them to be able to add?
 - E-mail Forwarders. How many email forwarders do you want them to be able to create?
 - Mailing Lists. We set these to 0 on our side. Mailing list management should be handled outside of DirectAdmin.
 - Autoresponders. How many autoresponders do you want them to be able to create?
 - MySQL Databases. You should set this to Unlimited, Crossbox uses this a lot.
 - Domain Pointers. Do you want them to add these, and how many do you want them to be able to add? It may not be clear what this is, so check out this tutorial to understand it better.
 - FTP Accounts. We usually don’t worry with FTP, but maybe you want your customers to be able to upload/download from their maildir. You can decide here.
 - Anonymous FTP Accounts. Disabled on reseller.
 - CGI Access. Disabled on reseller.
 - PHP Access. Disabled on reseller.
 - Catch-All E-mail. You probably want this checked.
 - SSL Acccess. You want this checked.
 - SSH Access. Disabled on reseller.
 - Cron jobs. If you know what this can help you do, go for it. We probably don’t recommend confusing customers with this.
 - System info. Your call.
 - Login Keys. Your call, we won’t go into detail about what this is.
 - DNS Control. To some degree you need this, for DKIM keys.
 - Skin. We recommend Evolution, and that’s what we show you how to customize in another tutorial.
 - Language. We only have “en” right now.
 - Feature Sets. Leave this at "Allow All" trust me, you don't want to screw with this.
 - Plugins Allow/Deny. Same, leave as "Allow All" if you don't want to break something.
 - Package Name. Up to you. Customers will likely see this somewhere.

# Step 2: Just kidding, there is no step 2.
