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
    
    self.imageView = [ [UIImageView alloc] initWithImage: self.spaceObject.spaceImage ];
    
    //The content size of our scroll view is the same as the size of our frame of our image view
    //Allows us to scoll the entire image
    self.scrollView.contentSize = self.imageView.frame.size;
    
    //image view on top of our scroll view
    [ self.scrollView addSubview: self.imageView ];
    
    //set the delegate property of the scrollView equal to self
    self.scrollView.delegate = self;
    
    //max and min must be different for zoom to work
    self.scrollView.maximumZoomScale = 2.0;
    self.scrollView.minimumZoomScale = 0.5;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    
    
    return self.imageView;
    
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
