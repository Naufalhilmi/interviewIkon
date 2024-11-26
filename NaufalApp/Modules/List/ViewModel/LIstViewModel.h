//
//  LIstViewModel.h
//  NaufalApp
//
//  Created by userbsi on 25/11/24.
//

#import <Foundation/Foundation.h>
#import "ListEntity.h"

@interface LIstViewModel : NSObject

@property (nonatomic, strong) NSArray<ListEntity *> *listEntity;

- (void)fetchData:(void(^)(NSError *error))completion;

@end


