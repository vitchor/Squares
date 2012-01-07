    //
//  GameController.m
//  Pool
//
//  Created by Marcia Rozenfeld on 12/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import "GameController.h"
#import "ResultsViewController.h"
#import "PoolAppDelegate.h"

@implementation GameController
@synthesize label0Text;
@synthesize label1Text;
@synthesize label2Text;
@synthesize label3Text;
@synthesize label4Text;
@synthesize label5Text;
@synthesize label6Text;
@synthesize label7Text;
@synthesize label8Text;
@synthesize label9Text;
@synthesize label10Text;
@synthesize label11Text;
@synthesize label12Text;
@synthesize label13Text;
@synthesize label14Text;
@synthesize label15Text;
@synthesize label16Text;
@synthesize label17Text;
@synthesize label18Text;
@synthesize label19Text;
@synthesize label20Text;
@synthesize label21Text;
@synthesize label22Text;
@synthesize label23Text;
@synthesize label24Text;
@synthesize label25Text;
@synthesize label26Text;
@synthesize label27Text;
@synthesize label28Text;
@synthesize label29Text;
@synthesize label30Text;
@synthesize label31Text;
@synthesize label32Text;
@synthesize label33Text;
@synthesize label34Text;
@synthesize label35Text;
@synthesize label36Text;
@synthesize label37Text;
@synthesize label38Text;
@synthesize label39Text;
@synthesize label40Text;
@synthesize label41Text;
@synthesize label42Text;
@synthesize label43Text;
@synthesize label44Text;
@synthesize label45Text;
@synthesize label46Text;
@synthesize label47Text;
@synthesize label48Text;
@synthesize label49Text;
@synthesize label50Text;
@synthesize label51Text;
@synthesize label52Text;
@synthesize label53Text;
@synthesize label54Text;
@synthesize label55Text;
@synthesize label56Text;
@synthesize label57Text;
@synthesize label58Text;
@synthesize label59Text;
@synthesize label60Text;
@synthesize label61Text;
@synthesize label62Text;
@synthesize label63Text;
@synthesize label64Text;
@synthesize label65Text;
@synthesize label66Text;
@synthesize label67Text;
@synthesize label68Text;
@synthesize label69Text;
@synthesize label70Text;
@synthesize label71Text;
@synthesize label72Text;
@synthesize label73Text;
@synthesize label74Text;
@synthesize label75Text;
@synthesize label76Text;
@synthesize label77Text;
@synthesize label78Text;
@synthesize label79Text;
@synthesize label80Text;
@synthesize label81Text;
@synthesize label82Text;
@synthesize label83Text;
@synthesize label84Text;
@synthesize label85Text;
@synthesize label86Text;
@synthesize label87Text;
@synthesize label88Text;
@synthesize label89Text;
@synthesize label90Text;
@synthesize label91Text;
@synthesize label92Text;
@synthesize label93Text;
@synthesize label94Text;
@synthesize label95Text;
@synthesize label96Text;
@synthesize label97Text;
@synthesize label98Text;
@synthesize label99Text;

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

//choosen winner labels
@synthesize quarter1_ChoosenField;
@synthesize quarter2_ChoosenField;
@synthesize quarter3_ChoosenField;
@synthesize quarter4_ChoosenField;
@synthesize OT_ChoosenField;

@synthesize team1Name_Label;
@synthesize team2Name_Label;

@synthesize team1_n0;
@synthesize team1_n1;
@synthesize team1_n2;
@synthesize team1_n3;
@synthesize team1_n4;
@synthesize team1_n5;
@synthesize team1_n6;
@synthesize team1_n7;
@synthesize team1_n8;
@synthesize team1_n9;

@synthesize team2_n0;
@synthesize team2_n1;
@synthesize team2_n2;
@synthesize team2_n3;
@synthesize team2_n4;
@synthesize team2_n5;
@synthesize team2_n6;
@synthesize team2_n7;
@synthesize team2_n8;
@synthesize team2_n9;

@synthesize time1_1Quarter;
@synthesize time1_2Quarter;
@synthesize time1_3Quarter;
@synthesize time1_4Quarter;
@synthesize time1_OTQuarter;
@synthesize time2_1Quarter;
@synthesize time2_2Quarter;
@synthesize time2_3Quarter;
@synthesize time2_4Quarter;
@synthesize time2_OTQuarter;

@synthesize time1_1Quarter_field;
@synthesize time1_2Quarter_field;
@synthesize time1_3Quarter_field;
@synthesize time1_4Quarter_field;
@synthesize time1_OTQuarter_field;
@synthesize time2_1Quarter_field;
@synthesize time2_2Quarter_field;
@synthesize time2_3Quarter_field;
@synthesize time2_4Quarter_field;	
@synthesize time2_OTQuarter_field;

@synthesize team1_randomNumbers;
@synthesize team2_randomNumbers;

@synthesize randomNumberMsg;
@synthesize randomBackground;

@synthesize uIImages;

