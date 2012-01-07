    //
//  SelectCellsController.m
//  Pool
//
//  Created by Marcia Rozenfeld on 12/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import "SelectCellsController.h"
#import "PoolAppDelegate.h"
#import "GameController.h"
#import "UsersViewController.h"
#import "PlayerInfoViewController.h"

@implementation SelectCellsController

@synthesize tableImage;


@synthesize square00;
@synthesize square01;
@synthesize square02;
@synthesize square03;
@synthesize square04;
@synthesize square05;
@synthesize square06;
@synthesize square07;
@synthesize square08;
@synthesize square09;
@synthesize square10;
@synthesize square11;
@synthesize square12;
@synthesize square13;
@synthesize square14;
@synthesize square15;
@synthesize square16;
@synthesize square17;
@synthesize square18;
@synthesize square19;
@synthesize square20;
@synthesize square21;
@synthesize square22;
@synthesize square23;
@synthesize square24;
@synthesize square25;
@synthesize square26;
@synthesize square27;
@synthesize square28;
@synthesize square29;
@synthesize square30;
@synthesize square31;
@synthesize square32;
@synthesize square33;
@synthesize square34;
@synthesize square35;
@synthesize square36;
@synthesize square37;
@synthesize square38;
@synthesize square39;
@synthesize square40;
@synthesize square41;
@synthesize square42;
@synthesize square43;
@synthesize square44;
@synthesize square45;
@synthesize square46;
@synthesize square47;
@synthesize square48;
@synthesize square49;
@synthesize square50;
@synthesize square51;
@synthesize square52;
@synthesize square53;
@synthesize square54;
@synthesize square55;
@synthesize square56;
@synthesize square57;
@synthesize square58;
@synthesize square59;
@synthesize square60;
@synthesize square61;
@synthesize square62;
@synthesize square63;
@synthesize square64;
@synthesize square65;
@synthesize square66;
@synthesize square67;
@synthesize square68;
@synthesize square69;
@synthesize square70;
@synthesize square71;
@synthesize square72;
@synthesize square73;
@synthesize square74;
@synthesize square75;
@synthesize square76;
@synthesize square77;
@synthesize square78;
@synthesize square79;
@synthesize square80;
@synthesize square81;
@synthesize square82;
@synthesize square83;
@synthesize square84;
@synthesize square85;
@synthesize square86;
@synthesize square87;
@synthesize square88;
@synthesize square89;
@synthesize square90;
@synthesize square91;
@synthesize square92;
@synthesize square93;
@synthesize square94;
@synthesize square95;
@synthesize square96;
@synthesize square97;
@synthesize square98;
@synthesize square99;

//actualPlayer atributes
@synthesize playerIndex;
@synthesize playerName;

//game atributes
@synthesize team1Name;
@synthesize team2Name;
@synthesize numberOfPlayers;

//players atributes
@synthesize playersNames;
@synthesize playersInitialsImages;
@synthesize playersNumbersOfCells;

//choices atributes
@synthesize choicesPlayers;
@synthesize choicesValues;

//UI atributes
@synthesize o_team1Name;
@synthesize o_team2Name;
@synthesize statusText;

//Navigation atributes
@synthesize parentController;

//UI Labels
@synthesize randomMsg00;
@synthesize randomMsg01;
@synthesize randomMsg02;
@synthesize randomMsg03;
@synthesize randomMsg04;
@synthesize randomMsg05;
@synthesize randomMsg06;
@synthesize randomMsg07;
@synthesize randomMsg08;
@synthesize randomMsg09;
@synthesize randomMsg10;
@synthesize randomMsg11;
@synthesize randomMsg12;
@synthesize randomMsg13;
@synthesize randomMsg14;
@synthesize randomMsg15;
@synthesize randomMsg16;
@synthesize randomMsg17;
@synthesize randomMsg18;
@synthesize randomMsg19;

