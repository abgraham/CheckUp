//
//  LessonsHomeViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/9/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "LessonsHomeViewController.h"
#import "LessonCategoryView.h"
#import "HeaderView.h"
#import "SelectLessonViewController.h"
#import "MessagesHomeViewController.h"
#import "AppDelegate.h"

@interface LessonsHomeViewController ()
@property (weak, nonatomic) IBOutlet HeaderView *headerView;
@property (weak, nonatomic) IBOutlet UILabel *instructionsLabel;

@property (weak, nonatomic) IBOutlet LessonCategoryView *category1;
@property (weak, nonatomic) IBOutlet LessonCategoryView *category2;
@property (weak, nonatomic) IBOutlet LessonCategoryView *category3;
@property (weak, nonatomic) IBOutlet LessonCategoryView *category4;


@end

@implementation LessonsHomeViewController
- (IBAction)diabetesPressed:(id)sender {
    NSLog(@"Diabetes Pressed");
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //SelectLessonViewController *selectLessonVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SelectLessonsViewController"];
    //SelectLessonViewController *selectLessonVC = [storyboard instantiateViewControllerWithIdentifier:@"SelectLessonViewController"];
    //MessagesHomeViewController *selectLessonVC = [storyboard instantiateViewControllerWithIdentifier:@"MessagesHomeViewController"];
    SelectLessonViewController *selectLessonVC = [[SelectLessonViewController alloc] initWithNibName: @"SelectLessonViewController" bundle: nil];
    selectLessonVC.lessonsOrQuizzes = @"Lessons";
    [self.navigationController showViewController:selectLessonVC sender:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Lessons home");
    self.category1.categoryNameLabel.text = @"Diabetes";
    self.category2.categoryNameLabel.text = @"Hypertension";
    self.category3.categoryNameLabel.text = @"Cancer";
    self.category4.categoryNameLabel.text = @"Lupus";
    int lessonsCompleted = 0;
    AppDelegate *appDelegate =[[UIApplication sharedApplication] delegate];
    if (appDelegate.hasTakenSugarLesson) lessonsCompleted += 1;
    if (appDelegate.hasTakenHealthyDietLesson) lessonsCompleted += 1;
    [self.category2.berryIcon setImage:[UIImage imageNamed:@"Berry (1_4).png"]];
    [self.category3.berryIcon setImage:[UIImage imageNamed:@"Berry (Grey).png"]];
    [self.category4.berryIcon setImage:[UIImage imageNamed:@"Berry (3_4).png"]];
    switch (lessonsCompleted){
        case 0:
            [self.category1.berryIcon setImage:[UIImage imageNamed:@"Berry (2_4)"]];
            break;
        case 1:
            [self.category1.berryIcon setImage:[UIImage imageNamed:@"Berry (3_4)"]];
            break;
        case 2:
            [self.category1.berryIcon setImage:[UIImage imageNamed:@"Berry (4_4)"]];
            break;
        default:
            break;
    }
    if (lessonsCompleted == 2){
        [self.category1.berryIcon setImage:[UIImage imageNamed:@"CompleteBerry"]];
    }
    self.instructionsLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    self.headerView.label.font = [UIFont fontWithName:@"Avenir-Light" size:22.0];
    self.category1.categoryNameLabel.font = [UIFont fontWithName:@"Avenir-Black" size:22.0];
    self.category2.categoryNameLabel.font = [UIFont fontWithName:@"Avenir-Black" size:22.0];
    self.category3.categoryNameLabel.font = [UIFont fontWithName:@"Avenir-Black" size:22.0];
    self.category4.categoryNameLabel.font = [UIFont fontWithName:@"Avenir-Black" size:22.0];
    self.category4.dividerView.backgroundColor = [UIColor whiteColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
