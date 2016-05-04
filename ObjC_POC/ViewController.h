//
//  ViewController.h
//  ObjC_POC
//
//  Created by Tripathi, Roopesh on 26/12/15.
//  Copyright (c) 2015 Tripathi, Roopesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate>

/*! @brief This property knows my name. */
@property (nonatomic,strong)NSMutableArray *mynameArray;
@property (nonatomic,strong)NSMutableArray *mynameArray1;


/*! This property knows my salary */
@property (nonatomic,assign)NSMutableArray *mysalaryArray;

@property (nonatomic, strong) UIImagePickerController *imagePicker;
@property (nonatomic, assign) BOOL isFlag;






/// This property knows my company. */


/** This property knows my company. */


/*!@brief This propertiy name is mycompany  */
@property (nonatomic,copy)NSString *mycompany;


/*!
 @brief It converts temperature degrees from Fahrenheit to Celsius scale.
 
 @discussion This method accepts a float value representing the temperature in <b>Fahrenheit</b> scale and it converts it to the <i>Celsius</i> scale.
 
 To use it, simply call @c[self toCelsius: 50];
 
 @param  fromFahrenheit The input value representing the degrees in the Fahrenheit scale.
 
 @return float The degrees in the Celsius scale.
 */


-(float)toCelcius:(float)fromFahrenheit;

@end

