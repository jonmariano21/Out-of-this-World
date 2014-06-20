//
//  JMSpaceObject.h
//  Out of this World
//
//  Created by JONATHAN MARIANO on 6/19/14.
//
//

#import <Foundation/Foundation.h>

@interface JMSpaceObject : NSObject

// From AstronomicalData Class
@property (strong, nonatomic) NSString *name;
@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float dayLength;
@property (nonatomic) float yearLength;
@property (nonatomic) float temperature;
@property (nonatomic) int numberOfMoons;
@property (strong, nonatomic) NSString *nickname;
@property (strong, nonatomic) NSString *interestFact;


@property (strong,nonatomic) UIImage *spaceImage;


-(id)initWithData: (NSDictionary *)data andImage: (UIImage *)image;//id a pointer to an obj of ANY type


@end
