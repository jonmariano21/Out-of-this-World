//
//  JMSpaceImageViewController.m
//  Out of this World
//
//  Created by JONATHAN MARIANO on 6/20/14.
//
//

#import "JMSpaceImageViewController.h"

@interface JMSpaceImageViewController ()

@end

@implementation JMSpaceImageViewController

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
    
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Jupiter.jpg"] ];
    
    //The content size of our scroll view is the same as the size of our frame of our image view
    //Allows us to scoll the entire image
    self.scrollView.contentSize = self.imageView.frame.size;
    
    //image view on top of our scroll view
    [ self.scrollView addSubview: self.imageView ];
    
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

@end
