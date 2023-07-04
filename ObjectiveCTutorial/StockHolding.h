//
//  StockHolding.h
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 03/07/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StockHolding : NSObject
{
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float)costInDollars;
- (float)valueInDollars;

@end

NS_ASSUME_NONNULL_END
