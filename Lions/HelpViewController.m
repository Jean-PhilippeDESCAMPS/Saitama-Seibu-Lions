//
//  HelpViewController.m
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 02/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import "HelpViewController.h"

@interface HelpViewController ()
@property (strong, nonatomic) IBOutlet UIWebView *mWebView;

@end

@implementation HelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *url = [NSURL URLWithString:@"http://www.seibulions.jp/ticket/guide/index.php"];
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
- (IBAction)done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
