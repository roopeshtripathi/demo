//
//  Class2.m
//  ObjC_POC
//
//  Created by Tripathi, Roopesh on 18/01/16.
//  Copyright (c) 2016 Tripathi, Roopesh. All rights reserved.
//

#import "Class2.h"

#import "ClassX.h"



@implementation Class2


//-(void)instanceMethod{
//    
//    [self method1];
//}

+(void)method{
    
    NSLog(@"%@", NSStringFromClass([super class]));
  
}
//+ (instancetype)class2 {
//    
//    NSLog(@"%@", NSStringFromClass([super class]));
//    
//    return [[super alloc] init];
//
//}

-(void)method1{
    
    self.oClass = [[Class1 alloc]init];
    
    
    NSString *string1 = @"John";
    NSString *string2 = @"John";
    
    if(string1 == string2){
        NSLog(@"equal");
    }else{
        NSLog(@"Unequal");
    }
    ClassX *classX = [ClassX new];
    
    [classX performSelector:@selector(privateMethodOfClassX) withObject:nil afterDelay:1.0];
    

//    [self performSelector:@selector(privateMethod) withObject:nil afterDelay:1.0];
//    
//    [self performSelector:@selector(privateMethodOfClass1) withObject:nil afterDelay:1.0];

}

@end
