//
//  Class1.m
//  ObjC_POC
//
//  Created by Tripathi, Roopesh on 18/01/16.
//  Copyright (c) 2016 Tripathi, Roopesh. All rights reserved.
//

#import "Class1.h"
@interface Class1 ()

-(void)privateMethodOfClass1;

@end

@implementation Class1


-(void)privateMethodOfClass1{
    
    NSLog(@"privateMethodOfClass1");

    
}

-(void)privateMethod{
    
    NSLog(@"privateMethod");
}

+ (instancetype)class2 {
    
   // NSLog(@"%@", NSStringFromClass([super class]));
    
    return [[super alloc] init];
    
}

+(void)method{
    
     //  [[self class] setMyName:@"Roopesh"];
    
    NSLog(@"Class method got called");
    
    NSLog(@"%@", NSStringFromClass([super class]));
    
}
     
     
-(void)method1{
 
   // [self setMyName:@"Roopesh"];
    
    [[self class] method];
    
}

@end
