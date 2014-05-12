//
// Car.h
//
// Created by Adam Arnold and Robert Payne
// Copyright (c) 2013 Adam Arnold & Robert Payne. All Rights Reserved.
//
//

// Here I create an interface file “Car.h” which is used with the NSMutableArray found in the main.m file.

#import <Foundation/Foundation.h>

// Here is the class interface for the car. We instantiate four variables to accept information about the
// car to be set to the car object. The name of the file will be “Car.h” and this type of file is the class
// interface which defines instance variables and public methods. The following line starts the interface and
// states that the superclass of the class car is NSObject.

@interface Car : NSObject {
    NSString *make;
    NSString *model;
    NSNumber *year;
    NSString *color;
}

// The following properties are used to define the information that the Car
// class is intended to encapsulate.
// The nonatomic property is faster than atomic as it does not guarantee to
// return the entire value from the getters and setters.
// The retain property so used so that the strings and number properly claim
// ownership of the assigned value and relinquish ownership of any old values.

@property (nonatomic, retain) NSString *make;
@property (nonatomic, retain) NSString *model;
@property (nonatomic, retain) NSNumber *year;
@property (nonatomic, retain) NSString *color;

// Here we give the interface id return with the function initWithaMake
// which is defined in the main.m file. The parameters that are returned are
// listed after the function. This interface also includes a call
// to the print function which prints the properties of the car. This
// is also used in the main.m file.

- (id)initWithaMake:(NSString*)aMake model:(NSString*)aModel year:(NSNumber*)aYear color:(NSString*)aColor;
- (void) print;
@end
