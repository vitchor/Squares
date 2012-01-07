//
//  GameController.h
//  Pool
//
//  Created by Marcia Rozenfeld on 12/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ResultsViewController;

@interface GameController : UIViewController
	<UITextFieldDelegate>{
	
	ResultsViewController *childController;
		
	//choosenLabelNumbers
	NSNumber *quarter1_ChoosenField;
	NSNumber *quarter2_ChoosenField;
	NSNumber *quarter3_ChoosenField;
	NSNumber *quarter4_ChoosenField;
	NSNumber *OT_ChoosenField;
		
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
	
	//random
	NSMutableArray *team1_randomNumbers;
	NSMutableArray *team2_randomNumbers;
		
	//UITextFields
		
	IBOutlet UITextField *time1_1Quarter_field;
	IBOutlet UITextField *time1_2Quarter_field;
	IBOutlet UITextField *time1_3Quarter_field;
	IBOutlet UITextField *time1_4Quarter_field;
	IBOutlet UITextField *time1_OTQuarter_field;
	IBOutlet UITextField *time2_1Quarter_field;
	IBOutlet UITextField *time2_2Quarter_field;
	IBOutlet UITextField *time2_3Quarter_field;
	IBOutlet UITextField *time2_4Quarter_field;	
	IBOutlet UITextField *time2_OTQuarter_field;
		
		
	UILabel *team1_n0;
	UILabel *team1_n1;
	UILabel *team1_n2;
	UILabel *team1_n3;
	UILabel *team1_n4;
	UILabel *team1_n5;
	UILabel *team1_n6;
	UILabel *team1_n7;
	UILabel *team1_n8;
	UILabel *team1_n9;
		
	UILabel *team2_n0;
	UILabel *team2_n1;
	UILabel *team2_n2;
	UILabel *team2_n3;
	UILabel *team2_n4;
	UILabel *team2_n5;
	UILabel *team2_n6;
	UILabel *team2_n7;
	UILabel *team2_n8;
	UILabel *team2_n9;	
		
		
	UILabel	*team1Name_Label;
	UILabel	*team2Name_Label;
		
		
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
	
	NSString *quarter1_ChoosenField_String;
	NSString *quarter2_ChoosenField_String;
	NSString *quarter3_ChoosenField_String;
	NSString *quarter4_ChoosenField_String;
	NSString *OT_ChoosenField_String;	
		
		
	IBOutlet UIImageView *label0Text;
	IBOutlet UIImageView	*label1Text;
	IBOutlet UIImageView	*label2Text;
	IBOutlet UIImageView	*label3Text;
	IBOutlet UIImageView	*label4Text;
	IBOutlet UIImageView	*label5Text;
	IBOutlet UIImageView	*label6Text;
	IBOutlet UIImageView	*label7Text;
	IBOutlet UIImageView	*label8Text;
	IBOutlet UIImageView	*label9Text;
	IBOutlet UIImageView *label10Text;
	IBOutlet UIImageView	*label11Text;
	IBOutlet UIImageView	*label12Text;
	IBOutlet UIImageView	*label13Text;
	IBOutlet UIImageView	*label14Text;
	IBOutlet UIImageView	*label15Text;
	IBOutlet UIImageView	*label16Text;
	IBOutlet UIImageView	*label17Text;
	IBOutlet UIImageView	*label18Text;
	IBOutlet UIImageView	*label19Text;
	IBOutlet UIImageView *label20Text;
	IBOutlet UIImageView	*label21Text;
	IBOutlet UIImageView	*label22Text;
	IBOutlet UIImageView	*label23Text;
	IBOutlet UIImageView	*label24Text;
	IBOutlet UIImageView	*label25Text;
	IBOutlet UIImageView	*label26Text;
	IBOutlet UIImageView	*label27Text;
	IBOutlet UIImageView	*label28Text;
	IBOutlet UIImageView	*label29Text;
	IBOutlet UIImageView *label30Text;
	IBOutlet UIImageView	*label31Text;
	IBOutlet UIImageView	*label32Text;
	IBOutlet UIImageView	*label33Text;
	IBOutlet UIImageView	*label34Text;
	IBOutlet UIImageView	*label35Text;
	IBOutlet UIImageView	*label36Text;
	IBOutlet UIImageView	*label37Text;
	IBOutlet UIImageView	*label38Text;
	IBOutlet UIImageView	*label39Text;
	IBOutlet UIImageView *label40Text;
	IBOutlet UIImageView	*label41Text;
	IBOutlet UIImageView	*label42Text;
	IBOutlet UIImageView	*label43Text;
	IBOutlet UIImageView	*label44Text;
	IBOutlet UIImageView	*label45Text;
	IBOutlet UIImageView	*label46Text;
	IBOutlet UIImageView	*label47Text;
	IBOutlet UIImageView	*label48Text;
	IBOutlet UIImageView	*label49Text;
	IBOutlet UIImageView *label50Text;
	IBOutlet UIImageView	*label51Text;
	IBOutlet UIImageView	*label52Text;
	IBOutlet UIImageView	*label53Text;
	IBOutlet UIImageView	*label54Text;
	IBOutlet UIImageView	*label55Text;
	IBOutlet UIImageView	*label56Text;
	IBOutlet UIImageView	*label57Text;
	IBOutlet UIImageView	*label58Text;
	IBOutlet UIImageView	*label59Text;
	IBOutlet UIImageView *label60Text;
	IBOutlet UIImageView	*label61Text;
	IBOutlet UIImageView	*label62Text;
	IBOutlet UIImageView	*label63Text;
	IBOutlet UIImageView	*label64Text;
	IBOutlet UIImageView	*label65Text;
	IBOutlet UIImageView	*label66Text;
	IBOutlet UIImageView	*label67Text;
	IBOutlet UIImageView	*label68Text;
	IBOutlet UIImageView	*label69Text;
	IBOutlet UIImageView *label70Text;
	IBOutlet UIImageView	*label71Text;
	IBOutlet UIImageView	*label72Text;
	IBOutlet UIImageView	*label73Text;
	IBOutlet UIImageView	*label74Text;
	IBOutlet UIImageView	*label75Text;
	IBOutlet UIImageView	*label76Text;
	IBOutlet UIImageView	*label77Text;
	IBOutlet UIImageView	*label78Text;
	IBOutlet UIImageView	*label79Text;
	IBOutlet UIImageView *label80Text;
	IBOutlet UIImageView	*label81Text;
	IBOutlet UIImageView	*label82Text;
	IBOutlet UIImageView	*label83Text;
	IBOutlet UIImageView	*label84Text;
	IBOutlet UIImageView	*label85Text;
	IBOutlet UIImageView	*label86Text;
	IBOutlet UIImageView	*label87Text;
	IBOutlet UIImageView	*label88Text;
	IBOutlet UIImageView	*label89Text;
	IBOutlet UIImageView *label90Text;
	IBOutlet UIImageView	*label91Text;
	IBOutlet UIImageView	*label92Text;
	IBOutlet UIImageView	*label93Text;
	IBOutlet UIImageView	*label94Text;
	IBOutlet UIImageView	*label95Text;
	IBOutlet UIImageView	*label96Text;
	IBOutlet UIImageView	*label97Text;
	IBOutlet UIImageView	*label98Text;
	IBOutlet UIImageView	*label99Text;
		
	IBOutlet UILabel *randomNumberMsg;
	IBOutlet UILabel *randomBackground;
		
	NSMutableArray *team1_strings;
	NSMutableArray *team2_strings;
		
	//ImageViews array
	NSMutableArray *uIImages;
		
	BOOL animated;
	BOOL stopAnimation;
		int countRepetition;
	NSTimer *repeatMsg;	

}


