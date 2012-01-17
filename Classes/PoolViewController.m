//
//  PoolViewController.m
//  Pool
//
//  Created by Marcia Rozenfeld on 11/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import "PoolViewController.h"
#import "SelectTeamsController.h"
#import "PoolAppDelegate.h"
#import "InfoViewController.h"

@implementation PoolViewController
@synthesize titleImage;
@synthesize backGroundImage;

- (void)viewDidLoad {
	NSString *titleString = @"Welcome to Squares";
	self.title =titleString;
	//self.view.backgroundColor = [UIColor lightGrayColor];

	[titleString release];
    [super viewDidLoad];
	
}

- (IBAction)regularButtonPressed:(id)sender{
	
	NSString *nibNameString = @"SelectTeamsController";
	secondChildController = [[SelectTeamsController alloc] initWithNibName:nibNameString bundle:nil];
	[nibNameString release];
	
	
	NSString *childTitle = @"Choose Teams";
	secondChildController.title = childTitle;
	[childTitle release];
	
	PoolAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	[delegate.navController pushViewController:secondChildController animated:YES];
	
	[secondChildController release];
	
	
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[titleImage release];
	[backGroundImage release];
    [super dealloc];
}

@end
