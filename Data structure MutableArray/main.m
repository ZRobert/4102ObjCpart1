//
//  main.m
//  Car
//
//  Created by Robert Payne on 9/30/13.
//  Copyright (c) 2013 Robert Payne. All rights reserved.
//

#import <Foundation/Foundation.h>

// The following import allows this main file to use the interface
// Car.h. This file is necessary to run the main.m file.

#import "Car.h"

@class Car;
// The first line is common to most C language variants and takes in an integer and a
// character array as its parameters.

int main (int argc, char * argv[])
{
    
    // The auto release pool defined below ensures that the memory for these
    // data structures is released after the program has completed. This ensures
    // that there are no memory leaks and that no memory is encumbered after
    // the program has finished running.
    
    @autoreleasepool {
        
    // The following Mutable Array is initialized with 10 locations
    // and we used the Mutable Array rather than an Immutable Array
    // so we could change the values. An Immutable Array once defined
    // cannot have its values changed.
        
        NSMutableArray *carList = [[NSMutableArray alloc] initWithCapacity:10];
        NSString *aModel;
        NSString *aMake;
        NSNumber *aYear;
        NSString *aColor;

        // Next we are going to create several Car objects and print them.
        aMake = @"Ford";
        aModel = @"Mustang";
        aYear = [[NSNumber alloc] initWithInt:1964];
        aColor = @"Tan";
        
        // Here we create a car object and initialize it with the previous
        // variables we just assigned values to. Notice that we used the
        // function "initWithaMake" that we defined in the interface file.
        
        Car *car1;

        car1 = [[Car alloc]initWithaMake:aMake model:aModel year:aYear color:aColor];
        
        // Here we add the object we just defined to the Mutable Array
        // carList.
        [carList addObject:car1];
        
        // This example shows how to create a car object and actually
        // change the aYear number value during the object creation.
        car1 = [[Car alloc]initWithaMake:aMake model:aModel year:[[NSNumber alloc] initWithInt:1965] color:aColor];
        
        // We then add this value to the array as well. This object will
        // actually be added to the second position.
        [carList addObject:car1];
        
        ///using dot operator to change the values -RP
        car1.color = @"Blue";
        //This is going to change the color of the object that car1 is pointing to, which also happens to be inside the
        //mutable array, thus we end up with two of the same entries both with blue as color and 1965 as the year
        
        NSLog(@"%@ %@ has been repainted...",car1.make, [car1 model]); //see how they are interchangable? It's usually prefered in obj-C to use the square brackets
        [carList addObject:car1];
        
        //we can also add cars to the mutable array like this:
        [carList addObject:[[Car alloc]initWithaMake:@"Honda" model:@"Civic Hybrid" year:[[NSNumber alloc] initWithInt:2007] color:@"Blue"]];
        
        //this loop iterates all the cars in the mutable array and prints
        for(Car *aCar in carList){
            [aCar print];
        }
    }
    return 0;
}

