//  PlayerInfoViewController.m
//  Pool
//
//  Created by Victor Oliveira on 22/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import "PlayerInfoViewController.h"
#import "PaintingView.h"
#import "SelectCellsController.h"
#import "PoolAppDelegate.h"

#define paintingViewWidth 574 
#define paintingViewHeight 384

@implementation PlayerInfoViewController

@synthesize continueButton;

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
@synthesize playersInitialsPoints;

//choices atributes
@synthesize choicesPlayers;
@synthesize choicesValues;

//UI atributes
@synthesize paintingView;
@synthesize nameTextField;

@synthesize parentController;
@synthesize shouldPop;

@synthesize playersColors;

@synthesize actualPlayerColor;
@synthesize pickerView;
@synthesize arrayColors;
@synthesize arrayUIColors;

@synthesize clearButton;
@synthesize nameLabel;
@synthesize drawLabel;
@synthesize colorLabel;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.

- (void)viewDidLoad {
	//NSString *actualTitle = @"Select Your Squares";
	//UIBarButtonItem *continueButton = [[UIBarButtonItem alloc]
	//								   initWithTitle:actualTitle style:UIBarButtonItemStyleDone target:self action:@selector(continueButtonPressed)];	
	//self.navigationItem.rightBarButtonItem = continueButton;

	//[continueButton release];
	//[actualTitle release];
	self.navigationItem.hidesBackButton = YES;
	
	UIImage *blueImage = [UIImage imageNamed:@"blueButton.png"];
    UIImage *blueButtonImage = [blueImage stretchableImageWithLeftCapWidth:12 topCapHeight:0];
    [continueButton setBackgroundImage:blueButtonImage forState:UIControlStateNormal];
	
	[nameTextField setBorderStyle:UITextBorderStyleRoundedRect];
	
	nameTextField.delegate = self;
	nameTextField.returnKeyType = UIReturnKeyDone;
	
	if([playersNames objectAtIndex:[playerIndex intValue]]!=nil){
		nameTextField.text = [playersNames objectAtIndex:[playerIndex intValue]];
	}
	
	actualPlayerColor = [playersColors objectAtIndex:[playerIndex intValue]];
	
	[paintingView setNewColor:actualPlayerColor];
	
	if( [ [playersInitialsPoints objectAtIndex:[playerIndex intValue]] isKindOfClass:[NSMutableArray class]]){
		[paintingView replacePoints:[playersInitialsPoints objectAtIndex:[playerIndex intValue]]];
		[paintingView setNeedsDisplay];
	}
	else{
		nameTextField.text=@"";
	
	}
	//navigation atribute
	shouldPop=FALSE;
	
	//if([playersInitialsImages objectAtIndex:[playerIndex intValue]] !=nil){
	//	[paintingView drawImage:[playersInitialsImages objectAtIndex:[playerIndex intValue]]];
	//}
	
	
	arrayColors = [[NSMutableArray alloc] init];
	[arrayColors addObject:@"Black"];
	[arrayColors addObject:@"Blue"];
	[arrayColors addObject:@"Brown"];
	[arrayColors addObject:@"Gray"];
	[arrayColors addObject:@"Green"];
	[arrayColors addObject:@"Orange"];
	[arrayColors addObject:@"Pink"];
	[arrayColors addObject:@"Purple"];
	[arrayColors addObject:@"Red"];
	[arrayColors addObject:@"Yellow"];
 	
	arrayUIColors = [[NSMutableArray alloc] init];
	[arrayUIColors addObject:[UIColor blackColor]];
	[arrayUIColors addObject:[UIColor blueColor]];
	[arrayUIColors addObject:[UIColor brownColor]];
	[arrayUIColors addObject:[UIColor grayColor]];
	[arrayUIColors addObject:[UIColor greenColor]];
	UIColor *orange = [[UIColor alloc] initWithRed:255.0/255.0 green:128.0/255.0 blue:0.0/255.0 alpha:1.0];
	[arrayUIColors addObject:orange];//orange
	UIColor *pink = [[UIColor alloc] initWithRed:255.0/255.0 green:111.0/255.0 blue:207.0/255.0 alpha:1.0];
	[arrayUIColors addObject:pink];//pink
	UIColor *purple = [[UIColor alloc] initWithRed:128/255.0 green:0.0/255.0 blue:200.0/255.0 alpha:1.0];
	[arrayUIColors addObject:purple];//purple	
	
	[arrayUIColors addObject:[UIColor redColor]];
	[arrayUIColors addObject:[UIColor yellowColor]];

	
	NSInteger index = [arrayUIColors indexOfObject:actualPlayerColor];

	[pickerView selectRow:index inComponent:0 animated:YES];
	
	[super viewDidLoad];

}

//picker view methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
	return 1;
}
- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
	
	return [arrayColors count];
}
- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	return [arrayColors objectAtIndex:row];
}
- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	actualPlayerColor = [arrayUIColors objectAtIndex:row];
		
	[self setNewColor:actualPlayerColor];
}

-(void)viewWillAppear:(BOOL)animated{
	
	if(shouldPop){
		[self.navigationController popViewControllerAnimated:YES];
		[self release];
	}
}


