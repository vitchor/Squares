//
//  PaintingView.h
//  Pool
//
//  Created by Victor Oliveira on 23/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PaintingView : UIView {

	CGPoint touchPoint;
	NSMutableArray *touchPoints;
	CGContextRef context;
	UIImage *rawImage;
	UIImage *backGroundImage;
	UIColor *actualColor;
	CGColorRef ref;

}
//@property(nonatomic,readwrite) NSString *tagString;
@property(nonatomic,readwrite) CGPoint touchPoint;

@property(nonatomic,retain) UIImage* rawImage;
@property(nonatomic,retain)	UIImage *backGroundImage;


@property(nonatomic,retain) NSMutableArray *touchPoints;
@property(nonatomic,readwrite)CGContextRef context;
@property(nonatomic,readwrite)CGColorRef ref;

@property(nonatomic,retain) UIColor *actualColor;

-(void)addPoint:(CGPoint)actualTouchPoint;
-(void)uncontinueTouchPoints;

-(void)clearContext;

- (UIImage*)getImage;
- (void)drawImage:(UIImage *)image;
- (NSMutableArray *)getPoints;
-(void)replacePoints:(NSMutableArray *)newPoints;
-(void)setNewColor:(UIColor *)newColor;


@end
