//
//  Employee.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 04/07/23.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

// overriding Person method
- (float)bodyMassIndex
{
    float normalBmi = [super bodyMassIndex];
    return normalBmi * 0.9;
}

@end
