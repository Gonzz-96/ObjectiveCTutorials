//
//  writingFiles.m
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 07/07/23.
//

#import <Foundation/Foundation.h>

int main_writingFiles (int argc, char const * argv[])
{
    @autoreleasepool {
        // writing
//        NSMutableString *str = [[NSMutableString alloc] init];
//        for (int i = 0; i < 10; i++) {
//            [str appendString:@"Gonz is cool!\n"];
//        }
//
//        NSError *error = nil;
//
//        BOOL success = [str writeToFile:@"/tmp/cool.txt"
//                             atomically:YES
//                               encoding:NSUTF8StringEncoding
//                                  error:&error];
//        if (success) {
//            NSLog(@"done writing /tmp.cool.txt");
//        } else {
//            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
//        }

        // reading
//        NSError *error = nil;
//        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
//                                                        encoding:NSASCIIStringEncoding
//                                                           error:&error];
//
//        if (!str) {
//            NSLog(@"read failed: %@", [error localizedDescription]);
//        } else {
//            NSLog(@"resolv.conf looks like this: %@", str);
//        }

        // using NSData
        NSURL *url = [NSURL URLWithString:
                      @"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];

        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }

        NSLog(@"The file is %lu bytes", [data length]);

        BOOL written = [data writeToFile:@"/tmp/google.png"
                                 options:0
                                   error:&error];
        if (!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            return 1;
        }
        NSLog(@"Success!");

        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk has %lu bytes", [readData length]);
    }
    return 0;
}
