//
//  tipCalculatorViewController.m
//  tipCalculator
//
//  Created by Benjamin Dunphy on 7/19/14.
//  Copyright (c) 2014 Benjamin Dunphy. All rights reserved.
//

#import "tipCalculatorViewController.h"

@interface tipCalculatorViewController () // put methods here, such as [self calculate] added below in IBAction
// declare your created methods here in the interface! Makes it a private method because it's in the .m file
// public methods are added to .h files

-(void) calculate; // void means that you're not returning anything

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
    [self calculate];
}

- (void) calculate {
    
    float billAmount = [self.billAmount.text floatValue];
    
    NSLog(@"%f", billAmount); // f = float; d = integer
}

@end
