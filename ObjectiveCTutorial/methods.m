//
//  methods.m
//  ObjectiveCTutorial
//
//  Created by Erick Gonzalo Campos on 03/07/23.
//

#import <Foundation/Foundation.h>

@interface MyType:NSObject

- (float) divideNumberByTwo:(float)dividend;

@end

@implementation MyType

- (float) divideNumberByTwo:(float)dividend
{
    float divisor = 2.0;
    float quotient = dividend / divisor;
    return quotient;
}

@end
