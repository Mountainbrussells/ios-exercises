//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    
    self.arrayRemembered = arrayToRemember;
    
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    
    self.arrayCopied = [arrayToCopy copy];
    
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.floatRemembered = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    
    return self.arrayRemembered;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.arrayCopied;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.floatRemembered;
}

@end