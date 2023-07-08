//
//  Appliance.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 07/07/23.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

@implementation Appliance

@synthesize productName;
@synthesize voltage;

- (id)init
{
    return [self initWithProductName:@"Unkown"];
}

- (id)initWithProductName:(NSString *)pn
{
    self = [super init];
    if (self) {
        [self setProductName:pn];
        [self setVoltage:120];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts", productName, voltage];
}

@end
