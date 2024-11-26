//
//  LIstViewModel.m
//  NaufalApp
//
//  Created by userbsi on 25/11/24.
//

#import "LIstViewModel.h"

@implementation LIstViewModel

- (void)fetchData:(void (^)(NSError *))completion {
    NSString *urlString = @"https://jsonplaceholder.typicode.com/posts";
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error){
            completion(error);
            return;
        }
        
        NSError *jsonError;
        NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        if(jsonError){
            completion(jsonError);
            return;
        }
        NSMutableArray *responses = [NSMutableArray array];
        for (NSDictionary *dict in jsonArray) {
            ListEntity *response = [[ListEntity alloc] initWithDictionary:dict];
            [responses addObject:response];
        }
        
        self.listEntity = [responses copy];
        if (completion) {
            completion(nil);
        }
    }];
    [task resume];
}

@end
