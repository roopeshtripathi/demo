//
//  Car.m
//  ObjC_POC
//
//  Created by Tripathi, Roopesh on 16/01/16.
//  Copyright © 2016 Tripathi, Roopesh. All rights reserved.
//

#import "Car.h"

@implementation Car

-(void)running:(BOOL)newValue {
    _running = newValue;
}

-(BOOL)getRunning {

    return _running;
}
@end

