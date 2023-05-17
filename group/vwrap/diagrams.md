---
title: Diagrams
description: 
published: true
date: 2023-02-26T22:53:48.473Z
tags: 
editor: markdown
dateCreated: 2023-02-26T22:53:42.177Z
---

 VWRAP services high level message flow (preliminary diagram draft)
 
[Flow diagram for tourist use case - version 1](/vwrap_flowexample_vd1.pdf)

The main reason that i am submitting this in spite of my lack of formal expertise is that the group in my view badly needs a solid basis for discussion and preventing endless repeating loops. This example is probably wrong in many ways, but its better than what we have publicly available on interop now (although Morgaine is working on something along the lines of the recent discussions here)

Note that in my view all services are equal, in principle it does not matter in what "domain" they run, since trust and policy are fully localized. It is however very possible to have internal shortcuts in the services to speed up processing.

I envision that the final identity provider is external, using OpenID and OAut or whatever other magic that I do not yet fully understand exists out there.

The example has 3 main purposes:

 -   Provide a reference for discussion
 -   Illustrates the use case of tourism, and *true* interop.
 -   Illustrate consistency problems along the lines discussed here higher up in this tread, as well as the "slashdot" problem that Morgaine outlined so clearly. 

The message flow assumes an avatar already present in some region, (a small scale local home region in this case, but that is by no means essential, it could be a build in region in the viewer or a big commercial region). The user is preparing for a trip to immersive world, and after some outfit adjustments moves over.

Finally i apologize for for the simplistic notation used here. I simply add the most relevant parameters passed in square brackets to a keyword specifying the nature of the message. Please improve on that where needed.

So here we go, the avatar is prepare for a visit to "immersive world"

0) Viewer, here is an update of the state of the world your agent is in, please render.
1) Agent service, I will go in my Zodiac dress that i keep in the "Amazing assets" service.
2) Asset service A, please send a cap for Z, here are my credentials
3) Your fine, here is the cap
4) Local region, can you please put this on my agent, i included the cap.
5) Hello asset service A, i need Z, here is the cap
6) Cap is good, data coming up, have fun.
7) Agent service, your agent is now wearing Z
8) Viewer, your avatar is now wearing Z

    User: Hmm, amazing inventory has not been *that* amazing lately. 'll make a backup, just in case

9) Hello asset service A, please send me a cap for Z, here are my credentials
10) Your fine, here is the cap
11) Local asset storage, please store Z for me, here is the cap to get it
12) Hello asset service A, i want Z, here is the cap
13) Cap is good, data coming up, have fun.
14) Viewer, Z is now stored for you

    User: I am Ready!, Lets try to get to immersive world!

15) Hello immersive world, can i get in? Here are my credentials, and a list of my stuff.
16) Asset service A, please send me a cap for X, here are my credentials (I want this cap for consistency)
17) Your fine, here is the cap
18) Asset service B, please send me a cap for Y, here are my credentials (I want this cap for consistency)
19) Very sorry, but your not one of us, you can't have Y
20) Asset service A, please send me a cap for Z, here are my credentials (I want a cap for consistency)

    Region service: Timeout... amazing inventory must be overloaded.. oh well...

21) Agent service, you wanted to send somebody over, here are your permissions.
22) Viewer, you asked for a transfer try, here are your results.

    User: Crap! Big asset service does not allow me to take my yellow stockings! And Amazing assets failed to deliver my zodiac dress. At least i made a backup of that dress!

23) 'll take the yellow stockings off...
24) ... done ('ll trash them here and now, forever, who needs stuff you can't use!)
25) The zodiac dress was not delivered by Amzing assets, but i have a local copy!
26) Local Asset service, please send me Z, here are my credentials.
27) I dont know you, but I 'll trust you, here is the cap, but you better store the data, its single use, i need to protect myself.
28) Local region, can you please put this on my agent, i include the cap.
29) Local Asset service, i need Z, here is the cap.
30) Cap is good, data coming up, have fun.
31) Cap was only good for one time, I made a copy, but my policy is to only grant you fair use rights, at a later time i might even tell you to replace the dress.
32) Viewer, you can wear Z for now, but the asset service granted only fair use, i might ask you to replace the dress at a later time.
33) Ready at last! Off to immersive world!, I hope its not to crowded there or 'll loose my dress...
34) Hello immersive world, here are my credentials, and a list of stuff i want to bring
35) Hello asset service A, please send me a cap for X, here are my credentials [darn, I should have kept that cap from last time..]
36) Your fine, here is the cap.
[Region service finds fair-use warning on Z and decides to make its own copy]
37) Hello Local region, can i still have Z? Here is the cap.
38) Cap is still good, data coming up, have fun.

    Region service stores asset in private storage, providing a cap to replace the fair use one

39) Agent service, you wanted to send somebody over, here are your permissions & info.
40) Hello immersive world, just get me there, and use what you can.
41) Placement done, Z is currently buffered by us as wel, you need to get details for X, have fun.
42) You are now in immersive world, your dress is buffered there as well, but you need to get X!
43) Hello asset service A, i want X, here is the cap.
44) Cap is good, data coming up, have fun.
45) Viewer, here is an update of the state of the world your agent is in, please render.

As far as I can see this conforms fully to our charter, and i hope it is possible to use large portions of the existing code bases. However, as said above, i did not really try to capture the old thinking, and I also might have misconceptions about the way to do these things in general.

Looking forward to constructive comments.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2011-04-08. It was migrated from the old Trac wiki on 2023-02-26.*

