//
//  SelectLessonViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/19/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "SelectLessonViewController.h"

@interface SelectLessonViewController ()

@end

@implementation SelectLessonViewController

- (void)viewDidLoad {
    NSLog(@"Select Lesson View");
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)berry1Pressed:(id)sender {
    //SelectLessonViewController *lessonVC = [[SelectLessonViewController alloc] initWithNibName: @"LessonViewController" bundle: nil];
    //[self.navigationController showViewController:lessonVC sender:self];


    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"LessonStoryboard" bundle:nil];
    UIViewController *myVC = [storyboard instantiateViewControllerWithIdentifier:@"FirstVC"];
    [self.navigationController showViewController:myVC sender:self];
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
