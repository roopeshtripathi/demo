//
//  VC2.m
//  ObjC_POC
//
//  Created by Tripathi, Roopesh on 31/12/15.
//  Copyright (c) 2015 Tripathi, Roopesh. All rights reserved.
//

#import "VC2.h"
#import "ViewController.h"
@interface VC2 ()

@end

@implementation VC2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ViewController *vc = [ViewController new];
    
    NSLog(@"IN VC2 ");
    
    NSLog(@"name %@",[vc valueForKey:@"name"]);
    
   // [self setValue:@"Roopesh" forKey:@"name"];
  //  Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
