//
//  GlobalDataGenre.m
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/30.
//

#import "GlobalDataGenre.h"

@implementation GlobalDataGenre
@synthesize message;
static GlobalDataGenre *sharedGlobalData = nil;

+ (GlobalDataGenre*)sharedGlobalData {
    if (sharedGlobalData == nil) {
        sharedGlobalData = [[super allocWithZone:NULL] init];
 
    sharedGlobalData.message = @"";
    }
    return sharedGlobalData;
}

+ (id)allocWithZone:(NSZone *)zone {
    @synchronized(self)
    {
        if (sharedGlobalData == nil)
        {
            sharedGlobalData = [super allocWithZone:zone];
            return sharedGlobalData;
        }
    }
    return nil;
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (void)mySetMessageFunc {
    self.message = self.genre;
}

-(instancetype)initWith:(NSString *)genre;
{
    self = [super init];
    if (self) {
        self.genre = genre;
    } return self;
    
}
@end
