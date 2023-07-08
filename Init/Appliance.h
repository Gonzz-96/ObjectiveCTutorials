//
//  Appliance.h
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 07/07/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Appliance : NSObject {
    // when using @property, it's not needed to declare the properties
    // but it's a good practice to declare them as docs for others
    NSString *productName;
    int voltage;
}

@property (copy, nonatomic) NSString *productName;
@property (nonatomic) int voltage;

- (id)initWithProductName:(NSString *)pn;

@end

NS_ASSUME_NONNULL_END
