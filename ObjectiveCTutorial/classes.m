//
//  classes.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 03/07/23.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "StockHolding.h"

int main (int argc, char const * argv[])
{
    @autoreleasepool {
        Person *person = [[Person alloc] init];

        [person setWeightInKilos:99];
        [person setHeightInMeters:1.82];

        float bmi = [person bodyMassIndex];
//        NSLog(@"Person (%d, %f) has a BMI of %f",
//              [person weightInKilos], [person heightInMeters], bmi);

        // challenge
        StockHolding *stock1 = [[StockHolding alloc] init];
        StockHolding *stock2 = [[StockHolding alloc] init];
        StockHolding *stock3 = [[StockHolding alloc] init];

        [stock1 setPurchaseSharePrice:90.0];
        [stock1 setCurrentSharePrice:95.0];
        [stock1 setNumberOfShares:10];

        [stock2 setPurchaseSharePrice:90.0];
        [stock2 setCurrentSharePrice:96.0];
        [stock2 setNumberOfShares:10];

        [stock3 setPurchaseSharePrice:90.0];
        [stock3 setCurrentSharePrice:97.0];
        [stock3 setNumberOfShares:10];

        NSArray *stocks = [NSArray arrayWithObjects:stock1, stock2, stock3, nil];

        for (StockHolding *stock in stocks) {
            NSLog(@"%@", stock);
        }
    }

    return 0;
}
