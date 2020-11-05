//
//  SegueViewController.m
//  UITableExample
//
//  Created by A4-iMAC01 on 03/11/2020.
//

#import "SegueViewController.h"

@interface SegueViewController ()

@end

@implementation SegueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _nameLabel.text=_name;
    _numberLabel.text=_number;
    [_imageView setImage:[UIImage imageWithData:_dataForImage]];
    // Do any additional setup after loading the view.
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
