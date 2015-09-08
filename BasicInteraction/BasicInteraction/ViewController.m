//
//  ViewController.m
//  BasicInteraction
//
//  Created by Odin on 2015-09-07.
//  Copyright (c) 2015 Jon Mercer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *simpleTextField;
@property (strong, nonatomic) IBOutlet UILabel *simpleLabel;


@end

@implementation ViewController


//return type means this method can be used in interface builder of xcode
//IBAction is pretty much void for now
- (IBAction)changeLabel:(id)sender {
    
    //but the getter method has been generated in the class
//    NSString *contents = [_simpleTextField text];
    // another way of doing it
//    NSString *contents = [[self simpleTextField] text];
    // Yet another way (but no longes supported it seems like
//    NSString *contents = simpleTextField.text;
    
    
    
    NSString *contents = [[self simpleTextField] text];
    
    NSString *message = [NSString stringWithFormat:@"Hello %@",contents];
    [self.simpleLabel setText:message];
    
    
    //Resign being firstResponder so that the keyboard goes away
    [self.simpleTextField resignFirstResponder];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *contents = [[self simpleTextField] text];
    NSString *message = [NSString stringWithFormat:@"Hello %@",contents];
    [self.simpleLabel setText:message];
    
    [textField resignFirstResponder];
    return YES;
}

// Inject code when one of more fingers touch the screen
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
