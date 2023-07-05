//
//  Asset.h
//  ObjectiveCTutorial
//
//  Created by Gonzalo Campos on 04/07/23.
//

#import <Foundation/Foundation.h>
@class Employee;

NS_ASSUME_NONNULL_BEGIN

@interface Asset : NSObject
{
    NSString *label;
    __weak Employee *holder;
    unsigned int resaleValue;
}

@property (strong) NSString *label;

// making this property a strong reference, will provoke memory leaks,
// because the employee object cannot be deallocated due to a reference
// from multiple asset objects, and vice versa. A wak reference does not
// imply ownership, hence the reference count won't increase
// so, avoid:
//
//  @property (strong) Employee *holder;
//
@property (weak) Employee *holder;
@property unsigned int resaleValue;

@end

NS_ASSUME_NONNULL_END
