//
//  objectInstanceVariables.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 04/07/23.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main_old4 (int argc, char const * argv[])
{
    @autoreleasepool {
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];

        for (int i = 0; i < 10; i++) {
            Employee *person = [[Employee alloc] init];

            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];

            [employees addObject:person];
        }

        [executives setObject:[employees objectAtIndex:0] forKey:@"CEO"];
        [executives setObject:[employees objectAtIndex:1] forKey:@"CTO"];

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

        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets"
                                                              ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID"
                                                             ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];

        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];

        NSLog(@"allAssets: %@", allAssets);
        NSLog(@"executives: %@", executives);
        executives = nil;

        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeRecalimed: %@", toBeReclaimed);
        toBeReclaimed = nil;

        NSLog(@"Giving up ownership of array");
        allAssets = nil;
        employees = nil;
    }
    sleep(100);
    return 0;
}
