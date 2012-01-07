//
//  SelectTeamsController.m
//  Pool
//
//  Created by Victor Oliveira on 22/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import "SelectTeamsController.h"
#import "UsersViewController.h"
#import "PoolAppDelegate.h"

@implementation SelectTeamsController

//value entities
@synthesize team1Name;
@synthesize team2Name;
@synthesize numberOfPlayers;

//UI entities
@synthesize playersTextField;
@synthesize team1TextField;
@synthesize team2TextField;
@synthesize animatedDistance;
@synthesize continueButton;
@synthesize isFirstTime;

static const CGFloat KEYBOARD_ANIMATION_DURATION = 0.3;
static const CGFloat MINIMUM_SCROLL_FRACTION = 0.2;
static const CGFloat MAXIMUM_SCROLL_FRACTION = 0.8;
static const CGFloat LANDSCAPE_RIGHT_KEYBOARD_HEIGHT = 350;
static const CGFloat LANDSCAPE_LEFT_KEYBOARD_HEIGHT = 6800;

-(void)backButtonAction{
	
	NSString *alertTitle = @"Quit Setup?" ;
	NSString *alertmsg = @"All your information will be lost. Are you sure?";
	NSString *alertButtonOne = @"Yes";
	NSString *alertButtonTwo = @"Cancel";
	
	UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:alertTitle message:alertmsg delegate:self cancelButtonTitle:alertButtonOne otherButtonTitles:nil] autorelease];
    // optional - add more buttons:
	[alert setTag:12];
    [alert addButtonWithTitle:alertButtonTwo];
    [alert show];
	
	[alertTitle release]; 
	[alertmsg release];
	[alertButtonOne release];
	[alertButtonTwo release];
	
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if ([alertView tag] == 12) {    // it's the Error alert
        if (buttonIndex == 0) {     // and they clicked OK.
			[self.navigationController popViewControllerAnimated:YES];
        }
		
	}
}
- (void)viewDidLoad {
	
	UIImage *blueImage = [UIImage imageNamed:@"blueButton.png"];
    UIImage *blueButtonImage = [blueImage stretchableImageWithLeftCapWidth:12 topCapHeight:0];
    [continueButton setBackgroundImage:blueButtonImage forState:UIControlStateNormal];
	
	
	isFirstTime = TRUE;
	
	NSString *quitButton = @"Quit";
	UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:quitButton style:UIBarButtonItemStyleBordered target:self action:@selector(backButtonAction)];
	self.navigationItem.leftBarButtonItem = backButton;
	[quitButton release];
	[backButton release];
	
	
	//NSString *continueButtonString = @"Continue";
	//UIBarButtonItem *continueBarButton = [[UIBarButtonItem alloc]
	//								   initWithTitle:continueButtonString style:UIBarButtonItemStyleDone target:self action:@selector(continueButtonPressed)];	
	//self.navigationItem.rightBarButtonItem = continueBarButton;
	//[continueButtonString release];
	//[continueBarButton release];
	
	playersTextField.delegate = self;
	playersTextField.returnKeyType = UIReturnKeyDone;	
	[playersTextField setBorderStyle:UITextBorderStyleRoundedRect];	
	
	team1TextField.delegate = self;
	team1TextField.returnKeyType = UIReturnKeyDone;
	[team1TextField setBorderStyle:UITextBorderStyleRoundedRect];	
	
	
	team2TextField.delegate = self;
	team2TextField.returnKeyType = UIReturnKeyDone;
	[team2TextField setBorderStyle:UITextBorderStyleRoundedRect];

	[super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated{

	if(!isFirstTime){
		NSString *text = [[NSString alloc] initWithFormat:@"%d",[usersViewController.numberOfPlayers intValue]];
		playersTextField.text=text;
		[playersTextField setUserInteractionEnabled:NO];
		[playersTextField setTextColor:[UIColor grayColor]];

		[text release];
		
	}else{
		isFirstTime = FALSE;
	}
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch * touch = [touches anyObject];
    if(touch.phase == UITouchPhaseBegan) {
		
		if(playersTextField.editing)
			[playersTextField resignFirstResponder];
  
		if(team1TextField.editing)
			[team1TextField resignFirstResponder];
		
		if(team2TextField.editing)
			[team2TextField resignFirstResponder];
		
	}	
}



- (void)textFieldDidBeginEditing:(UITextField *)textField
{
	if(textField==playersTextField){
	
		CGRect textFieldRect =
		[self.view.window convertRect:textField.bounds fromView:textField];
		CGRect viewRect =
		[self.view.window convertRect:self.view.bounds fromView:self.view];
		CGFloat midline = textFieldRect.origin.y + 0.5 * textFieldRect.size.height;
		CGFloat numerator =
		midline - viewRect.origin.y
		- MINIMUM_SCROLL_FRACTION * viewRect.size.height;
		CGFloat denominator =
		(MAXIMUM_SCROLL_FRACTION - MINIMUM_SCROLL_FRACTION)
		* viewRect.size.height;
		CGFloat heightFraction = numerator / denominator;
		if (heightFraction < 0.0)
		{
			heightFraction = 0.0;
		}
		else if (heightFraction > 1.0)
		{
			heightFraction = 1.0;
		}
		UIInterfaceOrientation orientation =
		[[UIApplication sharedApplication] statusBarOrientation];
		if (orientation == UIInterfaceOrientationLandscapeRight)
		{
			animatedDistance = floor(LANDSCAPE_RIGHT_KEYBOARD_HEIGHT * heightFraction);
		}
		else
		{
			animatedDistance = floor(LANDSCAPE_LEFT_KEYBOARD_HEIGHT * heightFraction);
		}
		CGRect viewFrame = self.view.frame;
		viewFrame.origin.y -= animatedDistance;
    
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationBeginsFromCurrentState:YES];
		[UIView setAnimationDuration:KEYBOARD_ANIMATION_DURATION];
    
		[self.view setFrame:viewFrame];
    
		[UIView commitAnimations];
	}
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
	if(textField==playersTextField){
	NSCharacterSet *svo;
	
	svo = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet];
	
	NSString *filtered = [[string componentsSeparatedByCharactersInSet:svo] componentsJoinedByString:@""];
	BOOL bT = [string isEqualToString:filtered];
	
	return bT;
	}else{
		return TRUE;
	}
}	

