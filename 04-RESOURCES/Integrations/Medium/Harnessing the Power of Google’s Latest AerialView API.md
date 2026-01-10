---
id: af5013f6e542
title: Harnessing the Power of Google’s Latest AerialView API
subtitle: Recently, Google introduced an exciting new feature to their Maps platform — the AerialView API. This innovative tool generates footage…
author: 4f2eeb101703
published: 2023-05-11 16:14:58
modified: 2023-05-11 16:14:58
url: https://medium.com/tenantcloud-engineering/harnessing-the-power-of-googles-latest-aerialview-api-af5013f6e542
word_count: 350
tags: [Type/Article, Type/Medium, Topic/GIS, Topic/GoogleMaps, Topic/API, Status/Complete]
---
# Harnessing the Power of Google's Latest AerialView API

![](https://miro.medium.com/1*JrPq4j1D7UFTLPJADT4Buw.jpeg)

Recently, Google introduced an exciting new feature to their Maps platform - the AerialView API. This innovative tool generates footage that resembles drone-captured video for a specified location.

In my capacity as CTO, I've explored the potential of this API, contemplating its potential applications within our products at TenantCloud and Rentler. I'm happy to report that the outcomes have been quite promising!

---

### Get started

To begin utilizing this cutting-edge tool, you first need to enable the AerialView API within the Google Console. The API interface is user-friendly, allowing you to pull already processed footage for a specific address or generate new footage. However, be aware that currently, this functionality is limited to US addresses, with additional locations on the horizon.

Generating a new video is a simple process:

```bash
curl -X POST -d '{
  "address": "POSTAL_ADDRESS"
}' /
-H 'Content-Type: application/json' /
"https://aerialview.googleapis.com/v1beta/videos:renderVideo?key=YOUR_API_KEY"
```

If you wish to retrieve an existing video, there are two methods to do so. The first approach involves using the address:

```bash
curl -X GET "https://aerialview.googleapis.com/v1beta/videos?key=YOUR_API_KEY&address=POSTAL_ADDRESS"
```

Alternatively, you can use the videoID:

```bash
curl -X GET "https://aerialview.googleapis.com/v1beta/videos?key=YOUR_API_KEY&videoId=VIDEO_ID"
```

Please be aware that video generation can take a few hours. Once the video is ready, you will receive a GET response akin to the following:

![getVideo API call response example](https://miro.medium.com/1*jti87z5xmPmorWLRzQfqTw.png)

This service provides video output in both landscape and portrait formats, making it adaptable for both mobile and desktop applications. It also offers different quality levels: high, medium, and low. The videos can be streamed using either the Dash or HLS format.

### Pricing

When it comes to **pricing**, Google has adopted a fair model. You will not be charged for video generation; instead, the fees apply only to getVideo API requests.

![Aerial View API pricing table](https://miro.medium.com/1*Ld5jN_6jwcIgWHq-4YfFfw.png)

During my experimentation, the footage for my test address was generated in approximately 30–40 minutes. The resulting videos can be viewed here: **Landscape**: [https://youtu.be/WpsH1AEXG8A](https://youtu.be/WpsH1AEXG8A) 
**Portrait**: [https://youtube.com/shorts/aGQk3ZUjQRU?feature=share](https://youtube.com/shorts/aGQk3ZUjQRU?feature=share)

---

### Final thoughts

In conclusion, the AerialView API service from Google Maps is a robust and efficient tool, capable of delivering high-quality results. Its potential applications extend across numerous advertising platforms where location is a critical aspect.