//
//  main.m
//  ObjectiveCTutorial
//
//  Created by Erick Gonzalo Campos on 03/07/23.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *now = [NSDate date];
        // to see the current date, use %@ formatter
        NSLog(@"The new date lives at %p!", now);

        // sending messages to "now" var
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);

        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);

        // Challange
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1996];
        [comps setMonth:7];
        [comps setDay:13];
        [comps setHour:10];
        [comps setMinute:30];
        [comps setSecond:0];
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        NSLog(@"I've been alive %f seconds since I was born!", [[NSDate date] timeIntervalSinceDate:dateOfBirth]);
    }
    return 0;
}