- (void)viewDidLoad {
	
		
	NSMutableArray *squares = [[NSMutableArray alloc] initWithObjects:square00,square01,square02,square03,square04,square05,square06,square07,square08,square09,square10,square11,square12,square13,square14,square15,square16,square17,square18,square19,square20,square21,square22,square23,square24,square25,square26,square27,square28,square29,square30,square31,square32,square33,square34,square35,square36,square37,square38,square39,square40,square41,square42,square43,square44,square45,square46,square47,square48,square49,square50,square51,square52,square53,square54,square55,square56,square57,square58,square59,square60,square61,square62,square63,square64,square65,square66,square67,square68,square69,square70,square71,square72,square73,square74,square75,square76,square77,square78,square79,square80,square81,square82,square83,square84,square85,square86,square87,square88,square89,square90,square91,square92,square93,square94,square95,square96,square97,square98,square99,nil];
		
	NSString *doneString = @"Done";
	UIBarButtonItem *continueButton = [[UIBarButtonItem alloc]
									   initWithTitle:doneString style:UIBarButtonItemStyleDone target:self action:@selector(continueButtonPressed)];	
	self.navigationItem.rightBarButtonItem = continueButton;
	[continueButton release];
	[doneString release];

	o_team1Name.text=self.team1Name;
	o_team2Name.text=self.team2Name;
	
	if(choicesPlayers==nil){
		choicesPlayers = [[NSMutableArray alloc] initWithObjects:nil];
		choicesValues = [[NSMutableArray alloc] initWithObjects:nil];
	}
	
	NSInteger cellsLeft = 100; 
	for(NSNumber *squares in playersNumbersOfCells){
		cellsLeft = (cellsLeft - [squares intValue]);
	}
	
	NSString *titleString =[[NSString alloc] initWithFormat:@"%d Squares Chosen - %d Squares Lefts",[[playersNumbersOfCells objectAtIndex:[playerIndex intValue]] intValue],cellsLeft]; 
	statusText.text = titleString;
	[titleString release];

	if([choicesPlayers count]>0){
		for (NSNumber *squareLabel in choicesValues) {
			
			NSInteger actual_choice_Index = [choicesValues indexOfObject:squareLabel];
			NSString *actual_playerName = [choicesPlayers objectAtIndex:actual_choice_Index];
			NSInteger choice_Index = [playersNames indexOfObject: actual_playerName];
						
									
			for(UIButton *button in squares){
				if (button.tag==[squareLabel intValue]) {
					UIImage *img = [playersInitialsImages objectAtIndex:choice_Index];
					[button setImage:img forState:UIControlStateNormal];
					[button setTitle:[playersNames objectAtIndex:choice_Index] forState:UIControlStateNormal];
					if(![actual_playerName isEqualToString:[playersNames objectAtIndex:[playerIndex intValue]]]){
						button.userInteractionEnabled = NO;
					}
				}
			}
		}	
	}
	
	[squares release];
	
    [super viewDidLoad];
}

-(void)continueButtonPressed{
	parentController.shouldPop =TRUE;
	[self.navigationController popViewControllerAnimated:NO];
}

- (IBAction)buttonPressed:(id)sender
{
	UIButton *buttonPressed = (UIButton *)sender;
	NSString *untaken_String = [[NSString alloc] initWithFormat: @"untaken"];

	if([buttonPressed.titleLabel.text isEqualToString:[playersNames objectAtIndex: [playerIndex intValue]]]){
		//remove image
		NSString *imageName = @"whitePad.png";
				UIImage *img = [UIImage imageNamed:imageName];
		[buttonPressed setImage:img forState:UIControlStateNormal];
		[buttonPressed setTitle:untaken_String forState:UIControlStateNormal];
		[imageName release];
		
		for(NSNumber *buttonTags in choicesValues){
			if([buttonTags intValue] == buttonPressed.tag){
				NSInteger index = [choicesValues indexOfObject:buttonTags];
				[choicesPlayers removeObjectAtIndex:index];
				[choicesValues removeObjectAtIndex:index];
				break;
			
			}
		}
		
		
		NSInteger playerCells_int =  [[playersNumbersOfCells objectAtIndex:[playerIndex intValue]] intValue] ;
		NSNumber *playerCells = [[NSNumber alloc] initWithInt:(playerCells_int-1)];
		
		//bug?
		[[playersNumbersOfCells objectAtIndex:[playerIndex intValue]] release];
		[playersNumbersOfCells replaceObjectAtIndex:[playerIndex intValue] withObject:playerCells]; 
		
		
	}else if ([buttonPressed.titleLabel.text isEqualToString:untaken_String]){
		//add image
		UIImage *img = [playersInitialsImages objectAtIndex:[playerIndex intValue]];
		[buttonPressed setImage:img forState:UIControlStateNormal];
		[buttonPressed setTitle:[playersNames objectAtIndex:[playerIndex intValue]] forState:UIControlStateNormal];
		
		[choicesPlayers addObject:[playersNames objectAtIndex:[playerIndex intValue]]];
		
		NSNumber *newNumber = [[NSNumber alloc] initWithInt: buttonPressed.tag];
		[choicesValues addObject: newNumber];
		[newNumber release];
		
		NSInteger playerCells_int =  [[playersNumbersOfCells objectAtIndex:[playerIndex intValue]] intValue] ;
		NSNumber *playerCells = [[NSNumber alloc] initWithInt:(playerCells_int+1)];
		[[playersNumbersOfCells objectAtIndex:[playerIndex intValue]] release];
		[playersNumbersOfCells replaceObjectAtIndex:[playerIndex intValue] withObject:playerCells]; 
		
	}
	
	NSInteger cellsLeft = 100; 
	for(NSNumber *square in playersNumbersOfCells){
		cellsLeft = (cellsLeft - [square intValue]);
	}
	NSString *actualtext = [[NSString alloc] initWithFormat:@"%d Squares Chosen - %d Squares Lefts",[[playersNumbersOfCells objectAtIndex:[playerIndex intValue]] intValue],cellsLeft];
	statusText.text = actualtext;
	[actualtext release];
	[untaken_String release];
	
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
}


