    //
//  ResultsViewController.m
//  Pool
//
//  Created by Victor Oliveira on 21/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import "ResultsViewController.h"


@implementation ResultsViewController

@synthesize playersNames;
@synthesize playersListPoints;

@synthesize quarter1_number;
@synthesize quarter2_number;
@synthesize quarter3_number;
@synthesize quarter4_number;
@synthesize OT_number;

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

@synthesize time1_1Quarter_real;
@synthesize time1_2Quarter_real;
@synthesize time1_3Quarter_real;
@synthesize time1_4Quarter_real;
@synthesize time1_OTQuarter_real;
@synthesize time2_1Quarter_real;
@synthesize time2_2Quarter_real;
@synthesize time2_3Quarter_real;
@synthesize time2_4Quarter_real;
@synthesize time2_OTQuarter_real;


@synthesize playersInitialsImages;
@synthesize playersNumbersOfCells;

@synthesize choicesPlayers;
@synthesize choicesValues;

@synthesize team1Name;
@synthesize team2Name;

@synthesize team1_randomNumbers;
@synthesize team2_randomNumbers;

@synthesize quarter1_Winner;
@synthesize quarter2_Winner;
@synthesize quarter3_Winner;
@synthesize quarter4_Winner;
@synthesize OT_Winner;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSString *quitButton = @"Quit";
	
	UIBarButtonItem *continueButton = [[UIBarButtonItem alloc]
									   initWithTitle:quitButton style:UIBarButtonItemStyleBordered target:self action:@selector(continueButtonPressed)];	
	self.navigationItem.rightBarButtonItem = continueButton;
	[continueButton release];
	[quitButton release];
	
	playersListPoints = [[NSMutableArray alloc] initWithObjects:nil];
	
	for (NSString *unused in playersNames) {
		NSNumber *number = [[NSNumber alloc] initWithInt:0];
		[self.playersListPoints addObject:number];
		[number release];
	}
	
	
	for(NSNumber *value in team1_randomNumbers){
	
		if(value==self.time1_1Quarter){
			NSNumber *index = [[NSNumber alloc] initWithInt:[team1_randomNumbers indexOfObject:value]];
			self.time1_1Quarter_real = index;
		}
		if(value==time1_2Quarter){
			NSNumber *index = [[NSNumber alloc] initWithInt:[team1_randomNumbers indexOfObject:value]];
			time1_2Quarter_real = index;
		}
		if(value==time1_3Quarter){
			NSNumber *index = [[NSNumber alloc] initWithInt:[team1_randomNumbers indexOfObject:value]];
			time1_3Quarter_real = index;
		}
		if(value==time1_4Quarter){
			NSNumber *index = [[NSNumber alloc] initWithInt:[team1_randomNumbers indexOfObject:value]];
			time1_4Quarter_real = index;
		}
		if(value==time1_OTQuarter){
			NSNumber *index = [[NSNumber alloc] initWithInt:[team1_randomNumbers indexOfObject:value]];
			time1_OTQuarter_real = index;
		}
	}
	
	for(NSNumber *value in team2_randomNumbers){
		
		if(value==time2_1Quarter){
			NSNumber *index = [[NSNumber alloc] initWithInt:[team2_randomNumbers indexOfObject:value]];
			time2_1Quarter_real = index;
		}
		if(value==time2_2Quarter){
			NSNumber *index = [[NSNumber alloc] initWithInt:[team2_randomNumbers indexOfObject:value]];
			time2_2Quarter_real = index;
		}
		if(value==time2_3Quarter){
			NSNumber *index = [[NSNumber alloc] initWithInt:[team2_randomNumbers indexOfObject:value]];
			time2_3Quarter_real = index;
		}
		if(value==time2_4Quarter){
			NSNumber *index = [[NSNumber alloc] initWithInt:[team2_randomNumbers indexOfObject:value]];
			time2_4Quarter_real = index;
		}
		
		if(value==time2_OTQuarter){
			NSNumber *index = [[NSNumber alloc] initWithInt:[team2_randomNumbers indexOfObject:value]];
			time2_OTQuarter_real = index;
		}
	}
	
	if(self.time1_1Quarter!=nil&&self.time2_1Quarter!=nil){
		NSString *quarter1 = [[NSString alloc] initWithFormat:@"%d%d", [time1_1Quarter_real intValue],[time2_1Quarter_real intValue]];
		self.quarter1_number = [[NSNumber alloc] initWithInt:[quarter1 intValue]];
		[quarter1 release];
	}
	if(self.time1_2Quarter!=nil&&self.time2_2Quarter!=nil){
		NSString *quarter2 = [[NSString alloc] initWithFormat:@"%d%d", [time1_2Quarter_real intValue],[time2_2Quarter_real intValue]];
		self.quarter2_number = [[NSNumber alloc] initWithInt:[quarter2 intValue]];
		[quarter2 release];
	}
	
	if(self.time1_3Quarter!=nil&&self.time2_3Quarter!=nil){
		NSString *quarter3 = [[NSString alloc] initWithFormat:@"%d%d", [time1_3Quarter_real intValue],[time2_3Quarter_real intValue]];
		self.quarter3_number = [[NSNumber alloc] initWithInt:[quarter3 intValue]];
		[quarter3 release];
	}
				
	if(self.time1_4Quarter!=nil&&self.time2_4Quarter!=nil){
		NSString *quarter4 = [[NSString alloc] initWithFormat:@"%d%d", [time1_4Quarter_real intValue],[time2_4Quarter_real intValue]];
		self.quarter4_number = [[NSNumber alloc] initWithInt:[quarter4 intValue]];
		[quarter4 release];

	}
						
	if(self.time1_OTQuarter!=nil &&self.time2_OTQuarter!=nil){
		NSString *quarterOT = [[NSString alloc] initWithFormat:@"%d%d", [time1_OTQuarter_real intValue],[time2_OTQuarter_real intValue]];
		self.OT_number = [[NSNumber alloc] initWithInt:[quarterOT intValue]];
		[quarterOT release];
	}
	
	
	for (NSNumber *result in choicesValues)
    {
		if(time1_1Quarter!=nil&&time2_1Quarter!=nil&&[result intValue]==[self.quarter1_number intValue]){
			NSInteger index = [choicesValues indexOfObject:result];
			
			NSString *rightPlayer = [choicesPlayers objectAtIndex:index];
			
			index = [playersNames indexOfObject:rightPlayer];
			
			index = [[playersNumbersOfCells objectAtIndex:index] intValue];
			
			NSString *winner=[[NSString alloc] initWithFormat:@"%@ (%d%%)",rightPlayer,index];
			quarter1_Winner.text = winner;
			[winner release];
			
		}
		
		if(time1_2Quarter!=nil&&time2_2Quarter!=nil&&[result intValue]==[self.quarter2_number intValue]){
			NSInteger index = [choicesValues indexOfObject:result];
			
			NSString *rightPlayer = [choicesPlayers objectAtIndex:index];
			index = [playersNames indexOfObject:rightPlayer];
			
			index = [[playersNumbersOfCells objectAtIndex:index] intValue];
			
			NSString *winner=[[NSString alloc] initWithFormat:@"%@ (%d%%)",rightPlayer,index];
			quarter2_Winner.text = winner;
			[winner release];		
		}
		
		if(time1_3Quarter!=nil&&time2_3Quarter!=nil&&[result intValue]==[self.quarter3_number intValue]){
			NSInteger index = [choicesValues indexOfObject:result];
			
			NSString *rightPlayer = [choicesPlayers objectAtIndex:index];
			
			index = [playersNames indexOfObject:rightPlayer];
			
			index = [[playersNumbersOfCells objectAtIndex:index] intValue];
			
			NSString *winner=[[NSString alloc] initWithFormat:@"%@ (%d%%)",rightPlayer,index];
			quarter3_Winner.text = winner;
			[winner release];		
		}
		
		if(time1_4Quarter!=nil&&time2_4Quarter!=nil&&[result intValue]==[self.quarter4_number intValue]){
			NSInteger index = [choicesValues indexOfObject:result];
			
			NSString *rightPlayer = [choicesPlayers objectAtIndex:index];
			
			index = [playersNames indexOfObject:rightPlayer];
			
			index = [[playersNumbersOfCells objectAtIndex:index] intValue];
			
			NSString *winner=[[NSString alloc] initWithFormat:@"%@ (%d%%)",rightPlayer,index];
			quarter4_Winner.text = winner;
			[winner release];
			
		}
		
		if(time1_OTQuarter!=nil&&time2_OTQuarter!=nil&&[result intValue]==[self.OT_number intValue]){
			NSInteger index = [choicesValues indexOfObject:result];
			
			NSString *rightPlayer = [choicesPlayers objectAtIndex:index];
			
			index = [playersNames indexOfObject:rightPlayer];
			
			index = [[playersNumbersOfCells objectAtIndex:index] intValue];
			
			NSString *winner=[[NSString alloc] initWithFormat:@"%@ (%d%%)",rightPlayer,index];
			OT_Winner.text = winner;
			[winner release];
			
		}
	}
	[quarter1_number release];
		[quarter2_number release];
		[quarter3_number release];
		[quarter4_number release];
	[OT_number release];
    [super viewDidLoad];
}

