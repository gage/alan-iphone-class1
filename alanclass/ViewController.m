//
//  ViewController.m
//  alanclass
//
//  Created by Gage Tseng on 12/2/20.
//  Copyright (c) 2012年 Genie Capital. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController


-(IBAction)pushpush
{
    UIViewController *v2 = [[ViewController alloc] initWithNibName:@"ViewController_iPhone" bundle:nil];
    
    [self.navigationController pushViewController:v2 animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    
    btn.frame=CGRectMake(100, 100, 100, 50);
    
    btn.backgroundColor =[UIColor redColor];
    
    [btn addTarget:self action:@selector(pushpush) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
