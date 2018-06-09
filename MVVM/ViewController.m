//
//  ViewController.m
//  MVVM
//
//  Created by Huy Vo on 6/9/18.
//  Copyright © 2018 Huy Vo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *b;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self->tvm = [[ToggleViewModel alloc] init];
    NSLog(@"current state %@", [self->tvm getState]);
    [_b setTitle:[self->tvm getState] forState:UIControlStateNormal];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClick:(id)sender {
    NSLog(@"onClick");
    [self->tvm onClick];
    [_b setTitle:[self->tvm getState] forState:UIControlStateNormal];
    
}


@end