-(void)continueButtonPressed{
	NSString *alertTitle = @"Quit Game?";
	NSString *alertMsg =@"This will end the squares game. Are you sure?";
	NSString *alertButton1 = @"Yes";
	NSString *alertButton2 =@"Cancel";
	
	UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:alertTitle message:alertMsg delegate:self cancelButtonTitle:alertButton1 otherButtonTitles:nil] autorelease];
    // optional - add more buttons:
	[alert setTag:12];
    [alert addButtonWithTitle:alertButton2];
    [alert show];
	
	[alertTitle release];
	[alertMsg release];
	[alertButton1 release];
	[alertButton2 release];
	
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if ([alertView tag] == 12) {    // it's the Error alert
        if (buttonIndex == 0) { 
			kill(0,0);// and they clicked OK.
            exit(0);
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



- (void)dealloc {
	[playersNames release];
	[playersListPoints release];
	
	
	[time1_1Quarter release];
	[time1_2Quarter release];
	[time1_3Quarter release];
	[time1_4Quarter release];
	[time2_1Quarter release];
	[time2_2Quarter release];
	[time2_3Quarter release];
	[time2_4Quarter release];
	
	[time1_1Quarter_real release];
	[time1_2Quarter_real release];
	[time1_3Quarter_real release];
	[time1_4Quarter_real release];
	[time2_1Quarter_real release];
	[time2_2Quarter_real release];
	[time2_3Quarter_real release];
	[time2_4Quarter_real release];
	
	[quarter1_number release];
	[quarter2_number release];
	[quarter3_number release];
	[quarter4_number release];
	
	[playersInitialsImages release];
	[playersNumbersOfCells release];
	
	[choicesPlayers release];
	[choicesValues release];
	
	[team1Name release];
	[team2Name release];
	
	[team1_randomNumbers release];
	[team2_randomNumbers release];
	
    [super dealloc];
}


@end
