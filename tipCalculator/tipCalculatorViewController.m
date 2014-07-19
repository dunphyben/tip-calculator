//
//  tipCalculatorViewController.m
//  tipCalculator
//
//  Created by Benjamin Dunphy on 7/19/14.
//  Copyright (c) 2014 Benjamin Dunphy. All rights reserved.
//

#import "tipCalculatorViewController.h"

@interface tipCalculatorViewController ()

@end

@implementation tipCalculatorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Tip Calculator";
    
    NSLog(@"Hello");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(UITapGestureRecognizer *)sender {
    [self.view endEditing:YES];
}
@end