@property (nonatomic, retain) IBOutlet UIImageView *label0Text;
@property (nonatomic, retain) IBOutlet UIImageView *label1Text;
@property (nonatomic, retain) IBOutlet UIImageView *label2Text;
@property (nonatomic, retain) IBOutlet UIImageView *label3Text;
@property (nonatomic, retain) IBOutlet UIImageView *label4Text;
@property (nonatomic, retain) IBOutlet UIImageView *label5Text;
@property (nonatomic, retain) IBOutlet UIImageView *label6Text;
@property (nonatomic, retain) IBOutlet UIImageView *label7Text;
@property (nonatomic, retain) IBOutlet UIImageView *label8Text;
@property (nonatomic, retain) IBOutlet UIImageView *label9Text;
@property (nonatomic, retain) IBOutlet UIImageView *label10Text;
@property (nonatomic, retain) IBOutlet UIImageView *label11Text;
@property (nonatomic, retain) IBOutlet UIImageView *label12Text;
@property (nonatomic, retain) IBOutlet UIImageView *label13Text;
@property (nonatomic, retain) IBOutlet UIImageView *label14Text;
@property (nonatomic, retain) IBOutlet UIImageView *label15Text;
@property (nonatomic, retain) IBOutlet UIImageView *label16Text;
@property (nonatomic, retain) IBOutlet UIImageView *label17Text;
@property (nonatomic, retain) IBOutlet UIImageView *label18Text;
@property (nonatomic, retain) IBOutlet UIImageView *label19Text;
@property (nonatomic, retain) IBOutlet UIImageView *label20Text;
@property (nonatomic, retain) IBOutlet UIImageView *label21Text;
@property (nonatomic, retain) IBOutlet UIImageView *label22Text;
@property (nonatomic, retain) IBOutlet UIImageView *label23Text;
@property (nonatomic, retain) IBOutlet UIImageView *label24Text;
@property (nonatomic, retain) IBOutlet UIImageView *label25Text;
@property (nonatomic, retain) IBOutlet UIImageView *label26Text;
@property (nonatomic, retain) IBOutlet UIImageView *label27Text;
@property (nonatomic, retain) IBOutlet UIImageView *label28Text;
@property (nonatomic, retain) IBOutlet UIImageView *label29Text;
@property (nonatomic, retain) IBOutlet UIImageView *label30Text;
@property (nonatomic, retain) IBOutlet UIImageView *label31Text;
@property (nonatomic, retain) IBOutlet UIImageView *label32Text;
@property (nonatomic, retain) IBOutlet UIImageView *label33Text;
@property (nonatomic, retain) IBOutlet UIImageView *label34Text;
@property (nonatomic, retain) IBOutlet UIImageView *label35Text;
@property (nonatomic, retain) IBOutlet UIImageView *label36Text;
@property (nonatomic, retain) IBOutlet UIImageView *label37Text;
@property (nonatomic, retain) IBOutlet UIImageView *label38Text;
@property (nonatomic, retain) IBOutlet UIImageView *label39Text;
@property (nonatomic, retain) IBOutlet UIImageView *label40Text;
@property (nonatomic, retain) IBOutlet UIImageView *label41Text;
@property (nonatomic, retain) IBOutlet UIImageView *label42Text;
@property (nonatomic, retain) IBOutlet UIImageView *label43Text;
@property (nonatomic, retain) IBOutlet UIImageView *label44Text;
@property (nonatomic, retain) IBOutlet UIImageView *label45Text;
@property (nonatomic, retain) IBOutlet UIImageView *label46Text;
@property (nonatomic, retain) IBOutlet UIImageView *label47Text;
@property (nonatomic, retain) IBOutlet UIImageView *label48Text;
@property (nonatomic, retain) IBOutlet UIImageView *label49Text;
@property (nonatomic, retain) IBOutlet UIImageView *label50Text;
@property (nonatomic, retain) IBOutlet UIImageView *label51Text;
@property (nonatomic, retain) IBOutlet UIImageView *label52Text;
@property (nonatomic, retain) IBOutlet UIImageView *label53Text;
@property (nonatomic, retain) IBOutlet UIImageView *label54Text;
@property (nonatomic, retain) IBOutlet UIImageView *label55Text;
@property (nonatomic, retain) IBOutlet UIImageView *label56Text;
@property (nonatomic, retain) IBOutlet UIImageView *label57Text;
@property (nonatomic, retain) IBOutlet UIImageView *label58Text;
@property (nonatomic, retain) IBOutlet UIImageView *label59Text;
@property (nonatomic, retain) IBOutlet UIImageView *label60Text;
@property (nonatomic, retain) IBOutlet UIImageView *label61Text;
@property (nonatomic, retain) IBOutlet UIImageView *label62Text;
@property (nonatomic, retain) IBOutlet UIImageView *label63Text;
@property (nonatomic, retain) IBOutlet UIImageView *label64Text;
@property (nonatomic, retain) IBOutlet UIImageView *label65Text;
@property (nonatomic, retain) IBOutlet UIImageView *label66Text;
@property (nonatomic, retain) IBOutlet UIImageView *label67Text;
@property (nonatomic, retain) IBOutlet UIImageView *label68Text;
@property (nonatomic, retain) IBOutlet UIImageView *label69Text;
@property (nonatomic, retain) IBOutlet UIImageView *label70Text;
@property (nonatomic, retain) IBOutlet UIImageView *label71Text;
@property (nonatomic, retain) IBOutlet UIImageView *label72Text;
@property (nonatomic, retain) IBOutlet UIImageView *label73Text;
@property (nonatomic, retain) IBOutlet UIImageView *label74Text;
@property (nonatomic, retain) IBOutlet UIImageView *label75Text;
@property (nonatomic, retain) IBOutlet UIImageView *label76Text;
@property (nonatomic, retain) IBOutlet UIImageView *label77Text;
@property (nonatomic, retain) IBOutlet UIImageView *label78Text;
@property (nonatomic, retain) IBOutlet UIImageView *label79Text;
@property (nonatomic, retain) IBOutlet UIImageView *label80Text;
@property (nonatomic, retain) IBOutlet UIImageView *label81Text;
@property (nonatomic, retain) IBOutlet UIImageView *label82Text;
@property (nonatomic, retain) IBOutlet UIImageView *label83Text;
@property (nonatomic, retain) IBOutlet UIImageView *label84Text;
@property (nonatomic, retain) IBOutlet UIImageView *label85Text;
@property (nonatomic, retain) IBOutlet UIImageView *label86Text;
@property (nonatomic, retain) IBOutlet UIImageView *label87Text;
@property (nonatomic, retain) IBOutlet UIImageView *label88Text;
@property (nonatomic, retain) IBOutlet UIImageView *label89Text;
@property (nonatomic, retain) IBOutlet UIImageView *label90Text;
@property (nonatomic, retain) IBOutlet UIImageView *label91Text;
@property (nonatomic, retain) IBOutlet UIImageView *label92Text;
@property (nonatomic, retain) IBOutlet UIImageView *label93Text;
@property (nonatomic, retain) IBOutlet UIImageView *label94Text;
@property (nonatomic, retain) IBOutlet UIImageView *label95Text;
@property (nonatomic, retain) IBOutlet UIImageView *label96Text;
@property (nonatomic, retain) IBOutlet UIImageView *label97Text;
@property (nonatomic, retain) IBOutlet UIImageView *label98Text;
@property (nonatomic, retain) IBOutlet UIImageView *label99Text;

