//
//  CustomNavigationController.h
//  Pool
//
//  Created by Victor Oliveira on 30/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CustomNavigationController : UINavigationController {

	
	UIViewController *returnedViewController;
	BOOL shouldReturn;
	BOOL waitingAlert;
	UINavigationBar *navigationBar_flag;
	UINavigationItem *item_flag;

}



@property (nonatomic,retain) UIViewController *returnedViewController;
@property (nonatomic,readwrite) BOOL shouldReturn;
@property (nonatomic,readwrite) BOOL waitingAlert;
@property (nonatomic,retain) UINavigationBar *navigationBar_flag;
@property (nonatomic,retain) UINavigationItem *item_flag;

@end
