//
//  ViewController.m
//  GalleryApp
//
//  Created by Admin on 8/20/15.
//  Copyright (c) 2015 Adam McCain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

UIImage * image;


- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self.displayImageString length] != 0) {
        UIImage *displayImage = [UIImage imageNamed:self.displayImageString];
        
        [self.imageViewGallery setImage:displayImage];
    }
    
    UISwipeGestureRecognizer *swipeNext = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    UISwipeGestureRecognizer *swipePrevious = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    
    [swipeNext setDirection:UISwipeGestureRecognizerDirectionLeft];
    [swipePrevious setDirection:UISwipeGestureRecognizerDirectionRight];
    
    [self.imageViewGallery addGestureRecognizer:swipeNext];
    [self.imageViewGallery addGestureRecognizer:swipePrevious];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)handleSwipe:(UISwipeGestureRecognizer *)swipe {
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        [self next];
        NSLog(@"hellur");
    }
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        [self previous];
        NSLog(@"bye");
    }
    
}

- (void)next {
    
    if (self.imageNumber == 0) {
        image = [UIImage imageNamed:@"part1.2.png"];
        self.imageNumber++;
    }
    else if (self.imageNumber == 1) {
        image = [UIImage imageNamed:@"part1.3.png"];
        self.imageNumber++;
    }
    else if (self.imageNumber == 2) {
        image = [UIImage imageNamed:@"part1.4.png"];
        self.imageNumber++;
    }
    else if (self.imageNumber == 3) {
        image = [UIImage imageNamed:@"part1.5.png"];
        self.imageNumber++;
    }
    else if (self.imageNumber == 4) {
        image = [UIImage imageNamed:@"part1.6.png"];
        self.imageNumber++;
    }
    else if (self.imageNumber == 5) {
        image = [UIImage imageNamed:@"part2.1.png"];
        self.imageNumber++;
    }
    else if (self.imageNumber == 6) {
        image = [UIImage imageNamed:@"part2.2.png"];
        self.imageNumber++;
    }
    else if (self.imageNumber == 7) {
        image = [UIImage imageNamed:@"part2.3.png"];
        self.imageNumber++;
    }
    else if (self.imageNumber == 8) {
        image = [UIImage imageNamed:@"part2.4.png"];
        self.imageNumber++;
    }
    else {
        self.imageNumber = 0;
        image = [UIImage imageNamed:@"part1.1.png"];
    }
    
    [self.imageViewGallery setImage: image];
}

- (void)previous {
    
    if (self.imageNumber == 9) {
        image = [UIImage imageNamed:@"part2.3.png"];
        self.imageNumber--;
    }
    else if (self.imageNumber == 8) {
        image = [UIImage imageNamed:@"part2.2.png"];
        self.imageNumber--;
    }
    else if (self.imageNumber == 7) {
        image = [UIImage imageNamed:@"part2.1.png"];
        self.imageNumber--;
    }
    else if (self.imageNumber == 6) {
        image = [UIImage imageNamed:@"part1.6.png"];
        self.imageNumber--;
    }
    else if (self.imageNumber == 5) {
        image = [UIImage imageNamed:@"part1.5.png"];
        self.imageNumber--;
    }
    else if (self.imageNumber == 4) {
        image = [UIImage imageNamed:@"part1.4.png"];
        self.imageNumber--;
    }
    else if (self.imageNumber == 3) {
        image = [UIImage imageNamed:@"part1.3.png"];
        self.imageNumber--;
    }
    else if (self.imageNumber == 2) {
        image = [UIImage imageNamed:@"part1.2.png"];
        self.imageNumber--;
    }
    else if (self.imageNumber == 1) {
        image = [UIImage imageNamed:@"part1.1.png"];
        self.imageNumber--;
    }
    else {
        self.imageNumber = 9;
        image = [UIImage imageNamed:@"part2.4.png"];
    }
    
    [self.imageViewGallery setImage: image];
}

- (IBAction)buttonNextClicked:(id)sender {
    
    [self next];
   
}

- (IBAction)buttonPreviousClicked:(id)sender {
    
    [self previous];
    
}



@end
