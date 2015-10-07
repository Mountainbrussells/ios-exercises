//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSNumber *returnNumber = [[NSNumber alloc] init];
    int intNumber = [number intValue];
    returnNumber = [NSNumber numberWithInt:(intNumber * 2)];
    
    return returnNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *returnArray = [[NSMutableArray alloc] init];
    if (number < otherNumber) {
        
        for (NSInteger i = number; i <= otherNumber; i++) {
            NSNumber *addedNumber = [NSNumber numberWithInt:i];
            [returnArray addObject:addedNumber];
            
        }
        return returnArray;
    } else if (number > otherNumber){
        for (NSInteger i = otherNumber; i <= number; i++) {
            NSNumber *addedNumber = [NSNumber numberWithInt:i];
            [returnArray addObject:addedNumber];
            
        }
        return returnArray;
    }
    NSNumber *addedNumber = [NSNumber numberWithInt:number];
    [returnArray addObject:addedNumber];
    
    
    return returnArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSMutableArray *mutableArrayOfNumbers = [[NSMutableArray alloc] initWithArray:arrayOfNumbers];
    
    NSSortDescriptor *sortDesc = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    
    [mutableArrayOfNumbers sortUsingDescriptors:@[sortDesc]];
    NSInteger returnNumber = [mutableArrayOfNumbers[0] integerValue];
    
    
    return returnNumber;
}

@end
