//
//  EJContactViewController.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/30.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "EJContactViewController.h"
#import "EJQuestionDetailControllerViewController.h"
#import "EJQuestionManager.h"
#import "EJQuestionCellTableViewCell.h"
@interface EJContactViewController ()
@property(nonatomic,strong) NSMutableArray *questions;

@end

@implementation EJContactViewController
- (IBAction)logout:(id)sender {
    UIAlertController* alertVc = [UIAlertController alertControllerWithTitle:@"Do you want to logout?" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    UIAlertAction* logoutAction =[UIAlertAction actionWithTitle:@"Logout" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        [self.navigationController popViewControllerAnimated:YES];
    }];
    [alertVc addAction:cancelAction];
    [alertVc addAction:logoutAction];
    [self presentViewController:alertVc animated:YES completion:nil] ;
}
- (IBAction)AddBtnPressed:(id)sender {
    [self performSegueWithIdentifier:@"questiontoadd" sender:nil];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   EJQuestionDetailControllerViewController* questionAddView =  segue.destinationViewController;
    [questionAddView setSeguestate:Add];
}

-(void)setAccountName:(NSString *)accountName
{
    self.navigationItem.title = accountName;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    [[EJQuestionManager sharedManager] loadFile];
    [self.tableView registerClass:[EJQuestionCellTableViewCell class] forCellReuseIdentifier:@"question"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.questions.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)editMode:(UISwitch *)sender {
}
@end
