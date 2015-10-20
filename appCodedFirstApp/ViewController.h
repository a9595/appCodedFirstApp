//
//  ViewController.h
//  appCodedFirstApp
//
//  Created by Admin on 19.10.15.
//  Copyright (c) 2015 Bob Dilan. All rights reserved.
//


#import <UIKit/UIKit.h>


int Method;
int SelectNumber;
float TotalSum;


@interface ViewController : UIViewController {
    IBOutlet UILabel *Screen;

}
- (void)NumberXPressed:(NSInteger)number;

- (void)MathOperation:(NSInteger)operationId;

- (void)MathOperationsMain;


- (IBAction)Number1:(id)sender;

- (IBAction)Number2:(id)sender;

- (IBAction)Number3:(id)sender;

- (IBAction)Number4:(id)sender;

- (IBAction)Number5:(id)sender;

- (IBAction)Number6:(id)sender;

- (IBAction)Number7:(id)sender;

- (IBAction)Number8:(id)sender;

- (IBAction)Number9:(id)sender;

- (IBAction)Number0:(id)sender;

- (IBAction)Minus:(id)sender;

- (IBAction)Equal:(id)sender;

- (IBAction)AllClear:(id)sender;

- (IBAction)Times:(id)sender;

- (IBAction)Divide:(id)sender;
@end
