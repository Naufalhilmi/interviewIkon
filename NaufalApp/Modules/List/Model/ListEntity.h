//
//  ListEntity.h
//  NaufalApp
//
//  Created by userbsi on 25/11/24.
//

#import <Foundation/Foundation.h>



@interface ListEntity : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *body;
@property (nonatomic, assign) NSInteger dataId;
@property (nonatomic, assign) NSInteger userId;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

