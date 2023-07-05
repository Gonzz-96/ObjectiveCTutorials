//
//  ForeignStockHolding.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 04/07/23.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    float purchasePriceInLocal = [super purchaseSharePrice];
    return conversionRate * purchasePriceInLocal;
}

- (float)valueInDollars
{
    float valueInLocal = [super currentSharePrice];
    return conversionRate * valueInLocal;
}

@end