@property (nonatomic, retain) IBOutlet UILabel *team1Name_Label;
@property (nonatomic, retain) IBOutlet UILabel *team2Name_Label;

@property (nonatomic, retain) IBOutlet UILabel *team1_n0;
@property (nonatomic, retain) IBOutlet UILabel *team1_n1;
@property (nonatomic, retain) IBOutlet UILabel *team1_n2;
@property (nonatomic, retain) IBOutlet UILabel *team1_n3;
@property (nonatomic, retain) IBOutlet UILabel *team1_n4;
@property (nonatomic, retain) IBOutlet UILabel *team1_n5;
@property (nonatomic, retain) IBOutlet UILabel *team1_n6;
@property (nonatomic, retain) IBOutlet UILabel *team1_n7;
@property (nonatomic, retain) IBOutlet UILabel *team1_n8;
@property (nonatomic, retain) IBOutlet UILabel *team1_n9;

@property (nonatomic, retain) IBOutlet UILabel *team2_n0;
@property (nonatomic, retain) IBOutlet UILabel *team2_n1;
@property (nonatomic, retain) IBOutlet UILabel *team2_n2;
@property (nonatomic, retain) IBOutlet UILabel *team2_n3;
@property (nonatomic, retain) IBOutlet UILabel *team2_n4;
@property (nonatomic, retain) IBOutlet UILabel *team2_n5;
@property (nonatomic, retain) IBOutlet UILabel *team2_n6;
@property (nonatomic, retain) IBOutlet UILabel *team2_n7;
@property (nonatomic, retain) IBOutlet UILabel *team2_n8;
@property (nonatomic, retain) IBOutlet UILabel *team2_n9;	

