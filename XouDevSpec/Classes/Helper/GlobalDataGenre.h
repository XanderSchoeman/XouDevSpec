//
//  GlobalDataGenre.h
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GlobalDataGenre : NSObject {
    NSString *message;
}
@property (nonatomic, retain) NSString *message;
@property NSString *genre;
 
+(GlobalDataGenre*)sharedGlobalData;
 
- (void) mySetMessageFunc;
-(instancetype)initWith:(NSString *)action;
@end

NS_ASSUME_NONNULL_END
