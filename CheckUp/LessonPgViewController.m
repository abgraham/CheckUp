//
//  LessonPgViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/20/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "LessonPgViewController.h"
#import "LessonPageViewController.h"

@interface LessonPgViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

@end

@implementation LessonPgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (!self.pageCode){
        self.pageCode = @"1";
    }
    if ([self.pageCode isEqualToString:@"1"]){
        _questionLabel.text = @"Yes I want to be healthy!";
    } else if ([self.pageCode isEqualToString:@"2"]) {
        _questionLabel.text = @"No thanks.";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)nextPageButton:(id)sender {
    //if ([self.pageCode isEqualToString:@"1"]){
        //self.pageCode = @"2";
    //} else {

        LessonPageViewController *lessonPgVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        lessonPgVC.pageCode = self.pageCode;
        [self.navigationController showViewController:lessonPgVC sender:self];
    //}
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
