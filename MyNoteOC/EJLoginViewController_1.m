//
//  EJLoginViewController_1.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/30.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "EJLoginViewController_1.h"
#import "EJContactViewController.h"
#import "MBProgressHUD.h"

@interface EJLoginViewController_1 ()
@property (weak, nonatomic) IBOutlet UITextField *accoutTextF;
@property (weak, nonatomic) IBOutlet UITextField *pwdTextF;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UISwitch *rmPswSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *autologinSwitch;

@end

@implementation EJLoginViewController_1
- (IBAction)login:(id)sender {
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
  
    hud.label.text = @"Loading";
       
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
          [self performSegueWithIdentifier:@"contact" sender:nil];
        [hud hideAnimated:YES];
    });
    
 
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EJContactViewController* des = (EJContactViewController*)segue.destinationViewController;
    des.accountName = self.accoutTextF.text;
 
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_accoutTextF addTarget:self action:@selector(textChanged) forControlEvents:UIControlEventEditingChanged];
        [_pwdTextF addTarget:self action:@selector(textChanged) forControlEvents:UIControlEventEditingChanged];
    [self textChanged];
    

}

-(void) textChanged{
    _loginBtn.enabled= _pwdTextF.text.length && _accoutTextF.text.length;
}


- (IBAction)rmPswChanged:(UISwitch *)sender {
    if(_rmPswSwitch.on==NO)
    {
        [_autologinSwitch setOn:NO animated:YES];
    }
}
- (IBAction)autoLoginChanged:(UISwitch *)sender {
    if(_autologinSwitch.on == YES)
    {
        [_rmPswSwitch setOn:YES animated:YES];
    }
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
