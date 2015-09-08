//
//  ViewController.m
//  AlertMe
//
//  Created by Odin on 2015-09-08.
//  Copyright (c) 2015 Jon Mercer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"title" message:@"This is my message" delegate:nil cancelButtonTitle:@"myOkay" otherButtonTitles:nil, nil];
    
    [myAlert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
