//
//  main.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 03/07/23.
//

#import <Foundation/Foundation.h>

int main_old2 (int argc, char const * argv[])
{
    @autoreleasepool {
        NSDate *now = [NSDate now];
        NSDate *tomorrow = [now dateByAddingTimeInterval:(24.0 * 60.0 * 60.0)];
        NSDate *yesterday = [now dateByAddingTimeInterval:(- 24.0 * 60.0 * 60.0)];

        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];

        NSLog(@"There are %lu dates", [dateList count]);

        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);

        // looping the old way
//        NSUInteger dateCount = [dateList count];
//        for (int i = 0; i < dateCount; i++) {
//            NSDate *d = [dateList objectAtIndex:i];
//            NSLog(@"Here is a date: %@", d);
//        }

        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }

        NSMutableArray *mutableList = [NSMutableArray array];
        [mutableList addObject:now];
        [mutableList addObject:tomorrow];
        [mutableList insertObject:yesterday atIndex:0];
        for (NSDate *d in mutableList) {
            NSLog(@"Here is a date: %@", d);
        }
        // remove yesterday
        [mutableList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [dateList objectAtIndex:0]);

        // challenge
        NSString *namesString
                    = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                encoding:NSUTF8StringEncoding
                                                   error:NULL];
        NSString *wordsString
                    = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                encoding:NSUTF8StringEncoding
                                                   error:NULL];

        NSArray *names = [namesString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        NSMutableArray *matchingNames = [NSMutableArray array];

        for (NSString *word in words) {
            NSString *capitalizedWord = [word capitalizedString];
            if ([names containsObject:word] || [names containsObject:capitalizedWord]) {
                [matchingNames insertObject:word atIndex:0];
            }
        }
        for (NSString *matchingName in matchingNames) {
            NSLog(@"%@", matchingName);
        }
    }
    return 0;
}
