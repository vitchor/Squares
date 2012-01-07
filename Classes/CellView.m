//
//  CellView.m
//  Pool
//
//  Created by Victor Oliveira on 25/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import "CellView.h"


@implementation CellView

@synthesize playerName;
@synthesize playerNumberOfCells;
@synthesize playerInitialsImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code.
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state.
}


- (void)dealloc {
	[playerName release];
	[playerNumberOfCells release];
	[playerInitialsImage release];
    [super dealloc];
}


@end
