//
//  ObjCAnimeClass.h
//  XouTube
//
//  Created by Xander Schoeman on 2020/03/22.
//  Copyright © 2020 Xander Schoeman. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface ObjCAnimeClass : NSObject
-(instancetype)initWith:(NSString *)mal_id :(NSString *)url :(NSString *)image_url :(NSString *)title :(NSString *)airing :(NSString *)synopsis :(NSString *)type :(NSString *)episodes :(NSString *)score :(NSString *)start_date :(NSString *)end_date :(NSString *)members :(NSString *)rated;
@property NSString *mal_id;
@property NSString *url;
@property NSString *image_url;
@property NSString *title;
@property NSString *airing;
@property NSString *synopsis;
@property NSString *type;
@property NSString *episodes;
@property NSString *score;
@property NSString *start_date;
@property NSString *end_date;
@property NSString *members;
@property NSString *rated;
-(NSString*)AnimeInfoString;
@end
NS_ASSUME_NONNULL_END
//TODO
