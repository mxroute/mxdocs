---
title: "URIBL_BLOCKED"
weight: 1
draft: false
# search related keywords
keywords: ["URIBL, spamassassin"]
---


If you are on one of our older servers running SpamAssassin, you may have glanced at the headers to see how scores are calculated, and come across one named URIBL BLOCKED which indicates that a query to URIBL failed. Often, this leads users to question if this is something that needs to be fixed or reported. We’ll explain what it means and why we intend to do nothing about this.

URIBL is not at all useless. However, they rate limit queries to their service (rightfully so). URIBL also isn’t worth paying for or spending resources on caching queries for, in our opinion. As a URIBL check is a default rule in SpamAssassin, the overhead to remove the check and ensure that it remains removed through updates is simply too high. So sometimes it works, more often it doesn’t, and that arrangement is the most acceptable scenario given the variables of the situation. No harm is done in either case.
