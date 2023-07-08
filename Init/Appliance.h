//
//  Appliance.h
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 07/07/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Appliance : NSObject  {
    NSString *productName;
    int voltage;
}

@property (copy) NSString *productName;
@property int voltage;

- (id)initWithProductName:(NSString *)pn;

@end

NS_ASSUME_NONNULL_END
