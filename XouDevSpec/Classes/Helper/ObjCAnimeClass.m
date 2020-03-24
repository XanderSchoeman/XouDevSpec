//
//  ObjCAnimeClass.m
//  XouTube
//
//  Created by Xander Schoeman on 2020/03/22.
//  Copyright © 2020 Xander Schoeman. All rights reserved.
//

#import "ObjCAnimeClass.h"
@implementation ObjCAnimeClass


-(instancetype)initWith:(NSString *)mal_id :(NSString *)url :(NSString *)image_url :(NSString *)title :(NSString *)airing :(NSString *)synopsis :(NSString *)type :(NSString *)episodes :(NSString *)score :(NSString *)start_date :(NSString *)end_date :(NSString *)members :(NSString *)rated;
{
    self = [super init];
    if (self) {
        self.mal_id = mal_id;
        self.url = url;
        self.image_url = image_url;
        self.title = title;
        self.airing = airing;
        self.synopsis = synopsis;
        self.type = type;
        self.episodes = episodes;
        self.score = score;
        self.start_date = start_date;
        self.end_date = end_date;
        self.members = members;
        self.rated = rated;
    } return self;
}
- (NSString *)AnimeInfoString{
    return [NSString stringWithFormat:@"-%@- \nEpisodes: %@ | Score: %@",self.title , self.episodes , self.score];
}
//TODO

@end

