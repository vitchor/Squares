//
//  UsersViewController.h
//  Pool
//
//  Created by Marcia Rozenfeld on 11/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kNumberOfEditableRows        20
#define kLabelTag                    4096

@class SelectCellsController;
@class PlayerInfoViewController;
@class GameController;


@interface UsersViewController : UITableViewController 
<UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>
{
	//game atributes
	NSString *team1Name;
	NSString *team2Name;
	NSNumber *numberOfPlayers;
	
	//object player atributes
	NSMutableArray *playersNames;
	NSMutableArray *playersInitialsImages;
	NSMutableArray *playersNumbersOfCells;
	NSMutableArray *playersInitialsPoints;
	NSMutableArray *playersColors;

	//chooices atributes
	NSMutableArray *choicesPlayers;
	NSMutableArray *choicesValues;
	
	//UI atributes
	UITextField *textFieldBeingEdited; 
    NSMutableDictionary *tempValues;
	
	//data creation atributes 
	NSNumber *createdPlayersIndex;

	
	//Controlers that it delegates
	PlayerInfoViewController *childController;
	GameController *secondChildController;
	
}
@property (nonatomic, retain) NSString *team1Name;
@property (nonatomic, retain) NSString *team2Name;
@property (nonatomic, retain) NSNumber *numberOfPlayers;

@property (nonatomic,retain) NSMutableArray *playersNames;
@property (nonatomic,retain) NSMutableArray *playersInitialsImages;
@property (nonatomic,retain) NSMutableArray *playersNumbersOfCells;
@property (nonatomic,retain) NSMutableArray *playersInitialsPoints;

@property (nonatomic,retain) NSMutableArray *choicesPlayers;
@property (nonatomic,retain) NSMutableArray *choicesValues;

@property (nonatomic, retain) NSMutableDictionary *tempValues;
@property (nonatomic, retain) UITextField *textFieldBeingEdited;
@property (nonatomic,retain) NSNumber *createdPlayersIndex;

@property (nonatomic, retain) NSMutableArray *playersColors;

-(IBAction)continueButtonPressed;
@end
