//
//  MyManagerSubClass.m
//  ObjC_POC
//
//  Created by Tripathi, Roopesh on 30/01/16.
//  Copyright (c) 2016 Tripathi, Roopesh. All rights reserved.
//

#import "MyManagerSubClass.h"

@implementation MyManagerSubClass


+(MyManagerSubClass *)printSingletonObject{
    
    return [MyManagerSubClass sharedManager];
    
}
@end
