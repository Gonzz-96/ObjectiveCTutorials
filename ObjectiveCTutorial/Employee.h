//
//  Employee.h
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 04/07/23.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee : Person
{
    int employeeID;
}

@property int employeeID;
@end

NS_ASSUME_NONNULL_END
