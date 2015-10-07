//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter


- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString *returnString = [NSMutableString stringWithFormat:@""];
    
//    if (number < otherNumber) {
//        for (NSInteger n = number; n <= otherNumber; n++) {
//            NSMutableString *numberString = [NSMutableString stringWithFormat:@"%ld", (long)n];
//            [returnString appendString:numberString];
//        }
//    } else if (number > otherNumber) {
//        for (NSInteger n = otherNumber; n <= number; n++) {
//            NSMutableString *numberString = [NSMutableString stringWithFormat:@"%ld", (long)n];
//            [returnString appendString:numberString];
//        }
//    } else {
//        returnString = [NSMutableString stringWithFormat:@"%ld", (long)number];
//    }
    
    while (number <= otherNumber) {
        for (NSInteger n = number; n <= otherNumber; n++) {
            NSMutableString *numberString = [NSMutableString stringWithFormat:@"%ld", (long)n];
            [returnString appendString:numberString];
        }
        return returnString;
    }
    
    for (NSInteger n = otherNumber; n <= number; n++) {
        NSMutableString *numberString = [NSMutableString stringWithFormat:@"%ld", (long)n];
        [returnString appendString:numberString];
    }
    
    return returnString;
}

@end
