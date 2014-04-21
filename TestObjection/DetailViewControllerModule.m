//
//  DetailViewControllerModule.m
//  TestObjection
//
//  Created by Kris on 14-4-21.
//  Copyright (c) 2014年 Kris. All rights reserved.
//

#import "DetailViewControllerModule.h"
#import "DetailViewController.h"
#import "Protocols.h"

@implementation DetailViewControllerModule

/**
 *  重写NSObject方法
 */
+ (void)load
{
    JSObjectionInjector *injector = [JSObjection defaultInjector];
    injector = injector ? : [JSObjection createInjector];
    injector = [injector withModule:[[self alloc] init]];
    [JSObjection setDefaultInjector:injector];
}

/**
 *  重写JSObjectionModule方法
 */
- (void)configure
{
    [self bindClass:[DetailViewController class] toProtocol:@protocol(DetailViewControllerProtocol)];
}

@end
