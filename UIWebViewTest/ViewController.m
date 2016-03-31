//
//  ViewController.m
//  UIWebViewTest
//
//  Created by kong on 16/3/31.
//  Copyright © 2016年 kong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    
    [webView loadRequest:request];
    
    UIButton *buttonBack = [UIButton buttonWithType:UIButtonTypeCustom];
    
    buttonBack.frame = CGRectMake(20, 100, 200, 50);
    
    [buttonBack setTitle:@"后退" forState:UIControlStateNormal];
    
    buttonBack.backgroundColor = [UIColor orangeColor];
    
    [buttonBack addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    
//    [webView addSubview:buttonBack];
    
    UIButton *buttonFroward = [UIButton buttonWithType:UIButtonTypeCustom];
    
    buttonFroward.frame = CGRectMake(20, 400, 200, 50);
    
    [buttonFroward setTitle:@"前进" forState:UIControlStateNormal];
    
    buttonFroward.backgroundColor = [UIColor orangeColor];
    
    [buttonFroward addTarget:self action:@selector(goForward) forControlEvents:UIControlEventTouchUpInside];
    
//    [webView addSubview:buttonFroward];
    
    for (UIScrollView* view in webView.subviews)
    {
        if ([view isKindOfClass:[UIScrollView class]])
        {
            view.bounces = NO;
        }
    }
    
    webView.backgroundColor = [UIColor clearColor];
    
    [webView setOpaque:NO];
    
    [self.view addSubview:webView];
    
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
