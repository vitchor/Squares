//
//  PaintingView.m
//  Pool
//
//  Created by Victor Oliveira on 23/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import "PaintingView.h"
#import "UIImage+Resizing.h"

#define paintingViewWidth 574 
#define paintingViewHeight 384 
#define userImageWidth 89 
#define userImageHeight 55


@implementation PaintingView

@synthesize touchPoint;
@synthesize touchPoints;
@synthesize context;
@synthesize rawImage;
@synthesize backGroundImage;
@synthesize actualColor;
@synthesize ref;

- (id)initWithFrame:(CGRect)frame {
	
	actualColor = [UIColor blackColor];
	
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}

- (void)uncontinueTouchPoints{	
	if(touchPoints!=nil){
		NSString *untaken = [[NSString alloc] initWithFormat:@"U"];
		//[untaken retain];
		[touchPoints addObject:untaken];	
		//[untaken release];
	}
}


-(void)clearContext{
	
	if(touchPoints!=nil){
		//dealocating NSFStrings
		for (NSObject *point in touchPoints) {		
			if([point isKindOfClass:[NSString class]]){
				[point release];
			}
		}
		
		[touchPoints removeAllObjects];
	}
}

-(NSMutableArray *)getPoints{
	return touchPoints;
}

- (void)addPoint:(CGPoint)actualTouchPoint {
	
	if(touchPoints==nil){
		touchPoints = [[NSMutableArray alloc] initWithObjects:nil];
	}
	
	NSValue *value = [NSValue valueWithCGPoint:actualTouchPoint];
	[touchPoints addObject:value];
	
	touchPoint = actualTouchPoint;
	//[value release];
}

- (void)drawImage:(UIImage *)image{
	backGroundImage = image;
	[backGroundImage drawInRect:CGRectMake(0, 0, 145, 15)];
}

-(void)replacePoints:(NSMutableArray *)newPoints{
	touchPoints = newPoints;

}

- (void)drawRect:(CGRect)rect {
	
	BOOL isPointDiscontinued = FALSE;
	
	context = UIGraphicsGetCurrentContext();
	
	ref =  [actualColor CGColor];
	
	if([touchPoints count]>1){
		CGContextSetLineWidth(context, 25);
		
		CGContextSetStrokeColorWithColor(context, ref);
				
		CGPoint firstPoint = [[touchPoints objectAtIndex:0] CGPointValue];
		
		CGContextMoveToPoint(context, firstPoint.x, firstPoint.y);
		
		for (NSObject *point in touchPoints) {
			
			if([point isKindOfClass:[NSString class]])
			{
				isPointDiscontinued=TRUE;
			}else if(isPointDiscontinued && ![point isKindOfClass:[NSString class]]){
				CGPoint cgPoint = [(NSValue *)point CGPointValue];
				CGContextMoveToPoint(context, cgPoint.x, cgPoint.y);
				isPointDiscontinued=FALSE;
			}else if(!isPointDiscontinued){
				
				CGPoint cgPoint = [(NSValue *)point CGPointValue];
				CGContextAddLineToPoint(context, cgPoint.x, cgPoint.y);
			}
		}
		CGContextStrokePath(context);
	}
	
}


- (void)dealloc {
	//CGColorRelease(ref);
	if([actualColor retainCount]>1){
		[actualColor release];
	}
    [super dealloc];
}

-(void)setNewColor:(UIColor *)newColor{
	actualColor = newColor;
	[self setNeedsDisplay];
}

- (UIImage*)getImage{
	CGImageRef imageRef = CGBitmapContextCreateImage(context);
	
	if(imageRef==nil){
		return nil;
	}
	
	rawImage = [[UIImage alloc] initWithCGImage:imageRef];
	UIImage* thumbnail = [rawImage resizedImageWithSize:CGSizeMake(userImageWidth,userImageHeight)];
	CGImageRelease(imageRef);
	[rawImage release];
	return thumbnail;
}


@end
