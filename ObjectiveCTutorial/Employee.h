//
//  Employee.h
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 04/07/23.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

NS_ASSUME_NONNULL_BEGIN

@interface Employee : Person
{
    int employeeID;
    NSMutableSet *assets;
}

@property int employeeID;

- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end

NS_ASSUME_NONNULL_END
