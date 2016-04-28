//: Playground - noun: a place where people can play

import UIKit
import XCPlayground


let sourceImage : UIImage = UIImage(named: "swift1.png")!
let maskImage : UIImage = UIImage(named: "maskWhiteBlack.png")!


let maskImageRef : CGImageRef = maskImage.CGImage!
let sourceImageRef : CGImageRef = sourceImage.CGImage!

let mask : CGImageRef = CGImageMaskCreate(CGImageGetWidth(maskImageRef),
	CGImageGetHeight(maskImageRef),
	CGImageGetBitsPerComponent(maskImageRef),
	CGImageGetBitsPerPixel(maskImageRef),
	CGImageGetBytesPerRow(maskImageRef),
	CGImageGetDataProvider(maskImageRef), nil, false)!;

let maskedImageRef : CGImageRef = CGImageCreateWithMask(sourceImageRef, mask)!


let resultImage : UIImage = UIImage(CGImage: maskedImageRef)

let resultImageView : UIImageView = UIImageView(image: resultImage)

