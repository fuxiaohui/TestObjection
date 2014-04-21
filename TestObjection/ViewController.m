//
//  ViewController.m
//  TestObjection
//
//  Created by Kris on 14-4-18.
//  Copyright (c) 2014年 Kris. All rights reserved.
//

#import "ViewController.h"
#import "Protocols.h"

@interface ViewController ()

- (IBAction)pressButton:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pressButton:(UIButton *)sender
{
    UIViewController<DetailViewControllerProtocol> *detailVC = [[JSObjection defaultInjector] getObject:@protocol(DetailViewControllerProtocol)];
    [self presentViewController:detailVC animated:YES completion:^{
        detailVC.view.backgroundColor = [UIColor blackColor];
        NSLog(@"%d",detailVC.currentIndex);
        
    }];
}

@end
