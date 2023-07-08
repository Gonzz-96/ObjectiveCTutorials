//
//  propertiesList.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 07/07/23.
//

#import <Foundation/Foundation.h>

int main_propertiesList (int argc, char const *argv[])
{
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        NSMutableDictionary *stock;

        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];

        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stocks addObject:stock];

        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];

        // reading
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];

        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@",
                  [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
    }
    return 0;
}
