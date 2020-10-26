//
//  IntroVC.m
//  GalleryApp
//
//  Created by Admin on 8/21/15.
//  Copyright (c) 2015 Adam McCain. All rights reserved.
//

#import "IntroVC.h"
#import "ViewController.h"

@interface IntroVC ()

@end

@implementation IntroVC

NSString * displayImage;
int imageNumber;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewColor.backgroundColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonImageOneClicked:(id)sender {
    displayImage = @"part1.1.png";
    imageNumber = 0;
    [self performSegueWithIdentifier:@"segueGallery" sender:sender];
}

- (IBAction)buttonImageTwoClicked:(id)sender {
    displayImage = @"part1.2.png";
    imageNumber = 1;
    [self performSegueWithIdentifier:@"segueGallery" sender:sender];
}

- (IBAction)buttonImageThreeClicked:(id)sender {
    displayImage = @"part1.3.png";
    imageNumber = 2;
    [self performSegueWithIdentifier:@"segueGallery" sender:sender];
}

- (IBAction)buttonImageFourClicked:(id)sender {
    displayImage = @"part1.4.png";
    imageNumber = 3;
    [self performSegueWithIdentifier:@"segueGallery" sender:sender];
}

- (IBAction)buttonImageFiveClicked:(id)sender {
    displayImage = @"part1.5.png";
    imageNumber = 4;
    [self performSegueWithIdentifier:@"segueGallery" sender:sender];
}

- (IBAction)buttonImageSixClicked:(id)sender {
    displayImage = @"part1.6.png";
    imageNumber = 5;
    [self performSegueWithIdentifier:@"segueGallery" sender:sender];
}

- (IBAction)buttonImageSevenClicked:(id)sender {
    displayImage = @"part2.1.png";
    imageNumber = 6;
    [self performSegueWithIdentifier:@"segueGallery" sender:sender];
}

- (IBAction)buttonImageEightClicked:(id)sender {
    displayImage = @"part2.2.png";
    imageNumber = 7;
    [self performSegueWithIdentifier:@"segueGallery" sender:sender];
}

- (IBAction)buttonImageNineClicked:(id)sender {
    displayImage = @"part2.3.png";
    imageNumber = 9;
    [self performSegueWithIdentifier:@"segueGallery" sender:sender];
}

- (IBAction)buttonImageTenClicked:(id)sender {
    displayImage = @"part2.4.png";
    imageNumber = 8;
    [self performSegueWithIdentifier:@"segueGallery" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"segueGallery"]) {
        
        ViewController *gallery = [segue destinationViewController];
        
        gallery.displayImageString = displayImage;
        gallery.imageNumber = imageNumber;
    }
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
