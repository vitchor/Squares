//
//  UIImage+Resizing.m
//  Pool
//
//  Created by Victor Oliveira on 04/02/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import "UIImage+Resizing.h"

@implementation UIImage (Resizing)

/**
 * Creates a resized, autoreleased copy of the image, with the given dimensions.
 * @return an autoreleased, resized copy of the image
 */
- (UIImage*) resizedImageWithSize:(CGSize)size
{
	UIGraphicsBeginImageContext(size);
	
	[self drawInRect:CGRectMake(0.0f, 0.0f, size.width, size.height)];
	
	// An autoreleased image
	UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
	
	UIGraphicsEndImageContext();
	
	return newImage;
}

@end


