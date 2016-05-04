//
//  main.m
//  ObjC_POC
//
//  Created by Tripathi, Roopesh on 26/12/15.
//  Copyright (c) 2015 Tripathi, Roopesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Class1.h"
#import "Class2.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        //[Class1 method];
        //NSLog(@"%@", [[o class] description]);
        
        Class2 *obj = [Class2 new];
        [obj method1];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
