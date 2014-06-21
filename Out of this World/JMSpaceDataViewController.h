//
//  JMSpaceDataViewController.h
//  Out of this World
//
//  Created by JONATHAN MARIANO on 6/20/14.
//
//

#import <UIKit/UIKit.h>
#import "JMSpaceObject.h"

// DataSource --> How our table view looks, how many rows, sections etc
// Delegate --> Responsible for touch events on the table view for example scrolling

@interface JMSpaceDataViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) JMSpaceObject *spaceObject;






@end
