//
//  ViewController.h
//  GalleryApp
//
//  Created by Admin on 8/20/15.
//  Copyright (c) 2015 Adam McCain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageViewGallery;

@property (strong, nonatomic) IBOutlet UIButton *buttonNext;

@property (strong, nonatomic) IBOutlet UIButton *buttonPrevious;

@property (strong, nonatomic) NSString * displayImageString;

@property (assign, nonatomic) int imageNumber;

@property (strong, nonatomic) IBOutlet UIView *viewImage;

- (void) next;

- (void) previous;

@end

