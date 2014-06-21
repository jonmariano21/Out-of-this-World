//
//  JMAddSpaceObjectViewController.h
//  Out of this World
//
//  Created by JONATHAN MARIANO on 6/21/14.
//
//

#import <UIKit/UIKit.h>
#import "JMSpaceObject.h"

// Use Protocol inorder to send info from JMAddSpaceObjectViewController back to JMOuterSpaceTableViewController when we add a new planet

// Create PROTOCOL
@protocol JMAddSpaceObjectViewControllerDelegate <NSObject>

@required //if another Class conforms to JMAddSpaceOb...Delegate that class is required to implement the following methods

//METHODS of our protocol that will be implemented in JMOuterSpaceTableViewController.m
-(void)addSpaceObject: (JMSpaceObject *)spaceObject;
-(void)didCancel;

@end //end our protocol


@interface JMAddSpaceObjectViewController : UIViewController

/*
 * NOTE: When creating delegate properties its important to declare as weak
 * in order to properly DEALLOCATE objs
 */
@property (weak, nonatomic) id <JMAddSpaceObjectViewControllerDelegate> delegate; //weak to avoid retain cycles

//Text Fields
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *nicknameTextField;
@property (strong, nonatomic) IBOutlet UITextField *diameterTextField;
@property (strong, nonatomic) IBOutlet UITextField *temperatureTextField;
@property (strong, nonatomic) IBOutlet UITextField *numberOfMoonsTextField;
@property (strong, nonatomic) IBOutlet UITextField *interestingFactTextField;



//Buttons
- (IBAction)cancelButtonPressed:(UIButton *)sender;
- (IBAction)addButtonPressed:(UIButton *)sender;
@end
