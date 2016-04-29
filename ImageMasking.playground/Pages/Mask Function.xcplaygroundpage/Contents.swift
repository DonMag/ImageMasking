

import UIKit
import XCPlayground


func doMaskImage (sourceImage: UIImage, maskImage: UIImage) -> UIImage {
	
	let maskImageRef = maskImage.CGImage
	
	let sourceImageRef = sourceImage.CGImage
	
	let mask = CGImageMaskCreate(CGImageGetWidth(maskImageRef),
		CGImageGetHeight(maskImageRef),
		CGImageGetBitsPerComponent(maskImageRef),
		CGImageGetBitsPerPixel(maskImageRef),
		CGImageGetBytesPerRow(maskImageRef),
		CGImageGetDataProvider(maskImageRef), nil, false);

	let maskedImageRef = CGImageCreateWithMask(sourceImageRef, mask)
	
	return UIImage(CGImage: maskedImageRef!)
	
}

let sourceImage : UIImage = UIImage(named: "swift1.png")!
let vMaskImage : UIImage = UIImage(named: "maskWhiteBlack.png")!
let vMaskImage2 : UIImage = UIImage(named: "maskWhiteBlack2.png")!

var resultImage : UIImage = doMaskImage(sourceImage, maskImage: vMaskImage)

var resIView : UIImageView = UIImageView(image: resultImage)

//var res2 : UIImage = doMaskImage(resultImage, maskImage: vMaskImage2)
var res2 : UIImage = doMaskImage(sourceImage, maskImage: vMaskImage2)

resIView.image = res2

