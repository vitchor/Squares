//
//  CellView.h
//  Pool
//
//  Created by Victor Oliveira on 25/01/11.
//  Copyright 2011 Ufscar. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CellView : UITableViewCell {

	IBOutlet UILabel *playerName;
	IBOutlet UILabel *playerNumberOfCells;
	IBOutlet UIImageView *playerInitialsImage;
}

@property (nonatomic,retain) IBOutlet UILabel *playerName;
@property (nonatomic,retain) IBOutlet UILabel *playerNumberOfCells;
@property (nonatomic,retain) IBOutlet UIImageView *playerInitialsImage;

@end
