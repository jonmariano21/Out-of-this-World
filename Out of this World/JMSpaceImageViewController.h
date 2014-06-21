//
//  JMSpaceImageViewController.h
//  Out of this World
//
//  Created by JONATHAN MARIANO on 6/20/14.
//
//

#import <UIKit/UIKit.h>
#import "JMSpaceObject.h"

@interface JMSpaceImageViewController : UIViewController <UIScrollViewDelegate> //Conform to delegate


@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) UIImageView *imageView;

@property (strong, nonatomic) JMSpaceObject *spaceObject;


@end
