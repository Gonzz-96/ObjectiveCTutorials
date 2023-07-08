//
//  OwnedAppliance.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 07/07/23.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

- (id)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n
{
    self = [super initWithProductName:pn];
    if (self) {
        ownerNames = [[NSMutableSet alloc] init];
        if (n) {
            [ownerNames addObject:n];
        }
    }
    return self;
}

- (void)addOwnerNamesObject:(NSString *)n
{
    [ownerNames addObject:n];
}

- (void)removeOwnerNamesObject:(NSString *)n
{
    [ownerNames removeObject:n];
}

@end