@synthesize quarter1_ChoosenField_String;
@synthesize quarter2_ChoosenField_String;
@synthesize quarter3_ChoosenField_String;
@synthesize quarter4_ChoosenField_String;
@synthesize OT_ChoosenField_String;	



 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewWillAppear:(BOOL)animated{

}

-(void)backButtonAction{
	UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:@"Edit Game?" message:@"You will lose your game information. Are you sure?" delegate:self cancelButtonTitle:@"Yes" otherButtonTitles:nil] autorelease];
    // optional - add more buttons:
	[alert setTag:12];
    [alert addButtonWithTitle:@"Cancel"];
    [alert show];
	
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if ([alertView tag] == 12) {
        if (buttonIndex == 0) {
           [self.navigationController popViewControllerAnimated:YES];
        }
		
	}
}

- (void)viewDidLoad {
	animated = TRUE;
	UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStyleBordered target:self action:@selector(backButtonAction)];
	
	self.navigationItem.leftBarButtonItem = backButton;
	
	[backButton release];
	
	team1Name_Label.text = team1Name;
	team2Name_Label.text = team2Name;
	
	time1_1Quarter_field.delegate = self;
	time1_1Quarter_field.returnKeyType = UIReturnKeyDone;
	[time1_1Quarter_field setBorderStyle:UITextBorderStyleRoundedRect];	
	
	time1_2Quarter_field.delegate = self;
	time1_2Quarter_field.returnKeyType = UIReturnKeyDone;
	[time1_2Quarter_field setBorderStyle:UITextBorderStyleRoundedRect];	
	
	time1_3Quarter_field.delegate = self;
	time1_3Quarter_field.returnKeyType = UIReturnKeyDone;
	[time1_3Quarter_field setBorderStyle:UITextBorderStyleRoundedRect];	
	
	time1_4Quarter_field.delegate = self;
	time1_4Quarter_field.returnKeyType = UIReturnKeyDone;
	[time1_4Quarter_field setBorderStyle:UITextBorderStyleRoundedRect];	
	
	time1_OTQuarter_field.delegate = self;
	time1_OTQuarter_field.returnKeyType = UIReturnKeyDone;
	[time1_OTQuarter_field setBorderStyle:UITextBorderStyleRoundedRect];	
	
	time2_1Quarter_field.delegate = self;
	time2_1Quarter_field.returnKeyType = UIReturnKeyDone;
	[time2_1Quarter_field setBorderStyle:UITextBorderStyleRoundedRect];	
	
	time2_2Quarter_field.delegate = self;
	time2_2Quarter_field.returnKeyType = UIReturnKeyDone;
	[time2_2Quarter_field setBorderStyle:UITextBorderStyleRoundedRect];	
	
	time2_3Quarter_field.delegate = self;
	time2_3Quarter_field.returnKeyType = UIReturnKeyDone;
	[time2_3Quarter_field setBorderStyle:UITextBorderStyleRoundedRect];	
	
	time2_4Quarter_field.delegate = self;
	time2_4Quarter_field.returnKeyType = UIReturnKeyDone;
	[time2_4Quarter_field setBorderStyle:UITextBorderStyleRoundedRect];	
	
	time2_OTQuarter_field.delegate = self;
	time2_OTQuarter_field.returnKeyType = UIReturnKeyDone;
	[time2_OTQuarter_field setBorderStyle:UITextBorderStyleRoundedRect];	
	
	
	team1_randomNumbers=[[NSMutableArray alloc] initWithObjects:nil];
	team2_randomNumbers=[[NSMutableArray alloc] initWithObjects:nil];

	
	while([self.team1_randomNumbers count]<10){
		int randomIndex = [self getRandomNumber:0 to:9];
		for (int i = 0; i < [self.team1_randomNumbers count]; i++) {
			if ([[self.team1_randomNumbers objectAtIndex:i]intValue] == randomIndex) { //number is already in array
				randomIndex = 10; //let's set it to 0
				break;
			}
		}
		
		if (randomIndex == 10) {
		}
		else {
			[self.team1_randomNumbers addObject:[NSNumber numberWithInt:randomIndex]];
		}
	}
	
	while([self.team2_randomNumbers count]<10){
		int randomIndex = [self getRandomNumber:0 to:9];
		for (int i = 0; i < [self.team2_randomNumbers count]; i++) {
			if ([[self.team2_randomNumbers objectAtIndex:i]intValue] == randomIndex) { //number is already in array
				randomIndex = 10; //let's set it to 0
				break;
			}
		}
		
		if (randomIndex == 10) {
		}
		else {
			[team2_randomNumbers addObject:[NSNumber numberWithInt:randomIndex]];
			//add your code here to proceed
		}
	}

	NSString *text = [[NSString alloc] initWithFormat:@"%d",[[team1_randomNumbers objectAtIndex:0] intValue]];
	team1_n0.text = text;
	[text release];
	
	text = [[NSString alloc] initWithFormat:@"%d",[[team1_randomNumbers objectAtIndex:1] intValue]];
	team1_n1.text = text;
	[text release];
	
	text=[[NSString alloc] initWithFormat:@"%d",[[team1_randomNumbers objectAtIndex:2] intValue]];
	team1_n2.text = text;
	[text release];
	
	text = [[NSString alloc] initWithFormat:@"%d",[[team1_randomNumbers objectAtIndex:3] intValue]];
	team1_n3.text = text;
	[text release];
	
	text =  [[NSString alloc] initWithFormat:@"%d",[[team1_randomNumbers objectAtIndex:4] intValue]];
	team1_n4.text =text;
	[text release];
	
	text= [[NSString alloc] initWithFormat:@"%d",[[team1_randomNumbers objectAtIndex:5] intValue]];
	team1_n5.text = text;
	[text release];
	
	text = [[NSString alloc] initWithFormat:@"%d",[[team1_randomNumbers objectAtIndex:6] intValue]];
	team1_n6.text = text;
	[text release];
	
	text = [[NSString alloc] initWithFormat:@"%d",[[team1_randomNumbers objectAtIndex:7] intValue]];
	team1_n7.text = text;
	[text release];
	
	text= [[NSString alloc] initWithFormat:@"%d",[[team1_randomNumbers objectAtIndex:8] intValue]];
	team1_n8.text =text;
	[text release];
	
	text = [[NSString alloc] initWithFormat:@"%d",[[team1_randomNumbers objectAtIndex:9] intValue]];
	team1_n9.text = text;
	[text release];
	
	text = [[NSString alloc] initWithFormat:@"%d",[[team2_randomNumbers objectAtIndex:0] intValue]];
	team2_n0.text = text;
	[text release];
	
	text = [[NSString alloc] initWithFormat:@"%d",[[team2_randomNumbers objectAtIndex:1] intValue]];
	team2_n1.text = text;
	[text release];
	
	text=[[NSString alloc] initWithFormat:@"%d",[[team2_randomNumbers objectAtIndex:2] intValue]];
	team2_n2.text = text;
	[text release];
	
	text = [[NSString alloc] initWithFormat:@"%d",[[team2_randomNumbers objectAtIndex:3] intValue]];
	team2_n3.text = text;
	[text release];
	
	text =  [[NSString alloc] initWithFormat:@"%d",[[team2_randomNumbers objectAtIndex:4] intValue]];
	team2_n4.text =text;
	[text release];
	
	text= [[NSString alloc] initWithFormat:@"%d",[[team2_randomNumbers objectAtIndex:5] intValue]];
	team2_n5.text = text;
	[text release];
	
	text = [[NSString alloc] initWithFormat:@"%d",[[team2_randomNumbers objectAtIndex:6] intValue]];
	team2_n6.text = text;
	[text release];
	
	text = [[NSString alloc] initWithFormat:@"%d",[[team2_randomNumbers objectAtIndex:7] intValue]];
	team2_n7.text = text;
	[text release];
	
	text= [[NSString alloc] initWithFormat:@"%d",[[team2_randomNumbers objectAtIndex:8] intValue]];
	team2_n8.text =text;
	[text release];
	
	text = [[NSString alloc] initWithFormat:@"%d",[[team2_randomNumbers objectAtIndex:9] intValue]];
	team2_n9.text = text;
	[text release];
	
	
	uIImages = [[NSMutableArray alloc] initWithObjects:label0Text,label1Text,label2Text,label3Text,label4Text,label5Text,label6Text,label7Text,label8Text,label9Text,label10Text,label11Text,label12Text,label13Text,label14Text,label15Text,label16Text,label17Text,label18Text,label19Text,label20Text,label21Text,label22Text,label23Text,label24Text,label25Text,label26Text,label27Text,label28Text,label29Text,label30Text,label31Text,label32Text,label33Text,label34Text,label35Text,label36Text,label37Text,label38Text,label39Text,label40Text,label41Text,label42Text,label43Text,label44Text,label45Text,label46Text,label47Text,label48Text,label49Text,label50Text,label51Text,label52Text,label53Text,label54Text,label55Text,label56Text,label57Text,label58Text,label59Text,label60Text,label61Text,label62Text,label63Text,label64Text,label65Text,label66Text,label67Text,label68Text,label69Text,label70Text,label71Text,label72Text,label73Text,label74Text,label75Text,label76Text,label77Text,label78Text,label79Text,label80Text,label81Text,label82Text,label83Text,label84Text,label85Text,label86Text,label87Text,label88Text,label89Text,label90Text,label91Text,label92Text,label93Text,label94Text,label95Text,label96Text,label97Text,label98Text,label99Text,nil];

	
	UIBarButtonItem *continueButton = [[UIBarButtonItem alloc]
									   initWithTitle:@"Results" style:UIBarButtonItemStyleDone target:self action:@selector(resultsButtonPressed)];	
	self.navigationItem.rightBarButtonItem = continueButton;
	
	for (NSNumber *cell in choicesValues)
    {
		
		for(UIImageView *image in uIImages){
			if(image.tag==[cell intValue]){
				
				NSInteger choiceIndex = [choicesValues indexOfObject:cell];
				
				NSString *playerName = [choicesPlayers objectAtIndex:choiceIndex];
				
				NSInteger playerIndex = [playersNames indexOfObject:playerName];
				
				UIImage *playerImage = [playersInitialsImages objectAtIndex:playerIndex];
				
				[image setImage:playerImage];
				break;
			}
		}
	}

	
	repeatMsg = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(showMsg) userInfo:nil repeats:YES]; 
	//[NSTimer scheduledTimerWithTimeInterval:10.5 target:self selector:@selector(removeMsg) userInfo:nil repeats:NO];
	
	[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(animate0) userInfo:nil repeats:NO]; 
	[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(animate1) userInfo:nil repeats:NO]; 
	[NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(animate2) userInfo:nil repeats:NO]; 
	[NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(animate3) userInfo:nil repeats:NO]; 
	[NSTimer scheduledTimerWithTimeInterval:2.5 target:self selector:@selector(animate4) userInfo:nil repeats:NO]; 
	[NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(animate5) userInfo:nil repeats:NO];
	[NSTimer scheduledTimerWithTimeInterval:3.5 target:self selector:@selector(animate6) userInfo:nil repeats:NO]; 
	[NSTimer scheduledTimerWithTimeInterval:4 target:self selector:@selector(animate7) userInfo:nil repeats:NO]; 
	[NSTimer scheduledTimerWithTimeInterval:4.5 target:self selector:@selector(animate8) userInfo:nil repeats:NO]; 
	[NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(animate9) userInfo:nil repeats:NO]; 
	
	[continueButton release];
	[super viewDidLoad];
	
	
}

