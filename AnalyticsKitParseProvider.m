//
//  AnalyticsKitParseProvider.h
//
//  Created by Bradley David Bergeron on 10/02/2013.
//  Copyright (c) 2013 Bradley David Bergeron. All rights reserved.
//

#import <Parse/Parse.h>
#import "AnalyticsKitParseProvider.h"

@implementation AnalyticsKitParseProvider

-(id<AnalyticsKitProvider>)initWithApplicationId:(NSString *)applicationId clientKey:(NSString *)clientKey {
    self = [super init];
    if (self) {
        [Parse setApplicationId:applicationId clientKey:clientKey];
    }
    return self;
}

-(void)applicationWillEnterForeground {}
-(void)applicationDidEnterBackground {}
-(void)applicationWillTerminate {}

-(void)uncaughtException:(NSException *)exception {}

-(void)logScreen:(NSString *)screenName {}

-(void)logEvent:(NSString *)event {}

-(void)logEvent:(NSString *)event withProperties:(NSDictionary *)dict {}

-(void)logEvent:(NSString *)event withProperty:(NSString *)key andValue:(NSString *)value {}

- (void)logEvent:(NSString *)eventName timed:(BOOL)timed{}

- (void)logEvent:(NSString *)eventName withProperties:(NSDictionary *)dict timed:(BOOL)timed{}

-(void)endTimedEvent:(NSString *)eventName withProperties:(NSDictionary *)dict{}

-(void)logError:(NSString *)name message:(NSString *)message exception:(NSException *)exception {}

-(void)logError:(NSString *)name message:(NSString *)message error:(NSError *)error {}

@end