@property (nonatomic, retain) NSString *team1Name;
@property (nonatomic, retain) NSString *team2Name;
@property (nonatomic, retain) NSNumber *numberOfPlayers;

@property (nonatomic,retain) NSMutableArray *playersNames;
@property (nonatomic,retain) NSMutableArray *playersInitialsImages;
@property (nonatomic,retain) NSMutableArray *playersNumbersOfCells;

@property (nonatomic,retain) NSMutableArray *choicesPlayers;
@property (nonatomic,retain) NSMutableArray *choicesValues;

@property (nonatomic, retain) NSNumber *time1_1Quarter;
@property (nonatomic, retain) NSNumber *time1_2Quarter;
@property (nonatomic, retain) NSNumber *time1_3Quarter;
@property (nonatomic, retain) NSNumber *time1_4Quarter;
@property (nonatomic, retain) NSNumber *time1_OTQuarter;
@property (nonatomic, retain) NSNumber *time2_1Quarter;
@property (nonatomic, retain) NSNumber *time2_2Quarter;
@property (nonatomic, retain) NSNumber *time2_3Quarter;
@property (nonatomic, retain) NSNumber *time2_4Quarter;
@property (nonatomic, retain) NSNumber *time2_OTQuarter;


@property (nonatomic, retain) IBOutlet UITextField *time1_1Quarter_field;
@property (nonatomic, retain) IBOutlet UITextField *time1_2Quarter_field;
@property (nonatomic, retain) IBOutlet UITextField *time1_3Quarter_field;
@property (nonatomic, retain) IBOutlet UITextField *time1_4Quarter_field;
@property (nonatomic, retain) IBOutlet UITextField *time1_OTQuarter_field;
@property (nonatomic, retain) IBOutlet UITextField *time2_1Quarter_field;
@property (nonatomic, retain) IBOutlet UITextField *time2_2Quarter_field;
@property (nonatomic, retain) IBOutlet UITextField *time2_3Quarter_field;
@property (nonatomic, retain) IBOutlet UITextField *time2_4Quarter_field;	
@property (nonatomic, retain) IBOutlet UITextField *time2_OTQuarter_field;

