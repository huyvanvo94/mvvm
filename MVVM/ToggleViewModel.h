//
//  ToggleViewModel.h
//  MVVM
//
//  Created by Huy Vo on 6/9/18.
//  Copyright © 2018 Huy Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToggleStateModel.h"
#import "ToggleVMDelegate.h"

@protocol ToggleVMDelegate;

@class ToggleStateModel;

@interface ToggleViewModel : NSObject
{
    ToggleStateModel *tsm;
}

@property (nonatomic, weak) id <ToggleVMDelegate> delegate;

- (void) onClick;

- (NSString *) getState;

@end
