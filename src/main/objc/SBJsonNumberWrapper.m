//
//  SBJsonNumberWrapper.m
//  SBJson
//
//  Created by Mike Mattozzi on 5/24/16.
//  Copyright © 2016 Stig Brautaset. All rights reserved.
//

#import "SBJsonNumberWrapper.h"

@implementation SBJsonNumberWrapper

@synthesize number, originalText;

+ (SBJsonNumberWrapper*) numberWrapperFromText:(char *)text withType:(SBJsonNumberType)numberType {
    SBJsonNumberWrapper *numberWrapper = [[SBJsonNumberWrapper alloc] init];
    
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
