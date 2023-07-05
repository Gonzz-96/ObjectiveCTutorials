//
//  Asset.h
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 04/07/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property unsigned int resaleValue;

@end

NS_ASSUME_NONNULL_END
