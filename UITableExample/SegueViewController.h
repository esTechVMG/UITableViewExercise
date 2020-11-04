//
//  SegueViewController.h
//  UITableExample
//
//  Created by A4-iMAC01 on 03/11/2020.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SegueViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic,assign)NSString* name, *number,*url;
@end

NS_ASSUME_NONNULL_END
