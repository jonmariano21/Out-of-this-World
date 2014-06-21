//
//  JMSpaceDataViewController.h
//  Out of this World
//
//  Created by JONATHAN MARIANO on 6/20/14.
//
//

#import <UIKit/UIKit.h>
#import "JMSpaceObject.h"

@interface JMSpaceDataViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) JMSpaceObject *spaceObject;






@end
