//
//  LessonsHomeViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/9/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "LessonsHomeViewController.h"
#import "LessonCategoryView.h"

@interface LessonsHomeViewController ()

@property (weak, nonatomic) IBOutlet LessonCategoryView *category1;
@property (weak, nonatomic) IBOutlet LessonCategoryView *category2;
@property (weak, nonatomic) IBOutlet LessonCategoryView *category3;
@property (weak, nonatomic) IBOutlet LessonCategoryView *category4;


@end

@implementation LessonsHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Lessons home");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
