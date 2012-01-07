//
//  CustomNavigationController.m
//  Pool
//
//  Created by Victor Oliveira on 30/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import "CustomNavigationController.h"
#import "SelectTeamsController.h"

@implementation CustomNavigationController

@synthesize returnedViewController;
@synthesize shouldReturn;
@synthesize waitingAlert;
@synthesize navigationBar_flag;
@synthesize item_flag;

/*
- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{	
	
	if(animated){
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration: 0.60];
		[UIView setAnimationTransition:UIViewAnimationTransitionCurlUp
							   forView:self.view cache:NO];
		
		UIViewController *viewController = [super popViewControllerAnimated:NO];
		
		[UIView commitAnimations];
		
		return viewController;
	}
	else{
	UIViewController *viewController = [super popViewControllerAnimated:NO];
		return viewController;
	}

}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
		if(animated){
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration: 0.60];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlDown
						   forView:self.view cache:NO];
	
	[super pushViewController:viewController animated:NO];
	[UIView commitAnimations];
		}
	
}
*/

@end
