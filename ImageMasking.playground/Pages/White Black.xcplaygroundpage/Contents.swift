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

var doSave = false
//doSave = true

if doSave {
	var vPath = XCPlaygroundSharedDataDirectoryURL

	let origPath = vPath.URLByAppendingPathComponent("saveoriginal.png")
	let maskPath = vPath.URLByAppendingPathComponent("savemasked.png")
	
	UIImagePNGRepresentation(sourceImage)?.writeToFile(origPath.path!, atomically: true)
	UIImagePNGRepresentation(resultImage)?.writeToFile(maskPath.path!, atomically: true)
}

