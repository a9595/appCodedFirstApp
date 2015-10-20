//
//  ViewController.m
//  appCodedFirstApp
//
//  Created by Admin on 19.10.15.
//  Copyright (c) 2015 Bob Dilan. All rights reserved.
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

- (void)NumberXPressed:(NSInteger)number {
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + number;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

- (void)MathOperation:(NSInteger)operationId {
    [self MathOperationsMain];

    SelectNumber = 0;
    Method = operationId;
}


- (void)MathOperationsMain {
    if (TotalSum == 0) {
        TotalSum = SelectNumber;
    } else {
        switch (Method) {
            case 1:
                TotalSum = TotalSum / SelectNumber;
                break;
            case 2:

                TotalSum = TotalSum * SelectNumber;
                break;

            case 3:
                TotalSum = TotalSum - SelectNumber;

                break;
            case 4:
                TotalSum = TotalSum + SelectNumber;
                break;
            default:
                break;


        }
    }
}


- (IBAction)Number1:(id)sender {
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 1;
    Screen.text = [NSString stringWithFormat:@"%i"];
}

- (IBAction)Number2:(id)sender {
    [self NumberXPressed:2];
}

- (IBAction)Number3:(id)sender {
    [self NumberXPressed:3];
}

- (IBAction)Number4:(id)sender {
    [self NumberXPressed:4];
}

- (IBAction)Number5:(id)sender {
    [self NumberXPressed:5];
}

- (IBAction)Number6:(id)sender {
    [self NumberXPressed:6];
}

- (IBAction)Number7:(id)sender {
    [self NumberXPressed:7];
}

- (IBAction)Number8:(id)sender {
    [self NumberXPressed:8];
}

- (IBAction)Number9:(id)sender {
    [self NumberXPressed:9];
}

- (IBAction)Number0:(id)sender {
    [self NumberXPressed:0];
}

- (IBAction)Times:(id)sender {
    [self MathOperation:2];

}

//MATH operations
- (IBAction)Divide:(id)sender {
    [self MathOperation:1];
}

- (IBAction)Plus:(id)sender {
    [self MathOperation:4];

}

- (IBAction)Minus:(id)sender {
    [self MathOperation:3];

}

- (IBAction)Equal:(id)sender {
    [self MathOperationsMain];
    Method = 0;
    SelectNumber = 0;
    Screen.text = [NSString stringWithFormat:@"%.2f", TotalSum];
}

- (IBAction)AllClear:(id)sender {
    Method = 0;
    SelectNumber = 0;
    TotalSum = 0;

    Screen.text = [NSString stringWithFormat:@"0"];

}


@end