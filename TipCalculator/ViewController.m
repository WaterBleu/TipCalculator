//
//  ViewController.m
//  TipCalculator
//
//  Created by Jeff Huang on 2015-07-10.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UISlider *tipPercentageSlider;
@property (weak, nonatomic) NSString *localeCurrency;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self updateTipPercentTextField:nil];
    //[self.billAmountTextField addTarget:self action:@selector(textField:shouldChangeCharactersInRange:replacementString:) forControlEvents:UIControlEventEditingChanged];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateSlider:(UITextField *)sender {
    int value;
    value = round([[sender.text substringWithRange:NSMakeRange(0, sender.text.length - 1)] intValue]);
    self.tipPercentageSlider.value = value;
//    NSString *localeIdentifier = [[NSLocale availableLocaleIdentifiers] objectAtIndex:72];
//    //  get the selected locale and the application locale
//    NSLocale *selectedLocale = [[NSLocale alloc] initWithLocaleIdentifier:localeIdentifier];
//    self.localeCurrency = [selectedLocale objectForKey:NSLocaleCurrencySymbol];
}

- (IBAction)updateTipPercentTextField:(UISlider *)sender {
    self.tipPercentageSlider.value = (int)round(self.tipPercentageSlider.value);
    self.tipPercentageTextField.text = [NSString stringWithFormat:@"%d%%",(int)round(self.tipPercentageSlider.value)];
}

- (IBAction)calculateTip:(UIButton *)sender {
    self.tipAmountLabel.text = [NSString stringWithFormat:@"$ %.2f",[self.billAmountTextField.text floatValue] * self.tipPercentageSlider.value/100];
//    self.tipAmountLabel.text = [NSString stringWithFormat:@"%@ %.2f",self.localeCurrency ,[self.billAmountTextField.text floatValue] * self.tipPercentageSlider.value/100];
}

//- (void)textFieldDidBeginEditing:(UITextField *)textField {
//    if(textField.text.length == 0)
//        self.billAmountTextField.text = self.localeCurrency;
//}
//
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
//    NSString *newText = [textField.text stringByReplacingCharactersInRange:range withString:string];
//    
//    // Make sure that the currency symbol is always at the beginning of the string:
//    if (![newText hasPrefix:self.localeCurrency])
//    {
//        return NO;
//    }
//    
//    // Default:
//    return YES;
//}



@end
