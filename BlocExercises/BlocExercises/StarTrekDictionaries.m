//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    id favDrink = characterDictionary[@"favorite drink"];
    if (favDrink != nil && [favDrink isKindOfClass:[NSString class]]) {
        return favDrink;
    }
    return @"No favorite drink";
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *favDrinks = [[NSMutableArray alloc] init];
    if (charactersArray != nil && [charactersArray[0] isKindOfClass:[NSDictionary class]]) {
        for (NSDictionary *character in charactersArray) {
            NSString *favDrink = character[@"favorite drink"];
            [favDrinks addObject:favDrink];
        }
        // Returning a mutableArray works, I thought it might not.  Why?
        return favDrinks;
    }
    
    return @[];
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    if (characterDictionary != nil && [characterDictionary isKindOfClass:[NSDictionary class]]){
        
        NSMutableDictionary *mutableCharacter = [characterDictionary mutableCopy];
            
        [mutableCharacter setValue:@"Make it so" forKey:@"quote"];
            
        return mutableCharacter;
        
    }
    return @{};
}

@end
