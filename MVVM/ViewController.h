//
//  ViewController.h
//  MVVM
//
//  Created by Huy Vo on 6/9/18.
//  Copyright © 2018 Huy Vo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToggleViewModel.h"
#import "ToggleVMDelegate.h"

@class ToggleViewModel; 

@interface ViewController : UIViewController <ToggleVMDelegate>
{
    ToggleViewModel *tvm; 
}

@end

