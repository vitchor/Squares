//
//  SelectCellsController.h
//  Pool
//
//  Created by Marcia Rozenfeld on 12/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GameController;
@class PlayerInfoViewController;

@interface SelectCellsController : UIViewController {
	
	//UILabels
	IBOutlet UIButton *square00;
	IBOutlet UIButton *square01;
	IBOutlet UIButton *square02;
	IBOutlet UIButton *square03;
	IBOutlet UIButton *square04;
	IBOutlet UIButton *square05;
	IBOutlet UIButton *square06;
	IBOutlet UIButton *square07;
	IBOutlet UIButton *square08;
	IBOutlet UIButton *square09;
	IBOutlet UIButton *square10;
	IBOutlet UIButton *square11;
	IBOutlet UIButton *square12;
	IBOutlet UIButton *square13;
	IBOutlet UIButton *square14;
	IBOutlet UIButton *square15;
	IBOutlet UIButton *square16;
	IBOutlet UIButton *square17;
	IBOutlet UIButton *square18;
	IBOutlet UIButton *square19;
	IBOutlet UIButton *square20;
	IBOutlet UIButton *square21;
	IBOutlet UIButton *square22;
	IBOutlet UIButton *square23;
	IBOutlet UIButton *square24;
	IBOutlet UIButton *square25;
	IBOutlet UIButton *square26;
	IBOutlet UIButton *square27;
	IBOutlet UIButton *square28;
	IBOutlet UIButton *square29;
	IBOutlet UIButton *square30;
	IBOutlet UIButton *square31;
	IBOutlet UIButton *square32;
	IBOutlet UIButton *square33;
	IBOutlet UIButton *square34;
	IBOutlet UIButton *square35;
	IBOutlet UIButton *square36;
	IBOutlet UIButton *square37;
	IBOutlet UIButton *square38;
	IBOutlet UIButton *square39;
	IBOutlet UIButton *square40;
	IBOutlet UIButton *square41;
	IBOutlet UIButton *square42;
	IBOutlet UIButton *square43;
	IBOutlet UIButton *square44;
	IBOutlet UIButton *square45;
	IBOutlet UIButton *square46;
	IBOutlet UIButton *square47;
	IBOutlet UIButton *square48;
	IBOutlet UIButton *square49;
	IBOutlet UIButton *square50;
	IBOutlet UIButton *square51;
	IBOutlet UIButton *square52;
	IBOutlet UIButton *square53;
	IBOutlet UIButton *square54;
	IBOutlet UIButton *square55;
	IBOutlet UIButton *square56;
	IBOutlet UIButton *square57;
	IBOutlet UIButton *square58;
	IBOutlet UIButton *square59;
	IBOutlet UIButton *square60;
	IBOutlet UIButton *square61;
	IBOutlet UIButton *square62;
	IBOutlet UIButton *square63;
	IBOutlet UIButton *square64;
	IBOutlet UIButton *square65;
	IBOutlet UIButton *square66;
	IBOutlet UIButton *square67;
	IBOutlet UIButton *square68;
	IBOutlet UIButton *square69;
	IBOutlet UIButton *square70;
	IBOutlet UIButton *square71;
	IBOutlet UIButton *square72;
	IBOutlet UIButton *square73;
	IBOutlet UIButton *square74;
	IBOutlet UIButton *square75;
	IBOutlet UIButton *square76;
	IBOutlet UIButton *square77;
	IBOutlet UIButton *square78;
	IBOutlet UIButton *square79;
	IBOutlet UIButton *square80;
	IBOutlet UIButton *square81;
	IBOutlet UIButton *square82;
	IBOutlet UIButton *square83;
	IBOutlet UIButton *square84;
	IBOutlet UIButton *square85;
	IBOutlet UIButton *square86;
	IBOutlet UIButton *square87;
	IBOutlet UIButton *square88;
	IBOutlet UIButton *square89;
	IBOutlet UIButton *square90;
	IBOutlet UIButton *square91;
	IBOutlet UIButton *square92;
	IBOutlet UIButton *square93;
	IBOutlet UIButton *square94;
	IBOutlet UIButton *square95;
	IBOutlet UIButton *square96;
	IBOutlet UIButton *square97;
	IBOutlet UIButton *square98;
	IBOutlet UIButton *square99;
	
	
	
	//actualPlayer atributes
	NSNumber *playerIndex;
	NSString *playerName;
	
	//game atributes
	NSString *team1Name;
	NSString *team2Name;
	NSNumber *numberOfPlayers;
	
	//object player atributes
	NSMutableArray *playersNames;
	NSMutableArray *playersInitialsImages;
	NSMutableArray *playersNumbersOfCells;
	
