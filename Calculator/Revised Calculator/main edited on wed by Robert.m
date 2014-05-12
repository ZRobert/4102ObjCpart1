/* Calculator
 Created by Bobbi Johnson on 9/22/13.
 
 This is a simple command line objective-c program.
 The purpose of this program is to demonstrate some of the popular control structures that
 are used in the objective-c programming language. The control structures demonstrated in this
 program are the if statement, do while loop,for loop and switch statement. */


/*The Foundation framework is a collection of classes,methods,functions and documentation logically grouped to make developing Objective-C programs easier.
 This framework provides the base for all of your program development within the language.	*/
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    double num1 , num2 , value;
    char operator,repeat;
    int temp = 1;
    int i,isPrime;
    
    
    //Begining of a dowhile loop
    //The purpose of this loop is give the user options to repeat calculations
    do{
        
        //Prompt for user input
        NSLog(@"Type in your expression : ");
        //Scanning to store the values
        scanf("%lf %c %lf", &num1, &operator, &num2);
        
        
        // A switch statement implementation. The operator evaluates between addition
        //multiplication,subtraction, division and the modulos operation
        //The default case prints an error message
        switch (operator) {
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
            case '%':
                value = fmod(num1, num2);
            default:
                NSLog(@"Operator not identified");
                break;
        }//End of Switch
        
        //Displaying the calculation from the switch statment
        NSLog(@"%lf %c %lf  = %.2f", num1, operator, num2 , value);
        
        //This variable is reinitialized every time another iteration
        //of the dowhile loop is repeated
        isPrime=0;
        
        //The following for loop checks to see if the calculated value is prime by iterating through all of the numbers less
        //than the calculated value and checking the divisible of the calculated value by those numbers
        for( i = 2; i < value;i++ ) {
            
            if( fmod(value, i) == 0 ){
                isPrime++;
                NSLog (@"%i is a factor of %.2f ", i ,value	);}
            
            if( i == (value-1)&& isPrime == 0)
                NSLog (@" %.2f is a prime number",value) ;
            
        }
        //Promt to check if the use wishes to continue
        do{
            NSLog(@"Would you like to calculate another expression (Y/N): ");
            getchar();
            scanf("%c",&repeat);

        }while(repeat != 'n' && repeat != 'N' && repeat != 'Y' && repeat != 'y');
        
    } while(repeat != 'n' && repeat != 'N');//Expression evaluation for do while
    
    return 0;
}//End of Main
































