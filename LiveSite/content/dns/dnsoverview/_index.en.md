---
title: "DNS Overview / Deep Details"
weight: 5
draft: false
# search related keywords
keywords: ["dns"]
---

This is a comprehensive overview of our DNS structure, including a list of our servers to reference in the data included on this page. Before looking here for your DNS records, you should ALWAYS be referencing the email you receive when you sign up with “Important Account Information” in the subject. If you can’t find the e-mail, you can find a copy of it here:

[https://accounts.mxroute.com/index.php?/clientarea/emails/](https://accounts.mxroute.com/index.php?/clientarea/emails/) 

However, this page might help you to construct the details or alternate values to those details in the event that you have lost it or are seeking more information.

## cPanel Servers

These are legacy, no new customers are provisioned here.

ocean.mxroute.com (Germany, Hetzner)  
aus.mxroute.com (Australia, RansomIT)  
acadia.mxroute.com (US, BuyVM)  
banshee.mxlogin.com (Germany, Hetzner)  
friday.mxlogin.com (Germany, Hetzner)

## DirectAdmin Servers

All new customers are provisioned on one of these servers.

london.mxroute.com (Netherlands, Worldstream – No new customers provisioned)  
longhorn.mxrouting.net (US, BuyVM – No new customers provisioned)  
safari.mxrouting.net (Virginia, US)  
lucy.mxrouting.net (Virginia, US)  
arrow.mxrouting.net (Virginia, US)  
echo.mxrouting.net (Virginia, US)  
blizzard.mxrouting.net (Virginia, US)  
sunfire.mxrouting.net (Virginia, US)  
taylor.mxrouting.net (Virginia, US)  
pixel.mxrouting.net (Virginia, US)  
shadow.mxrouting.net (Germany)  
moose.mxrouting.net (Virginia, US)  
eagle.mxlogin.com (Virginia, US)  
monday.mxrouting.net (Virginia, US)  
tuesday.mxrouting.net (Virginia, US)  
wednesday.mxrouting.net (Virginia, US)  
redbull.mxrouting.net (Virginia, US)
witcher.mxrouting.net (Utah, US)

## Other Services

mail.mxlogin.com (Crossbox, Germany, Hetzner)  
Outbound filters (Dallas)  
Outbound Relay Infrastructure:  
– /24 owned IPs (Dallas, Vultr)  
– Redis (Dallas, Vultr)  
– MongoDB (Dallas, Vultr)

## MX Records

All MX records are given consisting of two values:

Record 1: {server}.domain.tld (Priority 10)  
Record 2: {server}-relay.domain.tld (Priority 20)

So if, for example, your server is blizzard.mxrouting.net, then your MX records are:

Record 1: blizzard.mxrouting.net (Priority 10)  
Record 2: blizzard-relay.mxrouting.net (Priority 20)

## Backup Relays

You’re right to note that both the primary and secondary point to the same IP. This is a placeholder for future expansion, and should not be considered a limitation of the service for two reasons:

1. Our original backup relay deployments increased your chances of not receiving an email. The mere existence of a backup relay may look impressive but is not at all inherently so.  
2. It is the job of a sending server to try again later if they cannot reach the server at your MX record for delivery. This makes a backup relay more of an unnecessary luxury, though it may not be true 
forever.

Notes:

- If the primary server is not down and is merely rejecting email, the sender isn’t going to try the backup relay anyway, so a backup relay doesn’t protect you from primary server issues that aren’t 
outages.  
- If you have the “-relay” records in your MX and we add backup relays later, we don’t have to ask you to do anything, you just get the feature. We want to reserve that ability.

## SPF Records

SPF record will be something that doesn’t care about which server you’re on. Your job is to include our SPF record in yours, so that in the event that ours changes yours changes by extension. You should never be adding our IPs to your SPF, you should always be using the include function.

SPF defines which IPs are allowed to send email for your domain. This allows you to instruct recipient servers on how to treat email that claims to be from your domain, but wasn’t sent by a server you approved. If someone is spoofing your domain and sending mail that claims to be from you but isn’t, this is how you define the methods used to handle that. It also highly improves your inbox delivery by making a clear statement on received email that “This is guaranteed to be sent by me.” Note that SPF is required by MXroute, because we’re hyper focused on getting your delivery into inboxes whenever possible.

Your SPF record is a TXT DNS record (type is TXT, NOT SPF which is deprecated). It always starts with this:

> v=spf1

Now you want to add our SPF record to yours as an include. Maybe you have others you’ll add here too, but we can only speak for ours. You have a choice with us, we offer 2 different includes. You should only pick one.

> include:mxroute.com
> 
> include:mxlogin.com



Now you have to decide what you want to request of recipient servers if they receive email from your domain that doesn’t come from one of the places you specified in your SPF record. You get to pick from three options:

### Neutral

> ?

This means “I don’t care what you do if you get an email from a server that I haven’t approved to send from my domain. Do what you want.”

### Softfail

> ~

This means “If you get an email from a server I didn’t approve, it probably wasn’t me. You should do what you think is best.”

### Fail

–

This means “If you get an email from a server that I didn’t approve, please reject it. It wasn’t from me.”

### Result

You should be confident enough in your SPF record to pick #3. So if you constructed our recommended SPF record, you now have a TXT record at the root of your domain that looks like this:

> "v=spf1 include:mxroute.com -all"