	//chooices atributes
	NSMutableArray *choicesPlayers;
	NSMutableArray *choicesValues;
	
	
	//UI atributes
	IBOutlet UILabel *o_team1Name;
	IBOutlet UILabel *o_team2Name;
	IBOutlet UILabel *statusText;

	GameController *childController;
	
	PlayerInfoViewController *parentController;

	IBOutlet UIImageView *tableImage;

	IBOutlet UILabel *randomMsg00;
	IBOutlet UILabel *randomMsg01;
	IBOutlet UILabel *randomMsg02;
	IBOutlet UILabel *randomMsg03;
	IBOutlet UILabel *randomMsg04;
	IBOutlet UILabel *randomMsg05;
	IBOutlet UILabel *randomMsg06;
	IBOutlet UILabel *randomMsg07;
	IBOutlet UILabel *randomMsg08;
	IBOutlet UILabel *randomMsg09;
	IBOutlet UILabel *randomMsg10;
	IBOutlet UILabel *randomMsg11;
	IBOutlet UILabel *randomMsg12;
	IBOutlet UILabel *randomMsg13;
	IBOutlet UILabel *randomMsg14;
	IBOutlet UILabel *randomMsg15;
	IBOutlet UILabel *randomMsg16;
	IBOutlet UILabel *randomMsg17;
	IBOutlet UILabel *randomMsg18;
	IBOutlet UILabel *randomMsg19;
}

@property (nonatomic, retain) NSNumber *playerIndex;
@property (nonatomic, retain) NSString *playerName;

@property (nonatomic, retain) NSString *team1Name;
@property (nonatomic, retain) NSString *team2Name;
@property (nonatomic, retain) NSNumber *numberOfPlayers;

@property (nonatomic,retain) NSMutableArray *playersNames;
@property (nonatomic,retain) NSMutableArray *playersInitialsImages;
@property (nonatomic,retain) NSMutableArray *playersNumbersOfCells;

@property (nonatomic,retain) NSMutableArray *choicesPlayers;
@property (nonatomic,retain) NSMutableArray *choicesValues;

@property (nonatomic, retain) IBOutlet UILabel *o_team1Name;
@property (nonatomic, retain) IBOutlet UILabel *o_team2Name;
@property (nonatomic, retain) IBOutlet UILabel *statusText;

@property (nonatomic,retain) PlayerInfoViewController *parentController;

@property(nonatomic,retain) IBOutlet UIImageView *tableImage;

//Random labels 
@property(nonatomic,retain) IBOutlet UILabel *randomMsg00;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg01;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg02;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg03;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg04;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg05;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg06;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg07;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg08;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg09;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg10;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg11;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg12;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg13;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg14;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg15;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg16;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg17;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg18;
@property(nonatomic,retain) IBOutlet UILabel *randomMsg19;

