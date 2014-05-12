#import "Car.h"

@implementation Car

@synthesize make;
@synthesize model;
@synthesize year;
@synthesize color;

- (id)initWithaMake:(NSString*)aMake model:(NSString*)aModel year:(NSNumber*)aYear color:(NSString*)aColor{
    [self setMake:aMake];
    [self setModel:aModel];
    [self setYear:aYear];
    [self setColor:aColor];
    return self;
    
}

- (void) print{
    NSLog (@"=========================");
    NSLog (@"|                                                        ");
    NSLog (@"|   %@  |", make);
    NSLog (@"|   %@  |", model);
    NSLog (@"|   %@  |", year);
    NSLog (@"|   %@  |", color);
    NSLog (@"|                                                        ");
    NSLog (@"|                                                        ");
    NSLog (@"=========================");
}
@end