- (IBAction)continueButtonPressed {
	
	if(playersTextField.editing)
		[playersTextField resignFirstResponder];
	
	if(team1TextField.editing)
		[team1TextField resignFirstResponder];
	
	if(team2TextField.editing)
		[team2TextField resignFirstResponder];
	
	
	 if(numberOfPlayers!=nil&[numberOfPlayers intValue]>100){
		NSString *alertTitle = @"Select Number of Players";
		NSString *alertText = @"Number of players must be < 100";
		NSString *alertButton = @"OK";
		
		UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:alertTitle message:alertText delegate:self cancelButtonTitle:alertButton otherButtonTitles:nil] autorelease];
		[alert show];
		
		[alertTitle release];
		[alertText release];
		[alertButton release];
	
	}else if(numberOfPlayers!=nil& [numberOfPlayers intValue]<2 ){
		NSString *alertTitle = @"Select Number of Players";
		NSString *alertText = @"Number of players must be > 1";
		NSString *alertButton = @"OK";
		
		UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:alertTitle message:alertText delegate:self cancelButtonTitle:alertButton otherButtonTitles:nil] autorelease];
		[alert show];
		
		[alertTitle release];
		[alertText release];
		[alertButton release];
		
	}
	else{
		
		if(numberOfPlayers==nil)
			numberOfPlayers = [[NSNumber alloc] initWithInt:2];
		
		if(team1Name==nil)
			team1Name = @"Home Team";
		
		if(team2Name==nil)
			team2Name = @"Visitors Team";
		
		if(usersViewController==nil){
			usersViewController = [[UsersViewController alloc] initWithStyle:UITableViewStyleGrouped];
			usersViewController.numberOfPlayers = self.numberOfPlayers;
		}
		NSString *childTitle = [[NSString alloc] initWithFormat:@"%@ x %@ - Select Rows to Edit Players",team1Name,team2Name];
		usersViewController.title = childTitle;
		[childTitle release];
		usersViewController.team1Name = self.team1Name;
		usersViewController.team2Name = self.team2Name;
		
		
		PoolAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
		[delegate.navController pushViewController:usersViewController animated:YES];
	}
	
}

- (IBAction)team1Edited:(id)sender
{
	self.team1Name = [sender text];
}

- (IBAction)team2Edited:(id)sender
{
	self.team2Name = [sender text];
}

- (IBAction) numberOfPlayersEdited:(id)sender{
	self.numberOfPlayers = [[NSNumber alloc] initWithInt:[[sender text] intValue]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{

	[textField resignFirstResponder];
	return YES;

}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
	if(textField ==playersTextField){
    CGRect viewFrame = self.view.frame;
    viewFrame.origin.y += animatedDistance;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:KEYBOARD_ANIMATION_DURATION];
    
    [self.view setFrame:viewFrame];
    
    [UIView commitAnimations];
	}
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return FALSE;
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
    [super dealloc];
}


@end