@property (nonatomic, retain) NSMutableArray *team1_randomNumbers;
@property (nonatomic, retain) NSMutableArray *team2_randomNumbers;

@property (nonatomic, retain) NSNumber *quarter1_ChoosenField;
@property (nonatomic, retain) NSNumber *quarter2_ChoosenField;
@property (nonatomic, retain) NSNumber *quarter3_ChoosenField;
@property (nonatomic, retain) NSNumber *quarter4_ChoosenField;
@property (nonatomic, retain) NSNumber *OT_ChoosenField;

@property (nonatomic, retain) NSString *quarter1_ChoosenField_String;
@property (nonatomic, retain) NSString *quarter2_ChoosenField_String;
@property (nonatomic, retain) NSString *quarter3_ChoosenField_String;
@property (nonatomic, retain) NSString *quarter4_ChoosenField_String;
@property (nonatomic, retain) NSString *OT_ChoosenField_String;

@property (nonatomic, retain) IBOutlet UILabel *randomNumberMsg;
@property (nonatomic, retain) IBOutlet UILabel *randomBackground;

//ImageViews array
@property(nonatomic,retain) NSMutableArray *uIImages;

- (IBAction)fieldEdited:(id)sender;
- (IBAction)field2Edited:(id)sender;
- (int)getRandomNumber:(int)from to:(int)to;

-(void)updateMarker1:(NSString *)numberString;
-(void)updateMarker2:(NSString *)numberString;
-(void)updateMarker3:(NSString *)numberString;
-(void)updateMarker4:(NSString *)numberString;
-(void)updateMarkerOT:(NSString *)numberString;
-(BOOL)isNumber:(NSString *)value;
-(void)updateMarkers;
@end
