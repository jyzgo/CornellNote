//
//  EJQuestionDetailControllerViewController.h
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/31.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import <UIKit/UIKit.h>
enum SegueState{
    Add,
    Quiz
};
@interface EJQuestionDetailControllerViewController : UIViewController

@property(nonatomic,assign) enum SegueState seguestate;

-(void) addNewQuestionSetup;
-(void) quizSetup;

@end
