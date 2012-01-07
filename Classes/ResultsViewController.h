//
//  ResultsViewController.h
//  Pool
//
//  Created by Victor Oliveira on 21/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ResultsViewController : UIViewController 
{
	NSMutableArray *playersNames;

	NSMutableArray *playersListPoints;
	
	NSNumber *time1_1Quarter;
	NSNumber *time1_2Quarter;
	NSNumber *time1_3Quarter;
	NSNumber *time1_4Quarter;
	NSNumber *time1_OTQuarter;
	
	NSNumber *time2_1Quarter;
	NSNumber *time2_2Quarter;
	NSNumber *time2_3Quarter;
	NSNumber *time2_4Quarter;
	NSNumber *time2_OTQuarter;
	
	NSNumber *time1_1Quarter_real;
	NSNumber *time1_2Quarter_real;
	NSNumber *time1_3Quarter_real;
	NSNumber *time1_4Quarter_real;
	NSNumber *time1_OTQuarter_real;
	
	NSNumber *time2_1Quarter_real;
	NSNumber *time2_2Quarter_real;
	NSNumber *time2_3Quarter_real;
	NSNumber *time2_4Quarter_real;
	NSNumber *time2_OTQuarter_real;
	
	NSNumber *quarter1_number;
	NSNumber *quarter2_number;
	NSNumber *quarter3_number;	
	NSNumber *quarter4_number;
	NSNumber *OT_number;
	
	NSMutableArray *playersInitialsImages;
	NSMutableArray *playersNumbersOfCells;
	
	NSMutableArray *choicesPlayers;
	NSMutableArray *choicesValues;
	
	NSString *team1Name;
	NSString *team2Name;
	
	NSMutableArray *team1_randomNumbers;
	NSMutableArray *team2_randomNumbers;
	
	IBOutlet UILabel *quarter1_Winner;
	IBOutlet UILabel *quarter2_Winner;
	IBOutlet UILabel *quarter3_Winner;
	IBOutlet UILabel *quarter4_Winner;
	IBOutlet UILabel *OT_Winner;
}

@property (nonatomic, retain) NSMutableArray *playersNames;
@property (nonatomic, retain) NSMutableArray *playersListPoints;


@property (nonatomic, retain) NSNumber *time1_1Quarter;
@property (nonatomic, retain) NSNumber *time1_2Quarter;
@property (nonatomic, retain) NSNumber *time1_3Quarter;
@property (nonatomic, retain) NSNumber *time1_4Quarter;
@property (nonatomic, retain) NSNumber *time2_1Quarter;
@property (nonatomic, retain) NSNumber *time2_2Quarter;
@property (nonatomic, retain) NSNumber *time2_3Quarter;
@property (nonatomic, retain) NSNumber *time2_4Quarter;

@property(nonatomic,retain)NSNumber *time1_OTQuarter;
@property(nonatomic,retain)NSNumber *time2_OTQuarter;

@property (nonatomic, retain) NSNumber *time1_1Quarter_real;
@property (nonatomic, retain) NSNumber *time1_2Quarter_real;
@property (nonatomic, retain) NSNumber *time1_3Quarter_real;
@property (nonatomic, retain) NSNumber *time1_4Quarter_real;
@property (nonatomic, retain) NSNumber *time1_OTQuarter_real;

@property (nonatomic, retain) NSNumber *time2_1Quarter_real;
@property (nonatomic, retain) NSNumber *time2_2Quarter_real;
@property (nonatomic, retain) NSNumber *time2_3Quarter_real;
@property (nonatomic, retain) NSNumber *time2_4Quarter_real;
@property (nonatomic, retain) NSNumber *time2_OTQuarter_real;


@property (nonatomic, retain) NSNumber *quarter1_number;
@property (nonatomic, retain) NSNumber *quarter2_number;
@property (nonatomic, retain) NSNumber *quarter3_number;
@property (nonatomic, retain) NSNumber *quarter4_number;
@property (nonatomic, retain) NSNumber *OT_number;


@property (nonatomic, retain) NSMutableArray *playersInitialsImages;
@property (nonatomic, retain) NSMutableArray *playersNumbersOfCells;

@property (nonatomic, retain) NSMutableArray *choicesPlayers;
@property (nonatomic, retain) NSMutableArray *choicesValues;

@property (nonatomic, retain) NSString *team1Name;
@property (nonatomic, retain) NSString *team2Name;

@property (nonatomic, retain) NSMutableArray *team1_randomNumbers;
@property (nonatomic, retain) NSMutableArray *team2_randomNumbers;

@property (nonatomic, retain) IBOutlet UILabel *quarter1_Winner;
@property (nonatomic, retain) IBOutlet UILabel *quarter2_Winner;
@property (nonatomic, retain) IBOutlet UILabel *quarter3_Winner;
@property (nonatomic, retain) IBOutlet UILabel *quarter4_Winner;
@property (nonatomic, retain) IBOutlet UILabel *OT_Winner;

@end