-(void) showMsg{
	countRepetition++;
	if(countRepetition>19){
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:0.5];
		randomNumberMsg.alpha = 0.0;
		randomBackground.alpha =0.0;
		[UIView commitAnimations];
		
		[repeatMsg invalidate];
	}else{
		if(animated){
			[UIView beginAnimations:nil context:NULL];
			[UIView setAnimationDuration:0.5];
			randomNumberMsg.alpha = 1.0;
			randomBackground.alpha = 0.6;
			[UIView commitAnimations];
			animated = FALSE;
		}else{
			[UIView beginAnimations:nil context:NULL];
			[UIView setAnimationDuration:0.5];
			randomNumberMsg.alpha = 0.3;
			[UIView commitAnimations];
			animated = TRUE;
		}

	}
}
-(void) removeMsg{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelay:10];
	[UIView setAnimationDuration:0.5];
	randomNumberMsg.alpha = 0.0;
	randomBackground.alpha =0.0;
	[UIView commitAnimations];
	

}


-(void) animate0{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.5];
	team1_n0.alpha = 1.0;
	team2_n0.alpha = 1.0;
	[UIView commitAnimations];
}
-(void) animate1{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelay:0.5];
	[UIView setAnimationDuration:0.5];
	team1_n1.alpha = 1.0;
	team2_n1.alpha = 1.0;
	[UIView commitAnimations];
}
-(void) animate2{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelay:1];
	[UIView setAnimationDuration:0.5];
	team1_n2.alpha = 1.0;
	team2_n2.alpha = 1.0;
	[UIView commitAnimations];
}
-(void) animate3{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelay:1.5];
	[UIView setAnimationDuration:0.5];
	team1_n3.alpha = 1.0;
	team2_n3.alpha = 1.0;
	[UIView commitAnimations];
}
-(void) animate4{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelay:2];
	[UIView setAnimationDuration:0.5];
	team1_n4.alpha = 1.0;
	team2_n4.alpha = 1.0;
	[UIView commitAnimations];
}
-(void) animate5{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelay:2.5];
	[UIView setAnimationDuration:0.5];
	team1_n5.alpha = 1.0;
	team2_n5.alpha = 1.0;
	[UIView commitAnimations];
}
-(void) animate6{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelay:3];
	[UIView setAnimationDuration:0.5];
	team1_n6.alpha = 1.0;
	team2_n6.alpha = 1.0;
	[UIView commitAnimations];
}
-(void) animate7{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelay:3.5];
	[UIView setAnimationDuration:0.5];
	team1_n7.alpha = 1.0;
	team2_n7.alpha = 1.0;
	[UIView commitAnimations];
}
-(void) animate8{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelay:4];
	[UIView setAnimationDuration:0.5];
	team1_n8.alpha = 1.0;
	team2_n8.alpha = 1.0;
	[UIView commitAnimations];
}
-(void) animate9{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelay:4.5];
	[UIView setAnimationDuration:0.5];
	team1_n9.alpha = 1.0;
	team2_n9.alpha = 1.0;
	[UIView commitAnimations];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	
	[textField resignFirstResponder];
	return YES;
	
}

