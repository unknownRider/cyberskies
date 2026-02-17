---
title: "Passing the CRTO: Intro to Redteaming"
date: 2025-01-03
summary: "I passed the Certified Red Team Operator (CRTO) exam and all I got was this cert (and a sweet new skill set)"
categories: [certs]
tags: ["redteam", "crto", "zero-point security"]     # TAG names should always be lowercase
draft: false
---
 
## Certified Red Team Operator (CRTO)
Zero-Point Security's 'CRTO' is an intermediate level certification covering cobalt strike, antivirus evasion, and common red team tactics in a Windows active directory environment. This is my experience, along with a few tips and tricks for those looking to take the exam. 

This was one of my first 'red team' style certifications, and it was quite different than I  expected!
## The Exam

Students have a total of 4 days to pass the exam. There is also a limit on the exam run time which is capped at 48 hours. Essentially... you have up to 12 hours a day for 4 days. There are no daily time limits, and students can pause the exam environment as needed. Pausing the exam *does* stop your 48 hour timer, but *does not* change the 4 day limit. This is plenty of time, but it can go by very quickly if your not prepared. Students must submit at least 6 of the 8 flags to pass (75%).

> [!TIP] There is no required report for this exam... This may be one of the reasons I chose it :)

## Preparation

I did not do anything outside of the official coursework, however I'm very familiar with capture the flag competitions, including HackTheBox, and some of their Prolabs. Outside resources aren't needed to pass the exam, but testers should be very familiar with capture the flag style exams. If your fairly new and not feeling very confident with active directory, then I'd recommend the [Zephyr](https://www.hackthebox.com/blog/professional-labs-zephyr) prolab by HackTheBox. I did this prolab a few months back, and I still think it's a great introduction to Windows active directory exploits. 

In my opinion this is not an exam for beginners or those new to hacking. If you're a beginner looking to take your first hands-on exam, then I'd definitely recommend the [CBBH](https://cyberskies.org/posts/cbbh/) instead. However, if your highly interested in red teaming, and evading detection sounds interesting to you, go for it!! 

## My Experience

Penetration testing and red teaming can often be used interchangeably by those not in the field of IT. Well let me tell you... this exam reminded me of the stark differences between the two. Personally I found red teaming to be much more tedious, and I'll explain why. 

1. **Troubleshooting is difficult**   
If you didn't adequately test your payloads BEFORE the exam. Then how the heck do you know if they are working properly? (I may have rushed this and learned the hard way...) 
- Maybe antivirus blew it away
- Maybe firewall rules blocked your chosen exfil port 
- Maybe Windows SmartScreen is enabled and is blocking executables
- Maybe... who knows!! 

You can't exactly call IT support for your troubleshooting woes. In fact the more time you burn, the higher chance you will be detected. 

2. **Antivirus (AV) evasion can be tedious**   
Utilizing a tool like [ThreatChecker](https://github.com/rasta-mouse/**ThreatCheck**) helps in determining what lines of code inside your payload are being caught by Windows Defender. This means running the tool, checking your code, modifying it, and repeating the process... as many times as it takes. Oh, and you may want to check your payload to make sure you don't break it along the way. 

Overall, I breezed through finding and exploiting vulnerabilities found in the exam, but where I struggled was actually the setup! I definitely rushed this part and did not take the time to ensure all my payloads were working, with Windows Defender turned off, AND Windows Defender switched on. I also had some errors inside my custom c2 profile that I needed to fix. I highly suggest you have all of these items setup well before you start your exam. Since the exam is extremely limited on tooling, I highly suggest you have these items available to quickly copy/paste into the environment. So make the most of your lab training time! Once it expires you won't be able to go back and practice these items until the real thing.    

### Did I enjoy the exam?
- Honestly I'm not sure if red teaming is right for me... but that's why I took the exam in the first place! Overall I'm glad I achieved my CRTO certification as I think it's a nice resume builder and great introduction to red teaming. For now, white-box style, cooperative assessments are still my favorite. We'll see if that changes in the future! 

- At times I thought the structure of the course was hard to follow, but the overall content was good. (2026 Update: It seems this has been fixed in redesigned course). It focuses heavily on Cobalt Strike, which I really wanted to try out. It is worth noting that a Cobalt Strike license costs over $3,000 US/yr! and to my knowledge CRTO is the only exam that focuses on learning and utilizing this framework. Overall, I had a good experience capturing 6 flags to pass. 

### Would you recommend it to others?
- If your looking to dip your toes into red teaming, then heck yes! If you looking to expand your Cobalt Strike knowledge, or even build your own C2, then yes! If you are looking to get your first hands-on certification, then I'd say there are better options.    

## Thoughts on Red Teaming

The CRTO is one of the few certifications targeted specifically at 'red teaming'. So what exactly is red teaming and how's it different than penetration testing? 

Red teaming requires precision, and a much 'quieter' methodology when compared to penetration testing. You can't just barge in and start blasting (#FrankReynolds).  
<img src= "https://raw.githubusercontent.com/MTTGIT19/mttgit19.github.io/refs/heads/main/assets/img/frankreynolds.png" width="250">

Dropping payloads onto systems and generating tons of network traffic is going to increase your chances of getting caught. This means red teamers need to:
- Generate less traffic.
- Conceal their steps.
- Stick to a proven methodology.
- Utilize custom tools which are essential to evasion.

Personally I think penetration testers can be a bit more *creative* in their approach because they typically work much closer to the customer. This sounds counter-intuitive, but red-teamers work very hard to develop custom tooling. They don't exactly want these tools getting signatured by anti-virus or exposed to the public, so this means there is a 'no blasting' policy. Sorry Frank. Nmap'ing the entire network as a penetration tester might be fine, but this a definite no-go as a red teamer. 

Red teamers need to be extremely methodical in their approach to getting and maintaining system access. In comparison, pen testers have a lot more luxuries. They might even work alongside internal teams in a cooperative style assessment. Heck, I've had developers tip me off about areas of concern! This not only saves a ton of time, but also means defenders won't go shutting off your connection if they see a ton of nmap traffic across the network 😅.  This makes things like enumeration and pivoting significantly easier, and much less time consuming. Since red teamers need to stay under the radar the entire engagement, they use significantly different tools, tactics and procedures, compared to penetration testers. 

## Resources 

For those who prefer a video format, or are just binging anything and everything about the exam before taking it, then watch Andy Li's video, I found it the most helpful before I sat for the exam.     

[https://www.youtube.com/watch?v=2IPxJSIe-lk](https://www.youtube.com/watch?v=2IPxJSIe-lk)