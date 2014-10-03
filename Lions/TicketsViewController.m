//
//  TicketsViewController.m
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 02/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import "TicketsViewController.h"

@interface TicketsViewController ()<UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UIWebView *mWebView;

@end

@implementation TicketsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *url = [NSURL URLWithString:@"http://www.cnplayguide.com/lions/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_mWebView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    [[[UIAlertView alloc] initWithTitle:[error localizedFailureReason] message:[error localizedDescription] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
}

@end
