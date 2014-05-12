//
//  main.m
//  CollisionOutput
//
//  Created by Rob on 8/31/13.
//  Copyright (c) 2013 Rob. All rights reserved.
//
//  Purpose: Reads an input file consisting of 'Y' and 'N' and converts it
//           into a '.' for 'Y' and a '-' for 'N'
//          
//------------------------------------------------------------------------

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //get the documents directory:
        NSArray *paths = NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        
        //make a file names to write the data to using the documents directory:
        NSString        *fileName = [NSString stringWithFormat:@"%@/translation.txt", documentsDirectory];
        NSString        *fileContents;
        NSString        *inFileContents;
        NSString        *lineContents;
        NSFileHandle    *inFile;
        NSData          *buffer;
        int             i;
        
        //INSERT FILE PATH IN THIS LINE!
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"/Users/Rob/Desktop/ITCS 4102/CollisionOutput/testFile"];
        
        //Check to see if the file opened
        if(inFile == nil){
            NSLog(@"File not opened!");
            return 1;
        }
        //Read the data from the file and store it into a buffer
        buffer = [inFile readDataToEndOfFile];
        //Convert the buffer into an NSString type
        inFileContents = [[NSString alloc]initWithData: buffer encoding:NSUTF8StringEncoding];
        //Output the file contents to the log to check it
        NSLog(@"%@", inFileContents);
        
        fileContents = @"";
        lineContents = @"";
        
        //File 1 starting at the top left and moving down and right
        i = 0;
        for(int j = 0; j < 32; j++){
            for(int k = 0; k < 48; k++){
                //If there's an endline, increment
                if('\n' == [inFileContents characterAtIndex:i])
                    i++;
                //If there is a 'Y' add "YES" to the file
                if('Y' == [inFileContents characterAtIndex:i]){
                    fileContents = [fileContents stringByAppendingString:[NSString stringWithFormat:@"."]];
                    [lineContents stringByAppendingString:@"Y"];

                } else{     //... else add "NO"
                    fileContents = [fileContents stringByAppendingString:[NSString stringWithFormat:@"-"]];
                    [lineContents stringByAppendingString:@"N"];
                }
                i++;    //increment index of the input string
            }
            fileContents = [fileContents stringByAppendingString:@"\n"];
            NSLog(@"%@", lineContents);
            lineContents = @"";
        }

        //Writing the result to the output file
        [fileContents writeToFile:fileName atomically:NO encoding:NSStringEncodingConversionAllowLossy error:nil];

        NSLog(@"Progam finished executing.");
    }
    return 0;
}

