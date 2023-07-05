//
//  objectInstanceVariables.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 04/07/23.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main (int argc, char const * argv[])
{
    @autoreleasepool {
        NSMutableArray *employees = [[NSMutableArray alloc] init];

        for (int i = 0; i < 10; i++) {
            Employee *person = [[Employee alloc] init];

            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];

            [employees addObject:person];
        }

        NSMutableArray *allAssets = [NSMutableArray array];

        for (int i = 0; i < 10; i++) {
            Asset *asset = [[Asset alloc] init];

            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];

            NSUInteger randomIndex = random() % [employees count];

            Employee *randomEmployee = [employees objectAtIndex:randomIndex];

            [randomEmployee addAssetsObject:asset];
            [allAssets addObject:asset];
        }

        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"allAssets: %@", allAssets);
        NSLog(@"Giving up ownership of array");
        allAssets = nil;
        employees = nil;
    }
    sleep(100);
    return 0;
}
