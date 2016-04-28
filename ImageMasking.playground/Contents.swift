//: Playground - noun: a place where people can play

import UIKit
import XCPlayground


let sourceImage = UIImage(named: "swift1.png")
let maskImage = UIImage(named: "mask1.png")


let maskImageRef = maskImage!.CGImage
let sourceImageRef = sourceImage!.CGImage

let mask = CGImageMaskCreate(CGImageGetWidth(maskImageRef),
	CGImageGetHeight(maskImageRef),
	CGImageGetBitsPerComponent(maskImageRef),
	CGImageGetBitsPerPixel(maskImageRef),
	CGImageGetBytesPerRow(maskImageRef),
	CGImageGetDataProvider(maskImageRef), nil, false);

let maskedImageRef = CGImageCreateWithMask(sourceImageRef, mask)


let resultImage = UIImage(CGImage: maskedImageRef!)

let resultImageView = UIImageView(image: resultImage)

