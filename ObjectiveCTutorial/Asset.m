//
//  Asset.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 04/07/23.
//

#import "Asset.h"

@implementation Asset

@synthesize label;
@synthesize resaleValue;

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d>",
            [self label], [self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
