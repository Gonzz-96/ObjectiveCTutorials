//
//  StockHolding.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 03/07/23.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice;
@synthesize currentSharePrice;
@synthesize numberOfShares;

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"purchasePrice=%f, currentPrice=%f, numberOfShares=%d",
             [self purchaseSharePrice],
             [self currentSharePrice],
             [self numberOfShares]];
}

@end