- (IBAction)fieldEdited:(id)sender{	
	
	if(![[sender text] isEqualToString:@""]){
	if([sender tag]==1){
		time1_1Quarter = [[NSNumber alloc] initWithInt:([[sender text] intValue]%10)];	
	}
	else if([sender tag]==2){
		time1_2Quarter = [[NSNumber alloc] initWithInt:([[sender text] intValue]%10)];	
	}	
	else if([sender tag]==3){
		time1_3Quarter = [[NSNumber alloc] initWithInt:([[sender text] intValue]%10)];	
	}
	else if([sender tag]==4){
		time1_4Quarter = [[NSNumber alloc] initWithInt:([[sender text] intValue]%10)];	
	}
	else if([sender tag]==5){
		time1_OTQuarter = [[NSNumber alloc] initWithInt:([[sender text] intValue]%10)];	
	}
	}
	[self updateMarkers];
}

- (IBAction)field2Edited:(id)sender{	
	
	if(![[sender text] isEqualToString:@""]){
		if([sender tag]==1){
			time2_1Quarter = [[NSNumber alloc] initWithInt:([[sender text] intValue]%10)];	
		}
		else if([sender tag]==2){
			time2_2Quarter = [[NSNumber alloc] initWithInt:([[sender text] intValue]%10)];	
		}	
		else if([sender tag]==3){
			time2_3Quarter = [[NSNumber alloc] initWithInt:([[sender text] intValue]%10)];	
		}
		else if([sender tag]==4){
			time2_4Quarter = [[NSNumber alloc] initWithInt:([[sender text] intValue]%10)];	
		}
		else if([sender tag]==5){
			time2_OTQuarter = [[NSNumber alloc] initWithInt:([[sender text] intValue]%10)];	
		}
	}
	[self updateMarkers];
	
}

