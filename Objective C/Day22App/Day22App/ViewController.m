//
//  ViewController.m
//  Day22App
//
//  Created by Dan Luong on 5/11/15.
//  Copyright (c) 2015 Dan Luong. All rights reserved.
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

- (IBAction)tappedGetPhoto:(id)sender {
    UIImagePickerController *controller = [[UIImagePickerController alloc]init];

    /*
    set sourceType to either UIImagePickerControllerSourceTypeSavedPhotosAlbum or UIImagePickerControllerSourceTypePhotoLibrary.  The difference is that the PhotosAlbum will take you directly to the album for the pictures taken with the camera (the Camera Roll) while PhotoLibrary will take you to the albums list (of which Camera Roll is one of the albums if the device has a camera).
     */
    controller.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    controller.delegate = self;
    [self presentViewController:controller animated:YES completion:nil];
    
}

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self.imageView setImage:image];
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
