//
//  ToggleViewModel.m
//  MVVM
//
//  Created by Huy Vo on 6/9/18.
//  Copyright © 2018 Huy Vo. All rights reserved.
//

#import "ToggleViewModel.h"

@interface ToggleViewModel()
{
    NSString *state; 
}
@end

@implementation ToggleViewModel

@synthesize delegate;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self->tsm = [[ToggleStateModel alloc] init];
        [self->tsm setValue:YES];
        if (delegate != nil){
            [delegate setState:@"ON"];
        }
    }
    return self;
}

- (void)setDelegate:(id <ToggleVMDelegate>) aDelegate {
    NSLog(@"setDelegate");
    if (delegate != aDelegate) {
        delegate = aDelegate;
        [delegate setState:[self getState]];
    }
}

- (void) onClick{
    NSLog(@"ToggleViewModel onClick");
 
    [self->tsm setValue:! [self->tsm value]];
    if(delegate != nil){
        [delegate setState:[self getState]];
    }
}

- (NSString *) getState{
    BOOL state = [self->tsm value] ;
    
    if(state == YES){
        return @"ON";
    }else{
        return @"OFF";
    }
}

@end
