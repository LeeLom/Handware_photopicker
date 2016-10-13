//
//  ViewController.h
//  PhotoPicker
//
//  Created by LeeLom on 16/10/11.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIButton *uploadImage;
@property (strong, nonatomic) IBOutlet UIButton *takeImage;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITextView *textView;

@end

