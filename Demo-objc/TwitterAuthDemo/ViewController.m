//
//  ViewController.m
//  TwitterAuthDemo
//
//  Created by Daniel Khamsing on 3/1/16.
//  Copyright © 2016 Daniel Khamsing. All rights reserved.
//

#import "ViewController.h"

#import "TwitterSafariViewControllerAuth.h"

static NSString *const kConsumerKey    = @"[YOUR KEY]";
static NSString *const kConsumerSecret = @"[YOUR SECRET]";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        
    [[TwitterSafariViewControllerAuth sharedInstance] configureConsumerKey:kConsumerKey consumerSecret:kConsumerSecret];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButton:(UIButton *)sender {
    [sender setTitle:@"..." forState:UIControlStateNormal];
    sender.userInteractionEnabled = NO;
    
    [[TwitterSafariViewControllerAuth sharedInstance] presentOAuthLoginFromController:self];
}

@end