-(void)updateMarkers{
	if ((time1_1Quarter!=nil) &&(time2_1Quarter!=nil)){
		NSInteger number1;
		NSInteger number2;
		
		for(NSNumber *rdnNumber in team1_randomNumbers){
			if([rdnNumber intValue]==[time1_1Quarter intValue]){
				number1 = [team1_randomNumbers indexOfObject:rdnNumber];
				break;
			}
		}
		
		for(NSNumber *rdnNumber in team2_randomNumbers){
			if([rdnNumber intValue]==[time2_1Quarter intValue]){
				number2 = [team2_randomNumbers indexOfObject:rdnNumber];
				break;
			}
		}
		[quarter1_ChoosenField_String release];
		quarter1_ChoosenField_String = [[NSString alloc] initWithFormat: @"%d%d",number1,number2];
		//quarter1_ChoosenField_String = stringNumber;

		[self updateMarker1:quarter1_ChoosenField_String];
		
	}
	if ((time1_2Quarter!=nil) &&(time2_2Quarter!=nil)){
		NSInteger number1;
		NSInteger number2;
		//NSString *stringNumber;
		
		for(NSNumber *rdnNumber in team1_randomNumbers){
			if([rdnNumber intValue]==[time1_2Quarter intValue]){
				number1 = [team1_randomNumbers indexOfObject:rdnNumber];
			}
		}
		
		for(NSNumber *rdnNumber in team2_randomNumbers){
			if([rdnNumber intValue]==[time2_2Quarter intValue]){
				number2 = [team2_randomNumbers indexOfObject:rdnNumber];
			}
		}
		[quarter2_ChoosenField_String release];
		quarter2_ChoosenField_String = [[NSString alloc] initWithFormat: @"%d%d",number1,number2];
		//stringNumber = quarter2_ChoosenField_String;
		
		[self updateMarker2:quarter2_ChoosenField_String];
		
	}
	if ((time1_3Quarter!=nil) &&(time2_3Quarter!=nil)){
		NSInteger number1;
		NSInteger number2;
		//NSString *stringNumber;
		
		for(NSNumber *rdnNumber in team1_randomNumbers){
			if([rdnNumber intValue]==[time1_3Quarter intValue]){
				number1 = [team1_randomNumbers indexOfObject:rdnNumber];
			}
		}
		
		for(NSNumber *rdnNumber in team2_randomNumbers){
			if([rdnNumber intValue]==[time2_3Quarter intValue]){
				number2 = [team2_randomNumbers indexOfObject:rdnNumber];
			}
		}
		[quarter3_ChoosenField_String release];
		quarter3_ChoosenField_String = [[NSString alloc] initWithFormat: @"%d%d",number1,number2];
		//stringNumber = quarter3_ChoosenField_String;

		[self updateMarker3:quarter3_ChoosenField_String];
	}
	if ((time1_4Quarter!=nil) &&(time2_4Quarter!=nil)){
		NSInteger number1;
		NSInteger number2;
		//NSString *stringNumber;
		
		for(NSNumber *rdnNumber in team1_randomNumbers){
			if([rdnNumber intValue]==[time1_4Quarter intValue]){
				number1 = [team1_randomNumbers indexOfObject:rdnNumber];
			}
		}
		
		for(NSNumber *rdnNumber in team2_randomNumbers){
			if([rdnNumber intValue]==[time2_4Quarter intValue]){
				number2 = [team2_randomNumbers indexOfObject:rdnNumber];
			}
		}
		[quarter4_ChoosenField_String release];
		quarter4_ChoosenField_String = [[NSString alloc] initWithFormat: @"%d%d",number1,number2];
		//stringNumber = quarter4_ChoosenField_String;
		
		[self updateMarker4:quarter4_ChoosenField_String];
	}
	
	if ((time1_OTQuarter!=nil) &&(time2_OTQuarter!=nil)){
		NSInteger number1;
		NSInteger number2;
		//NSString *stringNumber;
		
		for(NSNumber *rdnNumber in team1_randomNumbers){
			if([rdnNumber intValue]==[time1_OTQuarter intValue]){
				number1 = [team1_randomNumbers indexOfObject:rdnNumber];
			}
		}
		
		for(NSNumber *rdnNumber in team2_randomNumbers){
			if([rdnNumber intValue]==[time2_OTQuarter intValue]){
				number2 = [team2_randomNumbers indexOfObject:rdnNumber];
			}
		}
		[OT_ChoosenField_String release];
		OT_ChoosenField_String = [[NSString alloc] initWithFormat: @"%d%d",number1,number2];
	//	stringNumber = OT_ChoosenField_String ;

		[self updateMarkerOT:OT_ChoosenField_String];
	}
	
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
	NSCharacterSet *svo;
	
	NSString *numbers = @"0123456789";
	NSString *emptyString = @"";
	
	svo = [[NSCharacterSet characterSetWithCharactersInString:numbers] invertedSet];
	
	NSString *filtered = [[string componentsSeparatedByCharactersInSet:svo] componentsJoinedByString:emptyString];
	BOOL bT = [string isEqualToString:filtered];
	
	
	[numbers release];
	[emptyString release];
	return bT;
	
}	

