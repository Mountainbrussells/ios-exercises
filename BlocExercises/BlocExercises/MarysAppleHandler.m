//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    NSString *returnString;

    if (dollars  <= 4) {
        returnString = @"get out of my store";
    } else if (dollars == 5) {
        itemToReturn = @"gum";
        returnString = @"have some gum";
    } else if (dollars > 5 && dollars < 1000) {
        itemToReturn = @"apple";
        returnString = @"have an apple";
    } else if (dollars >= 1000 && dollars < 1000000000) {
        itemToReturn = @"Apple computer";
        returnString = @"have an Apple computer";
    } else {
        itemToReturn = @"Big Apple";
        returnString = @"have The Big Apple";
    }
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return returnString;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */

    NSUInteger cost = 24;
    
    cost = (self.getsDiscount) ? cost *= .75 : cost;
    
    return cost;
}

@end
