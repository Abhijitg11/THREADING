//
//  ViewController.m
//  THREAD!
//
//  Created by Student on 16/11/16.
//  Copyright (c) 2016 Abhijit.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)downloadimage:(id)sender {
NSString *imgpath=@"http://www.planwallpaper.com/static/images/desktop-year-of-the-tiger-images-wallpaper.jpg";
    [_activityindic startAnimating];
    [NSThread detachNewThreadSelector:@selector(downloadImages:) toTarget:self withObject:imgpath];
    
}
-(void)downloadImages:(NSString *)imagepath
{
    NSURL *url=[NSURL URLWithString:imagepath];
    NSData *data=[NSData dataWithContentsOfURL:url];
    UIImage *img=[UIImage imageWithData:data];
    [self performSelectorOnMainThread:@selector(updateUI:) withObject:img waitUntilDone:NO];
    
}
-(void)updateUI:(UIImage *)actualimage
{
    self.imageview.image=actualimage;
    [_activityindic stopAnimating];
    
}




@end
