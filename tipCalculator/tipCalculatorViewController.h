//
//  tipCalculatorViewController.h
//  tipCalculator
//
//  Created by Benjamin Dunphy on 7/19/14.
//  Copyright (c) 2014 Benjamin Dunphy. All rights reserved.
//

#import <UIKit/UIKit.h>

//order of elements do not matter

@interface tipCalculatorViewController : UIViewController
- (IBAction)onTap:(UITapGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UITextField *billAmount;

@end
