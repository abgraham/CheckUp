//
//  AppDelegate.h
//  CheckUp
//
//  Created by Annie Graham on 11/9/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property BOOL hasTakenHealthyDietQuiz;
@property BOOL hasTakenSugarQuiz;
@property BOOL hasTakenHealthyDietLesson;
@property BOOL hasTakenSugarLesson;
@property NSInteger quizScore; 

@property (strong, nonatomic) UIWindow *window;


@end

