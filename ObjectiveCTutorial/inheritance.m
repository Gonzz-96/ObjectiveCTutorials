//
//  inheritance.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 04/07/23.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main_old3 (int argc, char const * argv[])
{
    @autoreleasepool {
        Employee * person = [[Employee alloc] init];

        [person setWeightInKilos:99];
        [person setHeightInMeters:1.82];
        [person setEmployeeID:15];

        float bmi = [person bodyMassIndex];
        NSLog(@"Employee %d has a BMI of %f", [person employeeID], [person bodyMassIndex]);
    }
    return 0;
}
