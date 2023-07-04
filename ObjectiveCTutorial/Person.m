//
//  Person.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 03/07/23.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters;
@synthesize weightInKilos;

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
