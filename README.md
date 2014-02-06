NoSQL injection - Hash injection
================================
As described in (http://cirw.in/blog/hash-injection)[http://cirw.in/blog/hash-injection] rails combined with mongo can lead to NoSQL injection.

Prerequisites
-------------
You need vagrant and virtualbox (or possibly vmware).

How to run
----------
Run vagrant up to start the server.
This will download a clean CentOS 5 image, and install mongodb, rails and a rails app.
After the installation the rails app will be available at:
http://192.168.33.5:3000/

You can use the URL from the show-link for any user as the starting point for the injection.


