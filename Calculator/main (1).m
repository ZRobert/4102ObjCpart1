//
//  main.m
//  Calculator
//
//  Created by Patrick Johnson on 9/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

/*The Foundation framework is a collection of classes,methods,functions and documentation logically grouped to make developing Objective-C programs easier. 
 This framework provides the base for all of your program development within the language.	*/
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    /*The autoreleasepool is a built in mechanism for objective-c to effectivly manage the memory of your program. 
     Any objects created in the autorealease block will be destroyed by default at the end of the block. */
   

    
    double num1 , num2 , value;
    char char1,char2; 
    char2 = 'y';
    
        NSLog(@"Type in your expression : ");
        scanf("%lf %c %lf", &num1, &char1, &num2);
  
    do {
    
    switch (char1) {
        case '+':
            value = num1 + num2 ;
            break;
        case '-':
            value = num1 - num2 ;
            break;
        case '/':
            value = num1 / num2 ;
            break;       
        case '*':
            value = num1 * num2 ;
            break; 
        case 'p':
            value = num1 + num2 ;
            break; 
        default:
            break;
        }//End of Switch
        
        
        NSLog(@"%.2f",value);
    
        NSLog(@"Would you care to calculate another expression (Y/N): ");
        scanf("%c",&char2);
      
    } while(char2 =='y' || char2 == 'Y');
    
    return 0;
}//End of Main


