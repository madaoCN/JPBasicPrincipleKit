//
//  ViewController.m
//  02-设计模式-MVC(变种)
//
//  Created by 周健平 on 2019/12/29.
//  Copyright © 2019 周健平. All rights reserved.
//

#import "ViewController.h"
#import "JPAppPresenter.h"

@interface ViewController ()
@property (nonatomic, strong) JPAppPresenter *presenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.presenter = [[JPAppPresenter alloc] initWithViewController:self];
}

@end
