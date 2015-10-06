//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    BOOL stringsAreEqual = [string1 isEqualToString:string2];
    
    if (stringsAreEqual) {
        return true;
    } else {
        return false;
    }
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    BOOL numbersAreEqual = [number1 isEqual:number2];
    
    if (numbersAreEqual)
    {
        return true;
    } else
    {
        return false;
    }
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    if (integer1 > integer2) {
        return true;
    } else {
        return false;
    }
}

@end
