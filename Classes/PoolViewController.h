//
//  PoolViewController.h
//  Pool
//
//  Created by Marcia Rozenfeld on 11/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import <UIKit/UIKit.h>


@class SelectTeamsController;

@interface PoolViewController : UIViewController {
	
	IBOutlet UIImageView *backGroundImage;
	IBOutlet UIImageView *titleImage;

	SelectTeamsController *secondChildController;
}
@property(nonatomic,retain) IBOutlet UIImageView *backGroundImage;
@property(nonatomic,retain) IBOutlet UIImageView *titleImage;

- (IBAction)regularButtonPressed:(id)sender;

@end

