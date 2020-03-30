//
//  GenreModel.h
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GenreModel : NSObject
-(instancetype)initWith:(NSString *)action :(NSString *)adventure :(NSString *)sports :(NSString *)comedy :(NSString *)martialArts :(NSString *)game :(NSString *)military :(NSString *)supernatural :(NSString *)horror :(NSString *)kids :(NSString *)sliceOfLife :(NSString *)romance :(NSString *)school :(NSString *)sciFi :(NSString *)magic :(NSString *)superPower :(NSString *)vampire :(NSString *)drama :(NSString *)fantasy :(NSString *)mystery;
-(instancetype)initWith:(NSString *)action;

@property NSString *action;
@property NSString *adventure;
@property NSString *sports;
@property NSString *comedy;
@property NSString *martialArts;
@property NSString *game;
@property NSString *military;
@property NSString *supernatural;
@property NSString *horror;
@property NSString *kids;
@property NSString *sliceOfLife;
@property NSString *romance;
@property NSString *school;
@property NSString *sciFi;
@property NSString *magic;
@property NSString *superPower;
@property NSString *vampire;
@property NSString *drama;
@property NSString *fantasy;
@property NSString *mystery;
@property NSString *Genre;
@end

NS_ASSUME_NONNULL_END
