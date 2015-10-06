//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSArray *returnArray = [characterString componentsSeparatedByString:@";"];
    
    return returnArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *returnString = [characterArray componentsJoinedByString:@";"];
    return returnString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *returnArray = [[NSMutableArray alloc] initWithArray:characterArray];
    
    NSSortDescriptor *sortDesc = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [returnArray sortUsingDescriptors:@[sortDesc]];
    
    
    return returnArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    NSMutableArray *mutableCharacterArray = [[NSMutableArray alloc] initWithArray:characterArray];
   
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    
    [mutableCharacterArray filterUsingPredicate:containsWorf];
    
    if (mutableCharacterArray.count > 0) {
        return  TRUE;
    }
    
    
    return NO;
}

@end
