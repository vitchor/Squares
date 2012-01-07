//
//  UsersViewController.m
//  Pool
//
//  Created by Marcia Rozenfeld on 11/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import "UsersViewController.h"
#import "PoolAppDelegate.h"
#import "CellView.h"
#import "PlayerInfoViewController.h"
#import "GameController.h"

@implementation UsersViewController

//game atributes
@synthesize team1Name;
@synthesize team2Name;
@synthesize numberOfPlayers;

//players atributes
@synthesize playersNames;
@synthesize playersInitialsImages;
@synthesize playersNumbersOfCells;
@synthesize playersInitialsPoints;
@synthesize playersColors;


//choices atributes
@synthesize choicesPlayers;
@synthesize choicesValues;

@synthesize textFieldBeingEdited;
@synthesize tempValues;

@synthesize createdPlayersIndex;

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
	return 80;
}



- (void)viewDidLoad {
	[self.tableView setEditing:!self.tableView.editing animated:YES];

	if(createdPlayersIndex==nil){
		createdPlayersIndex = [[NSNumber alloc]  initWithInt:1];
	}
	//[createdPlayersIndex retain];
	UIView *tableHeader_Footer = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 0)];
	tableHeader_Footer.backgroundColor = [UIColor clearColor];
	[self.tableView setTableHeaderView:tableHeader_Footer];
	[self.tableView setTableFooterView:tableHeader_Footer];
	
	self.tableView.allowsSelectionDuringEditing =YES;
	
	[tableHeader_Footer release];

	
	if(self.playersNames==nil){
	
		NSMutableArray *playersNamesArray = [[NSMutableArray alloc] initWithObjects:nil];
		NSMutableArray *playersNumbersOfCellsArray = [[NSMutableArray alloc] initWithObjects:nil];
		NSMutableArray *playersInitialsImagesArray = [[NSMutableArray alloc] initWithObjects:nil];
		NSMutableArray *playersInitialsPointsArray = [[NSMutableArray alloc] initWithObjects:nil];
		NSMutableArray *playersColorsArray = [[NSMutableArray alloc] initWithObjects:nil];

		
		NSString *newPlayers;
		NSNumber *initialNumber = [[NSNumber alloc] initWithInt:0];
		UIImage *initalImage = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"initialsImage2" ofType:@"png"]];
		
		int i;
		
		NSInteger creatorIndex = [createdPlayersIndex intValue];
		
		for (i = 0; i < [numberOfPlayers intValue]; i++ ) {
			
			newPlayers = [[NSString alloc] initWithFormat:@"Player %d",creatorIndex++];
			
			[playersNamesArray addObject:newPlayers];
			[newPlayers release];
			[playersNumbersOfCellsArray addObject:initialNumber];
			[playersInitialsImagesArray addObject:initalImage];
			[playersInitialsPointsArray addObject:initialNumber];
			
			UIColor *initialColor = [UIColor blackColor];
			[playersColorsArray addObject:initialColor];
			
			
			[initialColor release];
		}
		[initialNumber release];
		//[initalImage release];
		
		createdPlayersIndex = [[NSNumber alloc] initWithInt:creatorIndex];
		
		if(choicesPlayers==nil){
			choicesPlayers = [[NSMutableArray alloc] initWithObjects:nil];
			choicesValues = [[NSMutableArray alloc] initWithObjects:nil];

		}
		
		self.playersNames = playersNamesArray;
		self.playersNumbersOfCells = playersNumbersOfCellsArray;
		self.playersInitialsImages = playersInitialsImagesArray;
		self.playersInitialsPoints = playersInitialsPointsArray;
		self.playersColors = playersColorsArray;

	
		[playersNamesArray release];
		[playersNumbersOfCellsArray release];
		[playersInitialsImagesArray release];
		[playersInitialsPointsArray release];
		[playersColorsArray release];

	}
	
	UIBarButtonItem *continueButton = [[UIBarButtonItem alloc]
									   initWithTitle:@"Start Game" style:UIBarButtonItemStyleDone target:self action:@selector(continueButtonPressed)];	
	self.navigationItem.rightBarButtonItem = continueButton;
	[continueButton release];
    [super viewDidLoad];
}

-(void)continueButtonPressed
{
	secondChildController = [[GameController alloc] initWithNibName:@"GameController" bundle:nil];
	
	secondChildController.title = [[NSString alloc] initWithFormat:@"%@ x %@ - Insert Results",team1Name,team2Name];   
	
	secondChildController.playersNames = self.playersNames;
	secondChildController.playersInitialsImages = self.playersInitialsImages;
	secondChildController.playersNumbersOfCells = self.playersNumbersOfCells;
	
	
	secondChildController.choicesPlayers = self.choicesPlayers;
	secondChildController.choicesValues = self.choicesValues;
	
	secondChildController.team1Name = self.team1Name;
	secondChildController.team2Name = self.team2Name;
	
    [self.navigationController pushViewController:secondChildController animated:YES];
}

- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath {
	
	if (editingStyle == UITableViewCellEditingStyleDelete) {
		NSUInteger row = [indexPath row];
		
		
		if([[self.playersNumbersOfCells objectAtIndex:row] intValue]!=0){
			//NSMutableArray *willRemoveIndexes = [[NSMutableArray alloc] initWithObjects:nil];
			NSMutableArray *discardedPlayersItems = [NSMutableArray array];
			NSMutableArray *discardedValuesItems = [NSMutableArray array];

			int i;
			NSString *playerActualName;
			for(i=0; i<[choicesPlayers count] ;i++){
				playerActualName = [choicesPlayers objectAtIndex:i];
				if([playerActualName isEqualToString:[playersNames objectAtIndex:row]]){

					[discardedPlayersItems addObject:[choicesPlayers objectAtIndex:i]];

					[discardedValuesItems addObject:[choicesValues objectAtIndex:i]];
				}
			}
			[choicesValues removeObjectsInArray:discardedValuesItems];
			[choicesPlayers removeObjectsInArray:discardedPlayersItems];
		}
		
		NSString *playerName = [self.playersNames objectAtIndex:row];
		[self.playersNames removeObjectAtIndex:row];
		if([playerName retainCount]>1){
			//[playerName release];
		}
		
		NSMutableArray *releasingArray = [self.playersInitialsImages objectAtIndex:row];
		[self.playersInitialsImages removeObjectAtIndex:row];
		if([releasingArray retainCount]>0){
		   [releasingArray release];
		}
		
		NSMutableArray *releasingArray2 = [self.playersInitialsPoints objectAtIndex:row]; 
		[self.playersInitialsPoints removeObjectAtIndex:row];
		if(releasingArray2!=nil && ![releasingArray2 isKindOfClass:[NSNumber class]]){
		if([releasingArray2 retainCount]>0){
			if([releasingArray2 count]>2){
				for (NSObject *point in releasingArray2) {		
					if([point isKindOfClass:[NSString class]]){
						[point release];
					}
				}
			}
			
			[releasingArray2 release];
		}
		}
		
		[self.playersNumbersOfCells removeObjectAtIndex:row];
		[playersColors removeObjectAtIndex:row];

		
		
		NSInteger numbOfPlayers = [numberOfPlayers intValue];
		[numberOfPlayers release], numberOfPlayers=nil;
		numberOfPlayers = [[NSNumber alloc] initWithInt:(numbOfPlayers-1)];
		
		[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] 
						 withRowAnimation:UITableViewRowAnimationFade];
		[tableView reloadData];
	}else{
		
		
		[playersNames addObject:[[NSString alloc] initWithFormat:@"Player %d",[createdPlayersIndex intValue]]];
		//[createdPlayersIndex release];
		NSInteger createPlayers = [createdPlayersIndex intValue];
		
		[createdPlayersIndex release];
		
		createdPlayersIndex = [[NSNumber alloc]initWithInt:(createPlayers +1)];
		[playersNumbersOfCells addObject:[[NSNumber alloc] initWithInt:0]];
		[playersInitialsImages addObject:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"initialsImage2" ofType:@"png"]]];
		[playersInitialsPoints addObject:[[NSNumber alloc] initWithInt:0]];
		
		UIColor *initialColor = [UIColor blackColor];
		[playersColors addObject:initialColor];
		[initialColor release];
		
		NSInteger numbOfPlayers = [numberOfPlayers intValue];
		[numberOfPlayers release];
		numberOfPlayers = [[NSNumber alloc] initWithInt:(numbOfPlayers+1)];

		[tableView reloadData];
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

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
	if([numberOfPlayers intValue]<100){
		if (indexPath.row == [numberOfPlayers intValue]-1) {
			return UITableViewCellEditingStyleInsert;
		
		} 
		else {		
			return UITableViewCellEditingStyleDelete;
		}
	}
	else{
		return UITableViewCellEditingStyleDelete;
	}
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(void)viewWillAppear:(BOOL)animated{
	if(childController!=nil){
		[self.tableView reloadData];
	}

}

- (void)dealloc {
    [super dealloc];
}

#pragma mark -
#pragma mark Table Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
	return [numberOfPlayers intValue];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	tableView.backgroundColor = [UIColor clearColor];
	
	static NSString *CellIdentifier = @"CellView";
	
	CellView *cell = (CellView *) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
	if (cell == nil){
		NSArray *topLevelObjects = [[NSBundle mainBundle]loadNibNamed:@"CellView" owner:self options:nil];
		
		for(id currentObject in topLevelObjects){
			if ([currentObject isKindOfClass:[CellView class]]) {
				cell = (CellView *)currentObject;
				break;
			}
		}
	}
	
	
	cell.playerName.text = [self.playersNames objectAtIndex:[indexPath row]];
	cell.playerNumberOfCells.text=[[NSString alloc] initWithFormat:@"Number of squares: %d", [[self.playersNumbersOfCells objectAtIndex:[indexPath row]] intValue]];
	cell.playerInitialsImage.image = [self.playersInitialsImages objectAtIndex:[indexPath row]];
	cell.editingAccessoryView = nil;
    cell.editingAccessoryType = UITableViewCellAccessoryDisclosureIndicator;
	[cell retain];
	
	return cell;
}

#pragma mark -
#pragma mark Table Delegate Methods
- (void)tableView:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
    NSUInteger row = [indexPath row];
    
	childController = [[PlayerInfoViewController alloc] initWithNibName:@"PlayerInfoViewController" bundle:nil];
	
	NSString *childName = [[NSString alloc] initWithFormat:@"%@ x %@ - Edit Player",team1Name,team2Name];   
	childController.title = childName;
	[childName release];
	
	childController.playersNames = self.playersNames;
	childController.playersInitialsImages = self.playersInitialsImages;
	childController.playersNumbersOfCells = self.playersNumbersOfCells;
	childController.playersInitialsPoints = self.playersInitialsPoints;
	childController.playersColors = self.playersColors;
	
	childController.choicesPlayers = self.choicesPlayers;
	childController.choicesValues = self.choicesValues;
	
	childController.team1Name = self.team1Name;
	childController.team2Name = self.team2Name;
	
	NSNumber *actualPlayerIndex = [[NSNumber alloc] initWithInt:row];
	
	childController.playerIndex = actualPlayerIndex;
	
	[actualPlayerIndex release];
	
	childController.parentController = self;
    
    [self.navigationController pushViewController:childController animated:YES];
    [childController release];
	
}
@end