- (IBAction)continueButtonPressed{
	
	//have to release
	NSString *emptyString =@"";
	
	BOOL nameNotOK = FALSE;
	
	for(NSString *name in playersNames){
		NSInteger index = [playersNames indexOfObject:name];
		
		if([name isEqualToString:nameTextField.text] & index!=[playerIndex intValue]){
			nameNotOK = TRUE;
			break;
		}
	}
	
	if(nameTextField.editing)
		[nameTextField resignFirstResponder];
	
	if(nameNotOK){
		NSString *alertTitle = @"Choose another name!";
		NSString *alertMsg = @"Someone has already chosen this name!";
		NSString *alertButton = @"OK";
		
		UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:alertTitle message:alertMsg delegate:self cancelButtonTitle:alertButton otherButtonTitles:nil] autorelease];
		[alert show];
		
		[alertTitle release];
		[alertMsg release];
		[alertButton release];
	}
	else if([nameTextField.text isEqualToString:emptyString]){
		NSString *alertTitle = @"Choose your Name!";
		NSString *alertMsg = @"Finish choosing your name!";
		NSString *alertButton = @"OK";
		
		UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:alertTitle message:alertMsg delegate:self cancelButtonTitle:alertButton otherButtonTitles:nil] autorelease];
		[alert show];	
		
		[alertTitle release];
		[alertMsg release];
		[alertButton release];
	}else if([paintingView getImage]==nil | [paintingView getPoints]==nil| [[paintingView getPoints] count]<2){
		NSString *alertTitle = @"Draw your Initials!";
		NSString *alertMsg = @"Finish drawing your initials!";
		NSString *alertButton = @"OK";
		
		UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:alertTitle message:alertMsg delegate:self cancelButtonTitle:alertButton otherButtonTitles:nil] autorelease];
		[alert show];	
		
		[alertTitle release];
		[alertMsg release];
		[alertButton release];
	}
	else{
				
		NSString *oldName = [self.playersNames objectAtIndex:[playerIndex intValue]];
		
		if(![nameTextField.text isEqualToString:oldName]){		
			int i;
			for(i=0;i<[choicesPlayers count];i++){
				if([[choicesPlayers objectAtIndex:i] isEqualToString:oldName]){
					[choicesPlayers replaceObjectAtIndex:i withObject:nameTextField.text];
				}
			}
		}
		
		[self.playersNames replaceObjectAtIndex:[playerIndex intValue] withObject:nameTextField.text];
		[self.playersInitialsImages replaceObjectAtIndex:[playerIndex intValue] withObject:[paintingView getImage]];
		[self.playersInitialsPoints replaceObjectAtIndex:[playerIndex intValue] withObject:[paintingView getPoints]];
		[self.playersColors replaceObjectAtIndex:[playerIndex intValue] withObject:actualPlayerColor];

		
		NSString *nibFileString = @"SelectCellsController";
		childController = [[SelectCellsController alloc] initWithNibName:nibFileString bundle:nil];
		[nibFileString release];
		
		
		NSString *childTitle = [[NSString alloc] initWithFormat:@"%@ - Pick Your Squares",nameTextField.text];
		childController.title = childTitle;   
		[childTitle release];
	
		childController.playersNames = self.playersNames;
		childController.playersInitialsImages = self.playersInitialsImages;
		childController.playersNumbersOfCells = self.playersNumbersOfCells;
	
		childController.choicesPlayers = self.choicesPlayers;
		childController.choicesValues = self.choicesValues;
	
		childController.team1Name = self.team1Name;
		childController.team2Name = self.team2Name;
	
		childController.playerIndex = self.playerIndex;
		childController.parentController=self;
	
		[self.navigationController pushViewController:childController animated:YES];
		[childController release];
	}
	[emptyString release];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	return YES;
	
}

-(IBAction)nameEdited:(id)sender{
	playerName = [sender text];
}

-(IBAction)clearContext{
	[paintingView clearContext];
	[paintingView setNeedsDisplay];
}


// Handles the continuation of a touch.
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{  
	CGPoint touchPoint = [[touches anyObject] locationInView:(UIView *)self.paintingView];
	
	if((touchPoint.x>=0 &&touchPoint.y>=0) &&(touchPoint.x<=paintingViewWidth && touchPoint.y<=paintingViewHeight)){
		[paintingView addPoint:touchPoint];
		[paintingView setNeedsDisplay];		
	}
}

// Handles the end of a touch event when the touch is a tap.
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{   
	UITouch * touch = [touches anyObject];
    
	if(touch.phase == UITouchPhaseBegan) {
		if(nameTextField.editing)
			[nameTextField resignFirstResponder];
	}
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	if([paintingView getImage]!=nil&&[[paintingView getPoints] count]>2){
		[paintingView uncontinueTouchPoints];
	}
}


-(void)setNewColor:(UIColor *)color{
	if(color!=nil){
		[paintingView setNewColor:color];
		[paintingView setNeedsDisplay];	
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
	//actualPlayer atributes
	[arrayColors release];

	int i;
	for (i=0;i<[arrayUIColors count];){
		UIColor *color = [arrayUIColors objectAtIndex:i];
		if([color retainCount]>1){
			[arrayUIColors removeObject:color];
			[color release];
		}
	
	}
	
	//[color1 release];
	//[color2 release];
	//[color3 release];
	
	//[playerIndex release];
	//[playerName release];
	
	[arrayUIColors release];
	if([actualPlayerColor retainCount]>1){
		[actualPlayerColor release];
	}
	//game atributes
	//[team1Name release];
	//[team2Name release];
	//[numberOfPlayers release];
	
	//object player atributes
	[playersNames release];
	[playersInitialsImages release];
	[playersNumbersOfCells release];
	[playersInitialsPoints release];
	
	//[playersColors release];
	
	//chooices atributes
	[choicesPlayers release];
	[choicesValues release];
	
	[clearButton release];
	[nameLabel release];
	[drawLabel release];
	[colorLabel release];
	[pickerView release];
	[paintingView release];
	[nameTextField release];
	[continueButton release];
	
    [super dealloc];
}


@end