-(void)updateMarker1:(NSString *)numberString{
	if (quarter1_ChoosenField!=nil){
		for(UIImageView *imageView in uIImages){
			if((imageView.tag != [OT_ChoosenField intValue]||![self isNumber:OT_ChoosenField_String])&&(imageView.tag == [quarter1_ChoosenField intValue]) && (imageView.tag != [quarter2_ChoosenField intValue]||![self isNumber:quarter2_ChoosenField_String]) && (imageView.tag != [quarter3_ChoosenField intValue]||![self isNumber:quarter3_ChoosenField_String]) && (imageView.tag != [quarter4_ChoosenField intValue]||![self isNumber:quarter4_ChoosenField_String])){
				imageView.backgroundColor = [UIColor whiteColor];
				imageView.alpha = 1.0f;
				//[quarter1_ChoosenField release];
				break;
				
			}
		}
		[quarter1_ChoosenField release];
	}
	quarter1_ChoosenField = [[NSNumber alloc] initWithInt:[numberString intValue]];
	//[numberString release];
	for(UIImageView *imageView in uIImages){
		if(imageView.tag == [quarter1_ChoosenField intValue]){
			imageView.backgroundColor = [UIColor yellowColor];
			imageView.alpha = 0.6f;
			break;
			
		}
	}
	
}

-(void)updateMarkerOT:(NSString *)numberString{
	if (OT_ChoosenField!=nil){
		for(UIImageView *imageView in uIImages){
			if((imageView.tag == [OT_ChoosenField intValue])&&(imageView.tag != [quarter1_ChoosenField intValue]||![self isNumber:quarter1_ChoosenField_String]) && (imageView.tag != [quarter2_ChoosenField intValue]||![self isNumber:quarter2_ChoosenField_String]) && (imageView.tag != [quarter3_ChoosenField intValue]||![self isNumber:quarter3_ChoosenField_String]) && (imageView.tag != [quarter4_ChoosenField intValue]||![self isNumber:quarter4_ChoosenField_String])){
				imageView.backgroundColor = [UIColor whiteColor];
				imageView.alpha = 1.0f;
				//[OT_ChoosenField release];
				break;
				
			}
		}
		[OT_ChoosenField release];
	}
	OT_ChoosenField = [[NSNumber alloc] initWithInt:[numberString intValue]];
	//[numberString release];
	for(UIImageView *imageView in uIImages){
		if(imageView.tag == [OT_ChoosenField intValue]){
			imageView.backgroundColor = [UIColor yellowColor];
			imageView.alpha = 0.6f;
			break;
			
		}
	}
	
}

-(void)updateMarker2:(NSString *)numberString{
	if (quarter2_ChoosenField!=nil){
		for(UIImageView *imageView in uIImages){
			if((imageView.tag != [OT_ChoosenField intValue]||![self isNumber:OT_ChoosenField_String])&&(imageView.tag != [quarter1_ChoosenField intValue]||![self isNumber:quarter1_ChoosenField_String]) && (imageView.tag == [quarter2_ChoosenField intValue]) && (imageView.tag != [quarter3_ChoosenField intValue]||![self isNumber:quarter3_ChoosenField_String]) && (imageView.tag != [quarter4_ChoosenField intValue]||![self isNumber:quarter4_ChoosenField_String])){
				imageView.backgroundColor = [UIColor whiteColor];
				imageView.alpha = 1.0f;
				//[quarter2_ChoosenField release];
				break;
				
			}
		}
		[quarter2_ChoosenField release];
	}
	quarter2_ChoosenField = [[NSNumber alloc] initWithInt:[numberString intValue]];
	//[numberString release];
	for(UIImageView *imageView in uIImages){
		if(imageView.tag == [quarter2_ChoosenField intValue]){
			imageView.backgroundColor = [UIColor yellowColor];
			imageView.alpha = 0.6f;
			break;
			
		}
	}
	
}