- (void)viewDidUnload {
	//[untaken release];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
- (void)viewWillDisappear:(BOOL)animated{
	//[untaken release];
}

- (void)dealloc {
	
	//properties
	
	//[playerIndex release];
	//[playerName release];
	
	//game atributes
	//[team1Name release];
	//[team2Name release];
	//[numberOfPlayers release];
	
	//object player atributes
	[playersNames release];
	[playersInitialsImages release];
	[playersNumbersOfCells release];
	
	//chooices atributes
	[choicesPlayers release];
	[choicesValues release];
	
	
	
	[randomMsg00 release];
	[randomMsg01 release];
	[randomMsg02 release];
	[randomMsg03 release];
	[randomMsg04 release];
	[randomMsg05 release];
	[randomMsg06 release];
	[randomMsg07 release];
	[randomMsg08 release];
	[randomMsg09 release];
	[randomMsg10 release];
	[randomMsg11 release];
	[randomMsg12 release];
	[randomMsg13 release];
	[randomMsg14 release];
	[randomMsg15 release];
	[randomMsg16 release];
	[randomMsg17 release];
	[randomMsg18 release];
	[randomMsg19 release];
	
	[o_team1Name release];
	[o_team2Name release];
	[statusText release];
	
	[tableImage release];
	
	[square00 release];
	[square01 release];
	[square02 release];
	[square03 release];
	[square04 release];
	[square05 release];
	[square06 release];
	[square07 release];
	[square08 release];
	[square09 release];
	[square10 release];
	[square11 release];
	[square12 release];
	[square13 release];
	[square14 release];
	[square15 release];
	[square16 release];
	[square17 release];
	[square18 release];
	[square19 release];
	[square20 release];
	[square21 release];
	[square22 release];
	[square23 release];
	[square24 release];
	[square25 release];
	[square26 release];
	[square27 release];
	[square28 release];
	[square29 release];
	[square30 release];
	[square31 release];
	[square32 release];
	[square33 release];
	[square34 release];
	[square35 release];
	[square36 release];
	[square37 release];
	[square38 release];
	[square39 release];
	[square40 release];
	[square41 release];
	[square42 release];
	[square43 release];
	[square44 release];
	[square45 release];
	[square46 release];
	[square47 release];
	[square48 release];
	[square49 release];
	[square50 release];
	[square51 release];
	[square52 release];
	[square53 release];
	[square54 release];
	[square55 release];
	[square56 release];
	[square57 release];
	[square58 release];
	[square59 release];
	[square60 release];
	[square61 release];
	[square62 release];
	[square63 release];
	[square64 release];
	[square65 release];
	[square66 release];
	[square67 release];
	[square68 release];
	[square69 release];
	[square70 release];
	[square71 release];
	[square72 release];
	[square73 release];
	[square74 release];
	[square75 release];
	[square76 release];
	[square77 release];
	[square78 release];
	[square79 release];
	[square80 release];
	[square81 release];
	[square82 release];
	[square83 release];
	[square84 release];
	[square85 release];
	[square86 release];
	[square87 release];
	[square88 release];
	[square89 release];
	[square90 release];
	[square91 release];
	[square92 release];
	[square93 release];
	[square94 release];
	[square95 release];
	[square96 release];
	[square97 release];
	[square98 release];
	[square99 release];
    [super dealloc];
}


@end
