//
//  JMOuterSpaceTableViewController.h
//  Out of this World
//
//  Created by JONATHAN MARIANO on 6/19/14.
//
//

#import <UIKit/UIKit.h>
#import "JMAddSpaceObjectViewController.h"

@interface JMOuterSpaceTableViewController : UITableViewController <JMAddSpaceObjectViewControllerDelegate> //conform to JMAddSpa..

@property (strong, nonatomic) NSMutableArray *planets; //MODEL

@property (strong, nonatomic) NSMutableArray *addedSpaceObjects;

@end
