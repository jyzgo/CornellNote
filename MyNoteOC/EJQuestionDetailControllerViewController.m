//
//  EJQuestionDetailControllerViewController.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/31.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "EJQuestionDetailControllerViewController.h"

NSString* const QUESTION_PLACE_HOLDER =@"Put a question here!";
NSString* const ANSWER_PLACE_HOLDER = @"Put your answer here!";



@interface EJQuestionDetailControllerViewController ()<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *QuestionText;
@property (weak, nonatomic) IBOutlet UITextField *TagTextF;
@property (weak, nonatomic) IBOutlet UITextView *AnswerTextV;
@property (weak, nonatomic) IBOutlet UISwitch *editSwitch;
@property (weak, nonatomic) IBOutlet UIButton *SaveBtn;

@property (weak, nonatomic) IBOutlet UIView *QuizView;


@end

@implementation EJQuestionDetailControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.QuestionText.delegate = self;
    
    self.AnswerTextV.delegate = self;
}

-(void)addNewQuestionSetup{
    self.editSwitch.on = YES;
    self.QuestionText.text = QUESTION_PLACE_HOLDER;
    self.QuestionText.textColor = [UIColor lightGrayColor]; //optional
    
    self.AnswerTextV.text = ANSWER_PLACE_HOLDER;
    self.QuestionText.textColor = [UIColor lightGrayColor];
    
    self.QuizView.hidden = YES;
}
- (IBAction)EditSwitch:(UISwitch *)sender {
    BOOL isEditing = sender.on;
    self.QuestionText.selectable = isEditing;
    self.QuestionText.editable = isEditing;
    self.AnswerTextV.selectable = isEditing;
    self.AnswerTextV.editable = isEditing;
    self.TagTextF.enabled = isEditing;
    self.QuizView.hidden = isEditing;
    self.SaveBtn.hidden = !isEditing;
    
}

-(void)quizSetup
{
    NSLog(@"Quiz setup");
    self.editSwitch.on = NO;
    self.SaveBtn.hidden = YES;
    self.QuizView.hidden = NO;
    
}

-(void) viewWillAppear:(BOOL)animated{
    if (self.seguestate == Add)
    {
    [self addNewQuestionSetup];
    }else
    {
        [self quizSetup];
    }
}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    
    NSString* placeHolder;
    if (textView == self.QuestionText) {
        placeHolder = QUESTION_PLACE_HOLDER;
    }else
    {
        placeHolder = ANSWER_PLACE_HOLDER;
    }
    if ([textView.text isEqualToString:placeHolder]) {
        textView.text = @"";
        textView.textColor = [UIColor blackColor]; //optional
    }
    [textView becomeFirstResponder];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    NSString* placeHolder;
    if(textView ==self.QuestionText)
    {
        placeHolder = QUESTION_PLACE_HOLDER;
    }else
    {
        placeHolder = ANSWER_PLACE_HOLDER;
    }
    if ([textView.text isEqualToString:@""]) {
        textView.text = placeHolder;
        textView.textColor = [UIColor lightGrayColor]; //optional
    }
    [textView resignFirstResponder];
}

-(void) textViewDidChange:(UITextView *)textView
{
    NSLog(@"ccc");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
