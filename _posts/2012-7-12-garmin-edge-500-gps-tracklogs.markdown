---
layout: post
author: Julian R. Moore
title: Garmin Edge 500 for Photowalk Tracklogs.
---
{% caption <a href="http://www.flickr.com/photos/jreedmoore/7560303448/" title="Roadside Flower by jreedmoore, on Flickr"><img src="http://farm9.staticflickr.com/8153/7560303448_f24989d67c_b.jpg" alt="Roadside Flower"></a> %}
I swear, this image DOES have something to do with this post.
{% endcaption %}

There's this nifty little GPS Bike Computer called the [Garmin Edge 500](https://buy.garmin.com/shop/shop.do?pID=36728). It does all sorts of cool things for a cyclist, recording your position and speed, heart rate, cadence, 'power' (if you have a fancy power meter). It makes it possible to record and store your performance for years and year so you can see how you've improved over time. It's a cool piece of technology, and today I realized it's a perfectly fine GPS datalogger I could use to geotag photos.

Of course I'm not the first person to have roughly this idea: [this guy said other people did before him](http://networknerd.wordpress.com/2012/01/08/geotagging-photos-with-a-garmin-edge-200-gps/), [this guy wrote his own software for it (linux-based)](http://astoryworthtelling.wordpress.com/2011/01/03/geotagging-without-a-dedicated-camera-gps-part-2/), and there are a lot of other totally unremarkable examples (see: google). Most people who have tried to use the Edge series have run into the problem that they are in fact fitness devices and so they output their tracklogs in weird formats with lots of extra data in the '.FIT' extension, or 'Flexible and Interoperable Data Transfer' protocol. I was on my way to start building a little tool that generated .GPX tracklogs from the .FIT files, but then I remembered my friend Google. It turns out that there is a tool already out there in the wild that will convert .FIT to .GPX (and many many other fileformats to many many other fileformats) [GPSBabel](http://www.gpsbabel.org/). Naturally, it works great.

So then I have a really simple workflow:

* Use GPSBabel to convert .fit to .gpx (store the .gpx on a backup drive somewhere)
* Load the .gpx into Lightroom 4 and autotag photos.
* Easy!

Of course if you don't have the Lightroom 4 there are some [other](http://www.sno.phy.queensu.ca/~phil/exiftool/geotag.html) [options](https://www.google.com/search?q=geotag+tracklog) for geotagging your photos once you have a tracklog.

If you *do* have Lightroom 4 with the Map module in all it's glory then you get a cool view like this:
{% caption <a href="/img/posts/lr4tracklog.png"><img src="/img/posts/lr4tracklog.png"/></a> %}
{% endcaption %}

I just did a quick stroll around my house so I don't want to show the entire world the whole track log, but I'm pretty impressed with how well the Edge tracks where I am. Upon closer inspection things get sort of weird, when you stop to take a photo the Edge Auto Pauses and picks up when you start moving again. So when you take photos they get spread out between where it detected you stopped and whered it detected you started. It's definitely accurate enough for getting very close to where you actually are though so I'm happy with my basically free geotagging solution.

(If you haven't guessed yet, the image above is the first tracklog geotagged image I've put on flickr, and the one in the Lighroom capture above).
