//
//  ViewController.h
//  UITableExample
//
//  Created by A4-iMAC01 on 28/10/2020.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    NSArray<NSString *> *urlStrings,*titleText;
    NSMutableArray<NSData *> *imageDataArray;
}
@end

