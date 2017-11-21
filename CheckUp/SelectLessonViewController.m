//
//  SelectLessonViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/19/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "SelectLessonViewController.h"
#import "LessonPageViewController.h"
#import "QuizPageViewController.h"
#import "LessonsHomeViewController.h"

@interface SelectLessonViewController ()
@property (weak, nonatomic) IBOutlet UIButton *backButton;

@end

@implementation SelectLessonViewController

- (void)viewDidLoad {
    NSLog(@"Select Lesson View");
    [super viewDidLoad];
    _backButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Light" size:14.0];
    if ([self.lessonsOrQuizzes isEqualToString:@"Quizzes"]){
        _backButton.hidden = YES;
    }
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)berry1Pressed:(id)sender {
    //SelectLessonViewController *lessonVC = [[SelectLessonViewController alloc] initWithNibName: @"LessonViewController" bundle: nil];
    //[self.navigationController showViewController:lessonVC sender:self];


//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"LessonStoryboard" bundle:nil];
//    UIViewController *myVC = [storyboard instantiateViewControllerWithIdentifier:@"FirstVC"];
//    [self.navigationController showViewController:myVC sender:self];

    if ([self.lessonsOrQuizzes
        isEqualToString:@"Lessons"]){
        // Go to lessons pages
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        [self.navigationController showViewController:lessonPageVC sender:self];
    } else {
        // Go to quiz pages
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        [self.navigationController showViewController:quizPageVC sender:self];
    }
}

- (IBAction)backButtonPressed:(id)sender {
    if ([self.lessonsOrQuizzes isEqualToString:@"Lessons"]){
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        LessonsHomeViewController *lessonHomeVC = [storyboard instantiateViewControllerWithIdentifier:@"lessonsHome"];
        [self.navigationController showViewController:lessonHomeVC sender:self];
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
