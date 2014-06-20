//
//  JMSpaceObject.m
//  Out of this World
//
//  Created by JONATHAN MARIANO on 6/19/14.
//
//

#import "JMSpaceObject.h"
#import "AstronomicalData.h"

@implementation JMSpaceObject

-(id)init{
    self = [self initWithData:nil andImage:nil];
    return self;
}

-(id)initWithData: (NSDictionary *)data andImage: (UIImage *)image{//id a pointer to an obj of ANY type
    
    self = [super init];//first do code in the METHOD: init
    
    //set up initializer
    self.name = data[PLANET_NAME];
    self.gravitationalForce = [data[PLANET_GRAVITY] floatValue]; //METHOD floatValue converts wrapped float back to a float
    self.diameter = [data[PLANET_DIAMETER] floatValue];
    self.yearLength = [data[PLANET_YEAR_LENGTH] floatValue];
    self.dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    self.temperature = [data[PLANET_TEMPERATURE] floatValue];
    self.numberOfMoons = [data[PLANET_NUMBER_OF_MOONS] intValue];
    self.nickname = data[PLANET_NICKNAME];
    self.interestFact = data[PLANET_INTERESTING_FACT];
    
    self.spaceImage = image;
    
    return self;
}

@end