-(void)updateMarker3:(NSString *)numberString{
	if (quarter3_ChoosenField!=nil){
		
		for(UIImageView *imageView in uIImages){
			if((imageView.tag != [OT_ChoosenField intValue]||![self isNumber:OT_ChoosenField_String])&&(imageView.tag != [quarter1_ChoosenField intValue]||![self isNumber:quarter1_ChoosenField_String]) && (imageView.tag != [quarter2_ChoosenField intValue]||![self isNumber:quarter2_ChoosenField_String]) && (imageView.tag == [quarter3_ChoosenField intValue]) && (imageView.tag != [quarter4_ChoosenField intValue]||![self isNumber:quarter4_ChoosenField_String])){
				imageView.backgroundColor = [UIColor whiteColor];
				imageView.alpha = 1.0f;
				//[quarter3_ChoosenField release];
				break;
				
			}
		}
		[quarter3_ChoosenField release];
	}
	quarter3_ChoosenField = [[NSNumber alloc] initWithInt:[numberString intValue]];
	//[numberString release];
	for(UIImageView *imageView in uIImages){
		if(imageView.tag == [quarter3_ChoosenField intValue]){
			imageView.backgroundColor = [UIColor yellowColor];
			imageView.alpha = 0.6f;
			break;
			
		}
	}	
}

