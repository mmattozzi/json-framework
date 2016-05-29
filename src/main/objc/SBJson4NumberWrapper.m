//
//  SBJsonNumberWrapper.m
//  SBJson
//
//  Created by Mike Mattozzi on 5/24/16.
//  Copyright © 2016 Stig Brautaset. All rights reserved.
//

#import "SBJson4NumberWrapper.h"

@implementation SBJson4NumberWrapper

@synthesize number, originalText;

+ (SBJson4NumberWrapper*) numberWrapperFromText:(char *)text withType:(SBJsonNumberType)numberType {
    SBJson4NumberWrapper *numberWrapper = [[SBJson4NumberWrapper alloc] init];
    
    char *endPtr = text;
    
    if (numberType == SBJsonNumberTypeLongLong) {
        numberWrapper.number = @(strtoll(text, &endPtr, 10));
    } else if (numberType == SBJsonNumberTypeUnsignedLongLong) {
        numberWrapper.number = @(strtoull(text, &endPtr, 10));
    } else if (numberType == SBJsonNumberTypeDecimal) {
        numberWrapper.number = @(strtod(text, &endPtr));
    }
    
    numberWrapper.originalText = [[NSString alloc] initWithBytes:text length:(endPtr - text) encoding:NSUTF8StringEncoding];
    
    return numberWrapper;
}

@end
