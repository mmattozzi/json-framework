//
//  SBJsonNumberWrapper.h
//  SBJson
//
//  Created by Mike Mattozzi on 5/24/16.
//  Copyright © 2016 Stig Brautaset. All rights reserved.
//

#import <Foundation/Foundation.h>

enum {
    SBJsonNumberTypeLongLong,
    SBJsonNumberTypeUnsignedLongLong,
    SBJsonNumberTypeDecimal
};
typedef NSInteger SBJsonNumberType;

@interface SBJson4NumberWrapper : NSObject

@property (strong) NSNumber *number;
@property (strong) NSString *originalText;

+ (SBJson4NumberWrapper*) numberWrapperFromText:(char *)text withType:(SBJsonNumberType)numberType;

@end
