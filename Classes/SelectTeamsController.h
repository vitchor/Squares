//
//  SelectTeamsController.h
//  Pool
//
//  Created by Victor Oliveira on 22/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UsersViewController;

@interface SelectTeamsController : UIViewController <UITextFieldDelegate> {
	NSString *team1Name;
	NSString *team2Name;
	NSNumber *numberOfPlayers;
	
	UITextField *playersTextField;
	UITextField *team1TextField;
	UITextField *team2TextField;
	
	CGFloat animatedDistance;
	
	IBOutlet UIButton *continueButton;
	
	BOOL isFirstTime;
	
	UsersViewController *usersViewController;
	
}
@property (nonatomic, retain) NSString *team1Name;
@property (nonatomic, retain) NSString *team2Name;
@property (nonatomic, retain) NSNumber *numberOfPlayers;

@property (nonatomic, retain) IBOutlet UITextField *playersTextField;
@property (nonatomic, retain) IBOutlet UITextField *team1TextField;
@property (nonatomic, retain) IBOutlet UITextField *team2TextField;
@property (nonatomic, readwrite)CGFloat animatedDistance;
@property (nonatomic, readwrite) BOOL isFirstTime;
@property (nonatomic, retain) IBOutlet UIButton *continueButton;


- (IBAction)team1Edited:(id)sender;
- (IBAction)team2Edited:(id)sender;
- (IBAction)numberOfPlayersEdited:(id)sender;
- (IBAction)continueButtonPressed;

@end
