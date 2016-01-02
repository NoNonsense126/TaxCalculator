//
//  RootViewController.m
//  TaxCalculator
//
//  Created by Wong You jing on 02/01/2016.
//  Copyright © 2016 NoNonsense. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property double caTax;
@property double chiTax;
@property double nyTax;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = 7.5;
    self.chiTax = 9.25;
    self.nyTax = 4.5;

}
- (IBAction)onCalculationButtonTapped:(id)sender {
    [self calculateTaxAndShow];
}

- (IBAction)onCalculationSegmentChanged:(id)sender {
    [self calculateTaxAndShow];
}

- (void)calculateTaxAndShow
{
    int dollarValue = [self.priceTextField.text intValue];
    double result;
    result = 0.0;
    switch(self.segmentedControl.selectedSegmentIndex )
    {
        case 0:
            result = self.caTax * dollarValue / 100;
            break;
        case 1:
            result = self.chiTax * dollarValue / 100;
            break;
        case 2:
            result = self.nyTax * dollarValue / 100;
            break;
            
            
    }
    self.resultLabel.text = [NSString stringWithFormat:@"%.02f", result];
}


@end
