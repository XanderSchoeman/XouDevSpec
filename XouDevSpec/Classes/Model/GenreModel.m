//
//  GenreModel.m
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/30.
//

#import "GenreModel.h"

@implementation GenreModel

-(instancetype)initWith:(NSString *)action :(NSString *)adventure :(NSString *)sports :(NSString *)comedy :(NSString *)martialArts :(NSString *)game :(NSString *)military :(NSString *)supernatural :(NSString *)horror :(NSString *)kids :(NSString *)sliceOfLife :(NSString *)romance :(NSString *)school :(NSString *)sciFi :(NSString *)magic :(NSString *)superPower :(NSString *)vampire :(NSString *)drama :(NSString *)fantasy :(NSString *)mystery;
{
    self = [super init];
    if (self) {
        self.action = action;
        self.adventure = adventure;
        self.sports = sports;
        self.comedy = comedy;
        self.martialArts = martialArts;
        self.game = game;
        self.military = military;
        self.supernatural = supernatural;
        self.horror = horror;
        self.kids = kids;
        self.sliceOfLife = sliceOfLife;
        self.romance = romance;
        self.school = school;
        self.sciFi = sciFi;
        self.magic = magic;
        self.superPower = superPower;
        self.vampire = vampire;
        self.drama = drama;
        self.fantasy = fantasy;
        self.mystery = mystery;
    } return self;
}
-(instancetype)initWith:(NSString *)genre;
{
    self = [super init];
    if (self) {
        self.Genre = genre;
    } return self;
    
}

@end
