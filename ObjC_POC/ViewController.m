//
//  ViewController.m
//  ObjC_POC
//
//  Created by Tripathi, Roopesh on 26/12/15.
//  Copyright (c) 2015 Tripathi, Roopesh. All rights reserved.
//

#import "ViewController.h"
#import "VC2.h"
#import "MyManager.h"
#import "MyManagerSubClass.h"
#import "Car.h"


@interface ViewController ()
@property(nonatomic,copy)NSString *name;

@end

@implementation ViewController


//bool findPair(int arr[], int size, int n)
-(BOOL)findPair :(NSMutableArray *)arr  size:(int)size  diffrence:(int)n
{
    // Initialize positions of two elements
    int i = 0;
    int j = 1;
    
    // Search for a pair
    while (i<size && j<size)
    {
        if (i != j && [arr[j] integerValue]-[arr[i] integerValue] == n)
        {
            printf("Pair Found: (%ld, %ld)", (long)[arr[i] integerValue], (long)[arr[j] integerValue]);
            return true;
        }
        else if ([arr[j] integerValue]-[arr[i] integerValue] < n)
            j++;
        else
            i++;
    }
    
    printf("No such pair");
    return false;
}

-(int)volume :(int)length heigh:(int)height breadth:(int)breadth{
    
    return length*height*breadth;
    
}

//-(int)volume :(int)length heigh:(int)height breadth:(float)breadth{
//    
//    return length*height*breadth;
//    
//}



- (void)viewDidLoad {
   
    
    [super viewDidLoad];
    
    NSSet *japaneseMakes = [NSSet setWithObjects:@"Honda", @"Nissan",
                            @"Mitsubishi", @"Toyota", nil];
    NSSet *johnsFavoriteMakes = [NSSet setWithObjects:@"Honda", nil];
    NSSet *marysFavoriteMakes = [NSSet setWithObjects:@"Toyota",
                                 @"Alfa Romeo", nil];
    
    if ([johnsFavoriteMakes isEqualToSet:japaneseMakes]) {
        NSLog(@"John likes all the Japanese auto makers and no others");
    }
    
    [self gcd_globalQ_sync];
    
    self.mysalaryArray = [NSMutableArray new];
    
    self.mynameArray = [NSMutableArray new];
    self.mynameArray1 = [NSMutableArray new];

    self.isFlag = TRUE;
    
    
    NSLog(@" Self  = %p",self);

    NSLog(@" Assign = %p",self.mysalaryArray);
    
    NSLog(@" Assign BOOL address = %p",self.isFlag);

    
    NSLog(@" Strong address = %p",self.mynameArray);
    
    NSLog(@" Strong1 address = %p",self.mynameArray1);

    
    

    
   
    Car *car = [[Car alloc] init];
    
    [car setRunning:YES];
    

    
    NSLog(@" is car running %d",car.running);
    
    
  //  NSLog(@" self.mynameRetain count is %ld", CFGetRetainCount((__bridge CFTypeRef)self.myname));
    
    
    
       
   
    
//    MyManager *copiedObject = [MyManager copy];
//    
//    NSLog(@" by copiedObject %@",copiedObject);
    
    MyManager *sharedManager = [MyManager sharedManager];
    
    NSLog(@" 1st call sharedManager %@",sharedManager);
    
    sharedManager = [MyManager sharedManager];
    
    NSLog(@" 2nd call sharedManager %@",sharedManager);
    
    
    MyManager *newobj = [[MyManager alloc] init];
    
    NSLog(@" by alloc %@",newobj);
    
//    MyManagerSubClass *sharedManagersubClass = [MyManagerSubClass sharedManager];
//    
//    NSLog(@" sharedManagersubClass %@",sharedManagersubClass);
//
   
    
    //[self Question3];
    
    /*
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"5",@"20",@"3",@"2",@"50",@"80", nil];
    int size = 6;
    int k = 45;
   // [self findPair:arr size:size diffrence:k];
  
    //_name = @"RAM";
    
    _name = @"Roopesh";
    //[self setValue:@"Roopesh" forKey:@"name"];
    
    VC2 *vc2 = [[VC2 alloc] initWithNibName:@"VC2" bundle:nil];
    
    
   [self.navigationController pushViewController:vc2 animated:YES];
    //[self presentViewController:vc2 animated:YES completion:nil];
    
    NSMutableSet * mSet = [[NSMutableSet alloc]init];
   // [mSet addObject:nil];
    
    NSSet *testSet = [[NSSet alloc] initWithObjects:@"",nil, nil];

    
    NSMutableDictionary *article = [[NSMutableDictionary alloc] init];
    [article setValue:nil forKey:@"NIL_VALUE"];
    
    
//    printf("mSet %@",mSet);
    
    UILabel *l1 = [UILabel new];
    UILabel *l2 = [UILabel new];
    
    if ([l1 isEqual:l2]) {
        printf(" equal");
    }
    else{
        printf("not equal");
    }
    
    int x = 2 ;
    int y = 4;
    printf("Printing Addition for two numabres");

     int z = [self add:&x :&y];
     printf(" SUM %d",z);
    
    
    int n = 0;
    int result = 0;
    
    for (int i = 0; i <= n; i++) {
        
        result = [self fib:i];
        
        printf(" %d",result);
    }
    */
    //[self gcd];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    /*

    _imagePicker = [[UIImagePickerController alloc] init];
    [_imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [_imagePicker setDelegate:self];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10, 50, 100, 30)];
    [button setTitle:@"Library" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor darkGrayColor]];
    [button addTarget:self action:@selector(gotoLibrary:) forControlEvents:UIControlEventTouchUpInside];
    
    [_imagePicker.view addSubview:button];
    
    [self presentViewController:_imagePicker animated:YES completion:nil]; */
}

