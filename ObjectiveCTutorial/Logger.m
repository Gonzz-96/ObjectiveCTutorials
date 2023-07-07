//
//  Logger.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 07/07/23.
//

#import "Logger.h"

@implementation Logger

- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data
{
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    [incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");

    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"The whole string is @%", string);
}

- (void)connection:(NSURLConnection *)connection
  didFailWithError:(nonnull NSError *)error
{
    NSLog(@"connection failed %@", [error localizedDescription]);
    incomingData = nil;
}

- (void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch!");
}

@end
