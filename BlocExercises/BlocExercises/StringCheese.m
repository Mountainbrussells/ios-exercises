//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *returnString = [NSString stringWithFormat:@"My favorite cheese is %@", cheeseName];
    
    return returnString;
    
//    NSMutableString *myFavoriteCheese = [@"My favorite cheese is Name." mutableCopy];
//    NSRange nameRange = [myFavoriteCheese rangeOfString:@"Name"];
//    [myFavoriteCheese replaceCharactersInRange:nameRange withString:cheeseName];
//    return myFavoriteCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSMutableString *output = [cheeseName mutableCopy];
    
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        
        [output replaceCharactersInRange:cheeseRange withString:@""];
        
        
        
    } else {
        NSLog(@"No change needed.");
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return output;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSMutableString *output = [@"1 cheese" mutableCopy];
    
    if (cheeseCount == 1) {
        NSLog(@"There is only 1 cheese.");
    } else {
       
        output = [NSMutableString stringWithFormat:@"%lu cheeses", cheeseCount];
        
        
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return output;
}

@end
