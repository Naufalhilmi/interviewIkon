//
//  ListEntity.m
//  NaufalApp
//
//  Created by userbsi on 25/11/24.
//

#import "ListEntity.h"

@implementation ListEntity

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.userId = [dictionary[@"userId"] intValue];
        self.dataId = [dictionary[@"id"] intValue];
        self.title = dictionary[@"title"];
        self.body = dictionary[@"body"];
    }
    return self;
}



@end
