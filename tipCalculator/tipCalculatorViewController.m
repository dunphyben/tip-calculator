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
@property (nonatomic, strong) NSArray *tipArray;

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
    self.tipArray = @[@(0.1), @(0.15), @(0.2)];
    
    [self.tipControl addTarget:self action:@selector(calculate) forControlEvents:UIControlEventValueChanged];
    self.tipControl.selectedSegmentIndex = 1; // on load, the middle one (#1 in the array) is selected
    [self.billAmount addTarget:self action:@selector(calculate) forControlEvents:UIControlEventEditingChanged]; // for automatic updating of the figures
                      NSLog(@"tipArray");
    
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
    float tipPercent = [self.tipArray[self.tipControl.selectedSegmentIndex] floatValue];
    float tipAmount = billAmount * tipPercent;
    float total = billAmount + tipAmount;
    
    self.tipAmount.text = [NSString stringWithFormat:@"%0.2f", tipAmount]; // 0.2f means 2 decimal place float
    self.total.text = [NSString stringWithFormat:@"%0.2f", total];
    
    NSLog(@"%d", self.tipControl.selectedSegmentIndex);
    
    //NSLog(@"%0.2f", billAmount); // f = float; d = integer
}

- (IBAction)onChange:(id)sender {
}

@end
