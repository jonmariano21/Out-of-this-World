//
//  JMAddSpaceObjectViewController.m
//  Out of this World
//
//  Created by JONATHAN MARIANO on 6/21/14.
//
//

#import "JMAddSpaceObjectViewController.h"

@interface JMAddSpaceObjectViewController ()

@end

@implementation JMAddSpaceObjectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *orionImage = [UIImage imageNamed:@"Orion.jpg"];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:orionImage];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    
    [self.delegate didCancel];
    
}

- (IBAction)addButtonPressed:(UIButton *)sender {
    
    JMSpaceObject *newSpaceObject = [self returnNewSpaceObject];
    [self.delegate addSpaceObject: newSpaceObject];
}


//HELPER
-(JMSpaceObject *)returnNewSpaceObject{
    
    JMSpaceObject *addedSpaceObject = [[JMSpaceObject alloc] init];
    
    addedSpaceObject.name = self.nameTextField.text;
    addedSpaceObject.nickname = self.nicknameTextField.text;
    addedSpaceObject.diameter = [self.diameterTextField.text floatValue];//Converts input of text field to a float
    addedSpaceObject.temperature = [self.temperatureTextField.text floatValue];
    addedSpaceObject.numberOfMoons = [self.numberOfMoonsTextField.text intValue];//Converts input of text field to a int
    addedSpaceObject.interestFact = self.interestingFactTextField.text;
    
    addedSpaceObject.spaceImage = [UIImage imageNamed:@"EinsteinRing.jpg"];
    
    return addedSpaceObject;
                                       
}

@end
