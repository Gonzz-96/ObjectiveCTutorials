//
//  main.m
//  ObjectiveCTutorial
//
//  Created by Erick Gonzalo Campos on 03/07/23.
//

#import <Foundation/Foundation.h>

int mainOld (int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *now = [[NSDate alloc] init];
        // to see the current date, use %@ formatter
        NSLog(@"The new date lives at %p!", now);

        // sending messages to "now" var
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);

        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);

        // Challange
//        NSDateComponents *comps = [[NSDateComponents alloc] init];
//        [comps setYear:1996];
//        [comps setMonth:7];
//        [comps setDay:13];
//        [comps setHour:10];
//        [comps setMinute:30];
//        [comps setSecond:0];
//        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
//        NSDate *dateOfBirth = [g dateFromComponents:comps];
//        NSLog(@"I've been alive %f seconds since I was born!", [[NSDate date] timeIntervalSinceDate:dateOfBirth]);

        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                        inUnit:NSCalendarUnitMonth
                                       forDate:now];
        NSLog(@"This is day %lu of the month", day);

        NSUInteger hour = [cal ordinalityOfUnit:NSCalendarUnitHour
                                         inUnit:NSCalendarUnitYear
                                        forDate:now];
        NSLog(@"This is hour %lu of the year", hour);

        // Challenge 2
        NSTimeZone *currentTimeZone = [NSTimeZone systemTimeZone];
        if ([currentTimeZone isDaylightSavingTime]) {
            NSLog(@"It's daylight saving time! :)");
        } else {
            NSLog(@"It's not daylight saving time! :(");
        }

        // Chapter 14: NSString
        NSString *lament = @"Why me!?";
        NSString *x = [NSString stringWithFormat:@"The best number is %d", 5];

        NSUInteger charCount = [x length];

        if ([lament isEqual:x]) {
            NSLog(@"%@ and %@ are equal", lament, x);
        }

        // Challenge
        NSString *currentHostName = [[NSHost currentHost] localizedName];
        NSLog(@"The name of the host is %@.", currentHostName);
    }
    return 0;
}
