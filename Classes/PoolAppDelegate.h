//
//  PoolAppDelegate.h
//  Pool
//
//  Created by Marcia Rozenfeld on 11/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

//TDL
//Different colors for each quarter.
//Player Name cant be player 1.
//Already choosen color showed gray
//Can select squares when inserting points

#import <UIKit/UIKit.h>

@class PoolViewController;

@interface PoolAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PoolViewController *viewController;
	IBOutlet UINavigationController *navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PoolViewController *viewController;
@property (nonatomic, retain) IBOutlet UINavigationController *navController;
@end

