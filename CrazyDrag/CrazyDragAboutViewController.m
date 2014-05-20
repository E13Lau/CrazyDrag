//
//  CrazyDragAboutViewController.m
//  CrazyDrag
//
//  Created by command.Zi on 14-4-30.
//  Copyright (c) 2014年 command.Zi. All rights reserved.
//

#import "CrazyDragAboutViewController.h"

@interface CrazyDragAboutViewController ()
- (IBAction)close:(id)sender;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation CrazyDragAboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSString *htmlFile = [[NSBundle mainBundle]pathForResource:@"Info" ofType:@"html"];
    NSData *htmlData = [NSData dataWithContentsOfFile:htmlFile];
    NSURL *baseURL = [NSURL fileURLWithPath:[[NSBundle mainBundle]bundlePath]];
    [self.webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:baseURL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)close:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
@end
