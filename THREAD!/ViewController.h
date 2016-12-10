//
//  ViewController.h
//  THREAD!
//
//  Created by Student on 16/11/16.
//  Copyright (c) 2016 Abhijit.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIDatePicker *datepicker;

@property (strong, nonatomic) IBOutlet UIImageView *imageview;

- (IBAction)downloadimage:(id)sender;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityindic;


@end