-(void)updateMarker4:(NSString *)numberString{
	if (quarter4_ChoosenField!=nil){
		
		for(UIImageView *imageView in uIImages){
			if((imageView.tag != [OT_ChoosenField intValue]||![self isNumber:OT_ChoosenField_String])&&(imageView.tag != [quarter1_ChoosenField intValue]||![self isNumber:quarter1_ChoosenField_String]) && (imageView.tag != [quarter2_ChoosenField intValue]||![self isNumber:quarter2_ChoosenField_String]) && (imageView.tag != [quarter3_ChoosenField intValue]||![self isNumber:quarter3_ChoosenField_String]) && (imageView.tag == [quarter4_ChoosenField intValue])){
				imageView.backgroundColor = [UIColor whiteColor];
				imageView.alpha = 1.0f;
				//[quarter4_ChoosenField release];
				break;				
			}
		}
		[quarter4_ChoosenField release];
	}
	quarter4_ChoosenField = [[NSNumber alloc] initWithInt:[numberString intValue]];
	//[numberString release];
	for(UIImageView *imageView in uIImages){
		if(imageView.tag == [quarter4_ChoosenField intValue]){
			imageView.backgroundColor = [UIColor yellowColor];
			imageView.alpha = 0.6f;
			break;
		}
	}	
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


-(void)resultsButtonPressed
{
	//have to release
	NSString *emptyString = @"";
	
	if(time1_1Quarter_field.editing)
		[time1_1Quarter_field resignFirstResponder];
	
	if(time1_2Quarter_field.editing)
		[time1_2Quarter_field resignFirstResponder];
	
	if(time1_3Quarter_field.editing)
		[time1_3Quarter_field resignFirstResponder];
	
	if(time1_4Quarter_field.editing)
		[time1_4Quarter_field resignFirstResponder];
	
	if(time1_OTQuarter_field.editing)
		[time1_OTQuarter_field resignFirstResponder];
	
	if(time2_1Quarter_field.editing)
		[time2_1Quarter_field resignFirstResponder];
	
	if(time2_2Quarter_field.editing)
		[time2_2Quarter_field resignFirstResponder];
	
	if(time2_3Quarter_field.editing)
		[time2_3Quarter_field resignFirstResponder];
	
	if(time2_4Quarter_field.editing)
		[time2_4Quarter_field resignFirstResponder];
	
	if(time2_OTQuarter_field.editing)
		[time2_OTQuarter_field resignFirstResponder];
	
	
	else{
		
		if([time1_1Quarter_field.text isEqualToString:emptyString]||(![[time1_1Quarter_field.text stringByTrimmingCharactersInSet: [NSCharacterSet alphanumericCharacterSet]] isEqualToString:@""])){
			time1_1Quarter=nil;
		}
		if([time2_1Quarter_field.text isEqualToString:emptyString]||(![[time2_1Quarter_field.text stringByTrimmingCharactersInSet: [NSCharacterSet alphanumericCharacterSet]] isEqualToString:@""])){
			time2_1Quarter=nil;
		}
		
		if([time1_2Quarter_field.text isEqualToString:emptyString]||(![[time1_2Quarter_field.text stringByTrimmingCharactersInSet: [NSCharacterSet alphanumericCharacterSet]] isEqualToString:@""])){
			time1_2Quarter=nil;
			
		}
		if([time2_2Quarter_field.text isEqualToString:emptyString]||(![[time2_2Quarter_field.text stringByTrimmingCharactersInSet: [NSCharacterSet alphanumericCharacterSet]] isEqualToString:@""])){
			time2_2Quarter=nil;
		}
		
		if([time1_3Quarter_field.text isEqualToString:emptyString]||(![[time1_3Quarter_field.text stringByTrimmingCharactersInSet: [NSCharacterSet alphanumericCharacterSet]] isEqualToString:@""])){
			time1_3Quarter=nil;
			
		}
		if([time2_3Quarter_field.text isEqualToString:emptyString]||(![[time2_3Quarter_field.text stringByTrimmingCharactersInSet: [NSCharacterSet alphanumericCharacterSet]] isEqualToString:@""])){
			time2_3Quarter=nil;
		}
		
		if([time1_4Quarter_field.text isEqualToString:emptyString]||(![[time1_4Quarter_field.text stringByTrimmingCharactersInSet: [NSCharacterSet alphanumericCharacterSet]] isEqualToString:@""])){
			time1_4Quarter=nil;
			
		}
		if([time2_4Quarter_field.text isEqualToString:emptyString]||(![[time2_4Quarter_field.text stringByTrimmingCharactersInSet: [NSCharacterSet alphanumericCharacterSet]] isEqualToString:@""])){
			time2_4Quarter=nil;
		}
		
		if([time1_OTQuarter_field.text isEqualToString:emptyString]||(![[time1_OTQuarter_field.text stringByTrimmingCharactersInSet: [NSCharacterSet alphanumericCharacterSet]] isEqualToString:@""])){
			time1_OTQuarter=nil;
			
		}
		if([time2_OTQuarter_field.text isEqualToString:emptyString]||(![[time2_OTQuarter_field.text stringByTrimmingCharactersInSet: [NSCharacterSet alphanumericCharacterSet]] isEqualToString:@""])){
			time2_OTQuarter=nil;
		}
		
		
		childController = [[ResultsViewController alloc] initWithNibName:@"ResultsViewController" bundle:nil];
	
		childController.title = [[NSString alloc] initWithFormat:@"%@ x %@ - Results",team1Name,team2Name];     
	
		childController.playersNames = self.playersNames;
		childController.playersInitialsImages = self.playersInitialsImages;
		childController.playersNumbersOfCells = self.playersNumbersOfCells;
	
		childController.choicesPlayers = self.choicesPlayers;
		childController.choicesValues = self.choicesValues;
	
		childController.team1Name = self.team1Name;
		childController.team2Name = self.team2Name;
	
		childController.team1_randomNumbers = self.team1_randomNumbers;
		childController.team2_randomNumbers = self.team2_randomNumbers;
	
		childController.time1_1Quarter = self.time1_1Quarter;
		childController.time1_2Quarter = self.time1_2Quarter;
		childController.time1_3Quarter = self.time1_3Quarter;
		childController.time1_4Quarter = self.time1_4Quarter;
		childController.time1_OTQuarter = self.time1_OTQuarter;
		
		childController.time2_1Quarter = self.time2_1Quarter;
		childController.time2_2Quarter = self.time2_2Quarter;
		childController.time2_3Quarter = self.time2_3Quarter;
		childController.time2_4Quarter = self.time2_4Quarter;
		childController.time2_OTQuarter = self.time2_OTQuarter;
		
		PoolAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
		[delegate.navController pushViewController:childController animated:YES];
	}
	[emptyString release];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch * touch = [touches anyObject];
    if(touch.phase == UITouchPhaseBegan) {
		
		if(time1_1Quarter_field.editing)
			[time1_1Quarter_field resignFirstResponder];
		
		if(time1_2Quarter_field.editing)
			[time1_2Quarter_field resignFirstResponder];
		
		if(time1_3Quarter_field.editing)
			[time1_3Quarter_field resignFirstResponder];
		
		if(time1_4Quarter_field.editing)
			[time1_4Quarter_field resignFirstResponder];
		
		if(time1_OTQuarter_field.editing)
			[time1_OTQuarter_field resignFirstResponder];
	
		if(time2_1Quarter_field.editing)
			[time2_1Quarter_field resignFirstResponder];
	
		if(time2_2Quarter_field.editing)
			[time2_2Quarter_field resignFirstResponder];
		
		if(time2_3Quarter_field.editing)
			[time2_3Quarter_field resignFirstResponder];
		
		if(time2_4Quarter_field.editing)
			[time2_4Quarter_field resignFirstResponder];
		
		if(time2_OTQuarter_field.editing)
			[time2_OTQuarter_field resignFirstResponder];
		
	}
	
}

- (void)dealloc {
    [super dealloc];
}

-(BOOL)isNumber:(NSString *)value{
	NSString *emptyString = @"";
	
	if(value==nil){
		return FALSE;
	}
	else if([value isEqualToString:emptyString]){
		return FALSE;
	}
	else if(!([[value stringByTrimmingCharactersInSet: [NSCharacterSet alphanumericCharacterSet]] isEqualToString:@""])){
		return FALSE;
	}
	else{
		return TRUE;
	}
	[emptyString release];
}

- (int)getRandomNumber:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

@end
