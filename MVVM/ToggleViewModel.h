//
//  ToggleViewModel.h
//  MVVM
//
//  Created by Huy Vo on 6/9/18.
//  Copyright © 2018 Huy Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToggleStateModel.h"

@class ToggleStateModel;

@interface ToggleViewModel : NSObject
{
    ToggleStateModel *tsm;
  
}

- (void) onClick;

- (NSString *) getState;

@end