//UILabels
@property (nonatomic,retain) IBOutlet UIButton *square00;
@property (nonatomic,retain) IBOutlet UIButton *square01;
@property (nonatomic,retain) IBOutlet UIButton *square02;
@property (nonatomic,retain) IBOutlet UIButton *square03;
@property (nonatomic,retain) IBOutlet UIButton *square04;
@property (nonatomic,retain) IBOutlet UIButton *square05;
@property (nonatomic,retain) IBOutlet UIButton *square06;
@property (nonatomic,retain) IBOutlet UIButton *square07;
@property (nonatomic,retain) IBOutlet UIButton *square08;
@property (nonatomic,retain) IBOutlet UIButton *square09;
@property (nonatomic,retain) IBOutlet UIButton *square10;
@property (nonatomic,retain) IBOutlet UIButton *square11;
@property (nonatomic,retain) IBOutlet UIButton *square12;
@property (nonatomic,retain) IBOutlet UIButton *square13;
@property (nonatomic,retain) IBOutlet UIButton *square14;
@property (nonatomic,retain) IBOutlet UIButton *square15;
@property (nonatomic,retain) IBOutlet UIButton *square16;
@property (nonatomic,retain) IBOutlet UIButton *square17;
@property (nonatomic,retain) IBOutlet UIButton *square18;
@property (nonatomic,retain) IBOutlet UIButton *square19;
@property (nonatomic,retain) IBOutlet UIButton *square20;
@property (nonatomic,retain) IBOutlet UIButton *square21;
@property (nonatomic,retain) IBOutlet UIButton *square22;
@property (nonatomic,retain) IBOutlet UIButton *square23;
@property (nonatomic,retain) IBOutlet UIButton *square24;
@property (nonatomic,retain) IBOutlet UIButton *square25;
@property (nonatomic,retain) IBOutlet UIButton *square26;
@property (nonatomic,retain) IBOutlet UIButton *square27;
@property (nonatomic,retain) IBOutlet UIButton *square28;
@property (nonatomic,retain) IBOutlet UIButton *square29;
@property (nonatomic,retain) IBOutlet UIButton *square30;
@property (nonatomic,retain) IBOutlet UIButton *square31;
@property (nonatomic,retain) IBOutlet UIButton *square32;
@property (nonatomic,retain) IBOutlet UIButton *square33;
@property (nonatomic,retain) IBOutlet UIButton *square34;
@property (nonatomic,retain) IBOutlet UIButton *square35;
@property (nonatomic,retain) IBOutlet UIButton *square36;
@property (nonatomic,retain) IBOutlet UIButton *square37;
@property (nonatomic,retain) IBOutlet UIButton *square38;
@property (nonatomic,retain) IBOutlet UIButton *square39;
@property (nonatomic,retain) IBOutlet UIButton *square40;
@property (nonatomic,retain) IBOutlet UIButton *square41;
@property (nonatomic,retain) IBOutlet UIButton *square42;
@property (nonatomic,retain) IBOutlet UIButton *square43;
@property (nonatomic,retain) IBOutlet UIButton *square44;
@property (nonatomic,retain) IBOutlet UIButton *square45;
@property (nonatomic,retain) IBOutlet UIButton *square46;
@property (nonatomic,retain) IBOutlet UIButton *square47;
@property (nonatomic,retain) IBOutlet UIButton *square48;
@property (nonatomic,retain) IBOutlet UIButton *square49;
@property (nonatomic,retain) IBOutlet UIButton *square50;
@property (nonatomic,retain) IBOutlet UIButton *square51;
@property (nonatomic,retain) IBOutlet UIButton *square52;
@property (nonatomic,retain) IBOutlet UIButton *square53;
@property (nonatomic,retain) IBOutlet UIButton *square54;
@property (nonatomic,retain) IBOutlet UIButton *square55;
@property (nonatomic,retain) IBOutlet UIButton *square56;
@property (nonatomic,retain) IBOutlet UIButton *square57;
@property (nonatomic,retain) IBOutlet UIButton *square58;
@property (nonatomic,retain) IBOutlet UIButton *square59;
@property (nonatomic,retain) IBOutlet UIButton *square60;
@property (nonatomic,retain) IBOutlet UIButton *square61;
@property (nonatomic,retain) IBOutlet UIButton *square62;
@property (nonatomic,retain) IBOutlet UIButton *square63;
@property (nonatomic,retain) IBOutlet UIButton *square64;
@property (nonatomic,retain) IBOutlet UIButton *square65;
@property (nonatomic,retain) IBOutlet UIButton *square66;
@property (nonatomic,retain) IBOutlet UIButton *square67;
@property (nonatomic,retain) IBOutlet UIButton *square68;
@property (nonatomic,retain) IBOutlet UIButton *square69;
@property (nonatomic,retain) IBOutlet UIButton *square70;
@property (nonatomic,retain) IBOutlet UIButton *square71;
@property (nonatomic,retain) IBOutlet UIButton *square72;
@property (nonatomic,retain) IBOutlet UIButton *square73;
@property (nonatomic,retain) IBOutlet UIButton *square74;
@property (nonatomic,retain) IBOutlet UIButton *square75;
@property (nonatomic,retain) IBOutlet UIButton *square76;
@property (nonatomic,retain) IBOutlet UIButton *square77;
@property (nonatomic,retain) IBOutlet UIButton *square78;
@property (nonatomic,retain) IBOutlet UIButton *square79;
@property (nonatomic,retain) IBOutlet UIButton *square80;
@property (nonatomic,retain) IBOutlet UIButton *square81;
@property (nonatomic,retain) IBOutlet UIButton *square82;
@property (nonatomic,retain) IBOutlet UIButton *square83;
@property (nonatomic,retain) IBOutlet UIButton *square84;
@property (nonatomic,retain) IBOutlet UIButton *square85;
@property (nonatomic,retain) IBOutlet UIButton *square86;
@property (nonatomic,retain) IBOutlet UIButton *square87;
@property (nonatomic,retain) IBOutlet UIButton *square88;
@property (nonatomic,retain) IBOutlet UIButton *square89;
@property (nonatomic,retain) IBOutlet UIButton *square90;
@property (nonatomic,retain) IBOutlet UIButton *square91;
@property (nonatomic,retain) IBOutlet UIButton *square92;
@property (nonatomic,retain) IBOutlet UIButton *square93;
@property (nonatomic,retain) IBOutlet UIButton *square94;
@property (nonatomic,retain) IBOutlet UIButton *square95;
@property (nonatomic,retain) IBOutlet UIButton *square96;
@property (nonatomic,retain) IBOutlet UIButton *square97;
@property (nonatomic,retain) IBOutlet UIButton *square98;
@property (nonatomic,retain) IBOutlet UIButton *square99;

- (IBAction)buttonPressed:(id)sender;

@end