-(void)gotoLibrary:(id)sender
{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    [imagePicker.view setFrame:CGRectMake(0, 80, 320, 350)];
    [imagePicker setSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
    [imagePicker setDelegate:self];
    
    [_imagePicker presentViewController:imagePicker animated:YES completion:nil];
}




- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    
    UIImageView * imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, chosenImage.size.width, chosenImage.size.height)];

    
    imgView.image = chosenImage;
    
    
    [self.view addSubview:imgView];
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
}

-(void)Question1{
    
    
    //mysalary
    NSObject *object = [NSObject new];
    

    dispatch_async(dispatch_get_main_queue(), ^{

        NSLog(@"A %ld", CFGetRetainCount((__bridge CFTypeRef)object));
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            NSLog(@"B %ld", CFGetRetainCount((__bridge CFTypeRef)object));

        });
        NSLog(@"C %ld", CFGetRetainCount((__bridge CFTypeRef)object));


    });
  
    NSLog(@"D %ld", CFGetRetainCount((__bridge CFTypeRef)object));
    
    

}

-(void)gcd_globalQ_sync{
    
    dispatch_queue_t _globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    
    dispatch_sync(_globalQueue, ^{ printf("1"); });
    printf("2");
    dispatch_sync(_globalQueue, ^{ printf("3"); });
    printf("4");

    
}

-(void)gcd_serialQ_async{
    
    
    dispatch_queue_t _globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_async(_globalQueue, ^{ printf("1"); });
    printf("2");
    dispatch_async(_globalQueue, ^{ printf("3"); });
    printf("4");
    
}

-(void)Q2{
    
    
    dispatch_queue_t _serialQueue = dispatch_queue_create("com.developer.queue", DISPATCH_QUEUE_SERIAL);
    
    dispatch_sync(_serialQueue, ^{ printf("1"); });
    printf("2");
    dispatch_sync(_serialQueue, ^{ printf("3"); });
    printf("4");
    
}

-(void)Q3{
    
    dispatch_queue_t _serialQueue = dispatch_queue_create("com.developer.queue", DISPATCH_QUEUE_CONCURRENT);
    
    dispatch_async(_serialQueue, ^{ printf("1"); });
    printf("2");
    dispatch_async(_serialQueue, ^{ printf("3"); });
    printf("4");
    dispatch_sync(_serialQueue, ^{ printf("5"); });
    printf("6");
    
}

