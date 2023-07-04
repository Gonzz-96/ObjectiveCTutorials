//
//  Person.h
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 03/07/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

@property float heightInMeters;
@property int weightInKilos;

- (float)bodyMassIndex;
@end

NS_ASSUME_NONNULL_END
