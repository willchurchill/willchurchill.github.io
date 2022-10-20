---
title: "Image Optimisation"
date: 2020-04-14T10:00:00+00:00
description: "Making sure your website loads quickly is key to getting and keeping visitors. A big part of that is how your images load. Here I look at how to speed that up."
question: "What is the right way to upload images for my website?"
content-type: guide
subject: "web development"
tags: ["web development","image optimisation"]
image: "assets/images/articles/webdev.jpg"
---

One of the easiest "quick wins" to making your website load faster is choosing the right images and making sure they are formatted and sized correctly. In this guide, we go through some of the things to look out for when sorting your images out.

We've put this together to give you an idea of what makes for a good image, but there are also online tools that, while not perfect, can do a lot of the heavy lifting for you. One of the most popular is [TingJPG](https://tinyjpg.com/). Alternatively, if you're using a WordPress site take a look at the [Smush](https://wordpress.org/plugins/wp-smushit/) plugin.

# Establishing where the image will be used
Making sure you pick the right image size for the right place it key. Choose an image that is too small, and the quality of the image may suffer, as the fixed number of pixels in the image are stretched and enlarged to allow the image to fit. Choose one that’s too big, and your user is using unnecessarily downloading ‘extra’ information about that image that won’t benefit them. It might take longer for the website to load, and your bounce rate as a result is likely to be higher.

# Editing images
While tools like [Adobe Photoshop](https://www.adobe.com/uk/products/photoshop.html) will very quickly and easily allow you to edit images, not everyone has access to such a professional piece of software. There are lots of other free tools that will allow you to do similar things. At Copy & Code, our favourite of these free options is [GIMP](https://www.gimp.org/) (the GNU Image Manipulation Programme). This is a cross-platform, open-source programme that allows you to make a multitude of edits to images.

# The image parameters
There are lots of things about a given image that you can edit in order to make it render quicker. Basically, they all boil down to reducing the file size of the image as much as possible, with as little degradation to the image quality as possible. At the bottom of this guide is a crib sheet that Copy & Code uses as a guide to resize and compress images ready for web consumption.

Be aware that these are just guidelines, and that every image is different. For example, you might find that images with fewer colours are able to be compressed further than suggested without loss of quality. Similarly, the file size of monochromatic images are usually far smaller than colour images of the same subject.

## Width
Most platforms, such as WordPress or Squarespace, and most coded instances of images fit the source file to the required space. As a result, it is easy to ignore the dimensions of the image when optimising, as it doesn't usually make a difference to the visual end result. However, every time an image is rendered on a website, the entirety of that image must be processed. As a result, if you were to display a thumbnail image for a product, but use a banner size image as the source file, the browser will take unnecessary resources to render that file.

While file dimensions include both the width and the height of the file, we have chosen only to focus on the width here. The reason for this is that in most cases the width of the image has the greatest impact on the end result. While consulting this document, bear in mind the specific use for the image in question, and the resulting aspect ratio of the image.

## File Type
By and large, JPEG (file extension .jpg) is the go-to for website images. They offer the best quality to file size ratio, and can be compressed a significant amount without visible loss of quality. If the image requires good quality whilst scaling, and / or has elements of transparency, then you should opt for PING files (file extension .png). These are most commonly used for logos.

Note that there is a new file type known as webp, developed by Google, that offers superior quality at a lower file size. However at the time of the last edit of this document, webp is still not supported by all browsers, and therefore Copy & Code recommend sticking with either JPEG or PING files.

## Image quality
When saving images, good image editing software will offer you the option of setting the image quality, or setting a compression level. These two are interchangeable, and you are not likely to see both options. JPEG images are fairly resilient to compression, and depending on a number of factors, good results have been seen with a reduction in quality of up to 70%. Factors that influence this include

* **The intended use for the photo.** If the image is being used in an instance where it is not the main focus, for example in a banner with an overlay, you can afford to increase the compression. Images that require detail - for example product photos - usually benefit from higher in quality
* **The number of colours in the photo.** As a general rule of thumb, the fewer colours in the image, the greater its resilience to compression.
* **The number of 'shapes’ / the 'complexity’ of the image.** The more there is happening in the photo (for example a group photo, or a busy painting), the more the image tends to suffer from compression.

## File size
In some image editing software, sure as Adobe Lightroom, this is a parameter that can be set. Usually however, this is an attribute that is determined by the others. Simply put, the smaller the file size, the quicker it will load on the page. Therefore, the aim of manipulating the other attributes of the image is to arrive at the smallest file size possible. The sizes given in the table below are intended as guidelines to show what the largest image size should be for each. If the images greatly exceed the recommended size, consider adjusting some of the parameters.

## Image parameters crib-sheet

| Where will the image be used? | Width (pixels) | File Type   | Image Quality (%) / Compression level | File Size | Example Uses   |
|------|-----|----|----|------|-------------|
| Banner Image | 1080 - 1680 | .jpg | 85-95% | <500Kb | Banner image for page background image in full-page layout |
| Large Image | 800 - 1024 | .jpg | 80-90% | <300Kb | Main page image on blog post, feature image for product page |
| Medium Sized Image | 400 - 600 | .jpg | 75-85% | <200Kb | Inline image for page |
| Small Image | 280 - 350 | .jpg | 80-90% | <150Kb | Thumbnail image for products on e-commerce store |
| Portrait Image | 180 - 240 | .jpg | 80-90% | <50Kb | Images used in an 'Our Team' style section |
| Logo - large | 450 - 600 | .png | 3 | <50Kb | Used as a centre piece image for a holding page |
| Logo - Small | 100 - 300 | .png | 3 | <30Kb | Main logo at top of a page |
| Favicon | 64 | .png / .ico | 0 | <20Kb | Used to create the website icon in the browser tab |

*At-a-glance guide to image sizes for various uses*

## Final note
Optimising images has often been compared to more of an art than a science. Because of the vast differences between image subjects it is nearly impossible to provide a set of rules that will satisfy every use case. As a result, you may find that these settings are not the optimal ones for your use case. Please see the next page for our guideline table of values.