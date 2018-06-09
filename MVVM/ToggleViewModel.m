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

- (instancetype)init
{
    self = [super init];
    if (self) {
        self->tsm = [[ToggleStateModel alloc] init];
        [self->tsm setValue:YES];
    }
    return self;
}

- (void) onClick{
    NSLog(@"ToggleViewModel onClick");
 
    [self->tsm setValue:! [self->tsm value]];
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
