//
//  main.m
//  ObjectiveCTutorial
//
//  Created by Erick Gonzalo Campos on 03/07/23.
//

#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
- (void)sampleMethod;
@end

@implementation SampleClass

- (void)sampleMethod {
    NSLog(@"Hello, world!");
}

@end


int main (int argc, char * argv[])
{
    @autoreleasepool {
        NSLog(@"Programming is fun!");

        SampleClass * sampleClass = [[SampleClass alloc] init];
        [sampleClass sampleMethod];
    }
//    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
//    [pool drain];
    return 0;
}
