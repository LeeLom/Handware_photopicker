//
//  ViewController.m
//  PhotoPicker
//
//  Created by LeeLom on 16/10/11.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

#define kBoarderWidth 3.0
#define kCornerRadius 8.0

@interface ViewController ()

@end

@implementation ViewController

@synthesize imageView;
@synthesize uploadImage;
@synthesize takeImage;
@synthesize textView;

static int num = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setButtonUI:self.uploadImage];
    [self setButtonUI:self.takeImage];
    [self setImageViewUI:self.imageView];
    [self setTextViewUI:self.textView];
    
    NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval:5.0
                                                      target:self
                                                    selector:@selector(settextViewInfo)
                                                    userInfo:nil
                                                     repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)takeImage:(id)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
}
- (IBAction)uploadImage:(id)sender {
    
}
- (void) setButtonUI:(UIButton*) btn {
    [btn.layer setMasksToBounds:YES];
    [btn.layer setCornerRadius:3.0];
    [btn.layer setBorderWidth:1.0];
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorRef colorref = CGColorCreate(colorSpace,(CGFloat[]){ 0, 0, 0, 1 });//R,G,B,alpha
    UIColor *tintColor = [[UIColor alloc]initWithRed:0 green:0 blue:0 alpha:1];
    [btn setTintColor:tintColor];
    [btn.layer setBorderColor:colorref];
}

- (void) setImageViewUI:(UIImageView*) imageV {
    CALayer *borderLayer = [CALayer layer];
    CGRect borderFrame = CGRectMake(0, 0, (imageView.frame.size.width), (imageView.frame.size.height));
    [borderLayer setBackgroundColor:[[UIColor clearColor] CGColor]];
    [borderLayer setFrame:borderFrame];
    [borderLayer setCornerRadius:kCornerRadius];
    [borderLayer setBorderWidth:1.0];
    [borderLayer setBorderColor:[[UIColor blackColor] CGColor]];
    [imageV.layer addSublayer:borderLayer];
}

- (void) setTextViewUI:(UITextView*) textview {
    [textview.layer setMasksToBounds:YES];
    [textview.layer setCornerRadius:3.0];
    [textview.layer setBorderWidth:1.0];
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorRef colorref = CGColorCreate(colorSpace,(CGFloat[]){ 0, 0, 0, 1 });//R,G,B,alpha
    [textview.layer setBorderColor:colorref];
}

- (void) settextViewInfo{
    num ++;
    //self.textView.text = NSStr
}


@end