-(void)Question2    {
    
    
    
    dispatch_queue_t queue = dispatch_queue_create("com.developer.queue", DISPATCH_QUEUE_SERIAL);
    
//    queue = dispatch_queue_create("com.developer.queue", DISPATCH_QUEUE_CONCURRENT);
//
//    queue = dispatch_queue_create("com.developer.queue", DISPATCH_QUEUE_SERIAL);
    dispatch_queue_t queue1 =   dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH,0);
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello" message:@"World" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
        [alert show];
        
        NSLog(@"Main Thread? %d", [NSThread isMainThread]);    });
    
//    dispatch_async(queue, ^{
//        
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello" message:@"World" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
//        [alert show];
//        
//              NSLog(@"Main Thread? %d", [NSThread isMainThread]);
//        
//    });
    
    
}


-(void)Question3    {
    
    __weak typeof (self)weakSelf = self;
   
    __strong typeof (self) strongSelf = weakSelf;

    
    
}
-(int)add :(int *)a :(int *)b{
    
    int c = (*a) + (*b) ;
    
    return c;
}

-(int)fib :(int)n{
    
    if(n <=1){
        
        return n;
    }
    
    int F = 0  ,F1 = 0 ,F2 = 1 ;
    
    for (int i = 2; i <= n ; i++) {
        
        F  = F1 + F2;
        F1 = F2;
        F2 = F;
        
    }
    
    return F;
}

-(void)gcd{
    
    /*
    dispatch_group_t group = dispatch_group_create();
    
    dispatch_group_async(group,dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^ {
        // block1
        NSLog(@"Block1 \n");
        [NSThread sleepForTimeInterval:5.0];
        NSLog(@"Block1 End");
    });
    
    
    dispatch_group_async(group,dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^ {
        // block2
            NSLog(@"Block2 \n");
        
        [NSThread sleepForTimeInterval:8.0];
        NSLog(@"Block2 End \n");
    });
    
    dispatch_group_notify(group,dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^ {
        // block3
        NSLog(@"Block3 \n");
    });
    
    */
    
  //  dispatch_release(group);
    
/*    ====================== */
    
    
    // create a group
    dispatch_group_t group = dispatch_group_create();
    
    // pair a dispatch_group_enter for each dispatch_group_leave
    dispatch_group_enter(group);     // pair 1 enter
    [self computeInBackground:1 completion:^{
        NSLog(@"1 done");
        dispatch_group_leave(group); // pair 1 leave
    }];
    
    // again... (and again...)
    dispatch_group_enter(group);     // pair 2 enter
    [self computeInBackground:2 completion:^{
        NSLog(@"2 done");
        dispatch_group_leave(group); // pair 2 leave
    }];
    
    // Next, setup the code to execute after all the paired enter/leave calls.
    //
    // Option 1: Get a notification on a block that will be scheduled on the specified queue:
    dispatch_group_notify(group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        NSLog(@"finally!");
    });
    
    // Option 2: Block an wait for the calls to complete in code already running
    // (as cbartel points out, be careful with running this on the main/UI queue!):
    //
    // dispatch_group_wait(group, DISPATCH_TIME_FOREVER); // blocks current thread
    // NSLog(@"finally!");
    
   // accessInstanceVariablesDirectly
    
    
    NSURL *URL = [NSURL URLWithString:@"http://example.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
    //...
    }];
    [task resume];
     NSData *data ;
    
    NSURLSessionUploadTask *uploadTask  = [session uploadTaskWithRequest:request fromData:data completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        //...
    }];
    
    [uploadTask resume];
    
    
    NSURLSessionDataTask *downloadTask = [session downloadTaskWithRequest:request completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
        //..
    }];
    
    [downloadTask resume];
    
}


- (void)computeInBackground:(int)no completion:(void (^)(void))block {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        NSLog(@"%d starting", no);
        sleep(no*2);
        block();
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
