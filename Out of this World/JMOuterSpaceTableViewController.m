//
//  JMOuterSpaceTableViewController.m
//  Out of this World
//
//  Created by JONATHAN MARIANO on 6/19/14.
//
//

#import "JMOuterSpaceTableViewController.h"
#import "AstronomicalData.h"
#import "JMSpaceObject.h"
#import "JMSpaceImageViewController.h"

@interface JMOuterSpaceTableViewController ()

@end

@implementation JMOuterSpaceTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    self.planets = [[NSMutableArray alloc] init];
    
    //Create a loop to iterate through all planets
    for( NSMutableDictionary *planetData in [AstronomicalData allKnownPlanets]){ //Access array of dictionaries from AstronomicalData
        
        NSString *imageName = [ NSString stringWithFormat:@"%@.jpg", planetData[PLANET_NAME] ];
        
        JMSpaceObject *planet = [ [JMSpaceObject alloc] initWithData:planetData andImage:[UIImage imageNamed:imageName] ];
        
        [self.planets addObject:planet];
        
        
    }//end for loop
    
    
//    NSString *planet1 = @"Mercury";
//    NSString *planet2 = @"Venus";
//    NSString *planet3 = @"Earth";
//    NSString *planet4 = @"Mars";
//    NSString *planet5 = @"Jupiter";
//    NSString *planet6 = @"Saturn";
//    NSString *planet7 = @"Uranus";
//    NSString *planet8 = @"Neptune";
    
    
    

    // Add planets to ARRAY
//    [self.planets addObject:planet1];
//    [self.planets addObject:planet2];
//    [self.planets addObject:planet3];
//    [self.planets addObject:planet4];
//    [self.planets addObject:planet5];
//    [self.planets addObject:planet6];
//    [self.planets addObject:planet7];
//    [self.planets addObject:planet8];
    
//    self.planets = [[NSMutableArray alloc] initWithObjects:planet1,planet2,planet3,planet4,planet5,planet6,planet7,planet8, nil];

    

// DICTIONARY
//    NSMutableDictionary *myDictionary = [[NSMutableDictionary alloc] init];
//    NSString *firstColor = @"Red";
//    [myDictionary setObject: firstColor forKey:@"firetruck color"];
//    [myDictionary setObject:@"blue" forKey:@"ocean color"];
//    [myDictionary setObject:@"yellow" forKey:@"star color"];
//    
//    NSLog(@"%@", myDictionary);
//    
//    NSString *blueString = [myDictionary objectForKey:@"ocean color"];
//    NSLog(@"%@", blueString);
    

    // Wrap primitive w/in an OBJ inorder to use in an Array or a Dictionary
    NSNumber *myInt = [NSNumber numberWithInt:5];
    NSLog(@"%@", myInt);
    
    NSNumber *myFloat = [NSNumber numberWithFloat:3.14];
    NSLog(@"%@", myFloat);


    
    
    

}//end viewDidLoad


// METHOD: prepareForSeque is automatically called when we segue to a new view controller
// id is a pointer to ANY obj
// sender is the obj that triggered the segue
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSLog(@"%@", sender);
    
    //Check to make sure sender is of type UITableViewCell
    if( [sender isKindOfClass:[UITableViewCell class] ]){
        
        //Test to make sure that the view controller that were going to is the JMSpaceImageViewController Class
        if( [segue.destinationViewController isKindOfClass:[JMSpaceImageViewController class] ]){
            
            JMSpaceImageViewController  *nextViewController = segue.destinationViewController;
            
            //What spaceObject is currently on my UITableViewCell
            //Where I am on my table view using NSIndexPath
            NSIndexPath *path = [self.tableView indexPathForCell:sender];
            
            //Use path to index into or array of planets
            JMSpaceObject *selectedObject = self.planets[ path.row ];
            
            //Set next view controller property
            nextViewController.spaceObject = selectedObject;
            
            
            
            
        }
        
    }
    
}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    
    
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    return [self.planets count]; //returns number of planets in array

    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
//    cell.textLabel.text = [self.planets objectAtIndex:indexPath.row];
//    
//    if(indexPath.section == 0){
//        cell.backgroundColor = [UIColor redColor];
//    }else{
//        cell.backgroundColor = [UIColor blueColor];
//    }
    
    JMSpaceObject *planet = [ self.planets objectAtIndex: indexPath.row];
    cell.textLabel.text = planet.name;
    cell.detailTextLabel.text = planet.nickname;
    cell.imageView.image = planet.spaceImage;
    
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.detailTextLabel.textColor = [UIColor colorWithWhite:0.5 alpha:1.0];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
