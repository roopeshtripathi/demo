//
//  MyManager.m
//  ObjC_POC
//
//  Created by Tripathi, Roopesh on 16/01/16.
//  Copyright (c) 2016 Tripathi, Roopesh. All rights reserved.
//

#import "MyManager.h"
//static MyManager *sharedMyManager = nil;

@implementation MyManager



+ (MyManager*)sharedManager
{
    static MyManager *sharedInstance = nil;
    static dispatch_once_t pred ;
    dispatch_once(&pred,
                  ^{
                      sharedInstance = [[super alloc] init];
                  });
    return sharedInstance;
    
}

+ (id)alloc {
    
    return [self sharedManager];
    
}


//+ (id)allocWithZone:(NSZone *)ignore
//{
//    return [self sharedManager];
//}


//
//- (id) copyWithZone:(NSZone *)zone
//{
//    
//    [[self class] alloc];
//    
//    
//    return self;
//}

 // GCD implementation of singleton 
 /*
+ (id)sharedManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [super alloc];
    });
    return sharedMyManager;
}

+ (id)alloc {
    static dispatch_once_t pred ;
    dispatch_once(&pred, ^{
        sharedMyManager = [super alloc];
    });
    return sharedMyManager;
}

- (id)init {
    
    __weak typeof(self) weakSelf = self;
    static dispatch_once_t pred ;
    dispatch_once(&pred, ^{
        static BOOL init = NO;
        if (!init) {
            init = YES;
            typeof(self) strongSelf = weakSelf;
            strongSelf = [super init];
        }
    });
    return weakSelf;
}
*/

/*
+ (id)sharedManager {
    static MyManager *sharedMyManager = nil;
    @synchronized(self) {
        if (sharedMyManager == nil)
            sharedMyManager = [[self alloc] init];
    }
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {

    }
    return self;
}
+(id)alloc {
    
    if (self == [MyManager class]) {
        return [MyManager alloc];
    }
    else {
        return [super alloc];
    }
}

*/

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}

@end
