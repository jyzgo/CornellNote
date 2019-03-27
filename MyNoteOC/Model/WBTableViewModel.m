//
//  WBTableViewModel.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/25.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "WBTableViewModel.h"
#import "WBTableViewCell.h"

@implementation WBTableViewModel

+(instancetype)model
{
    WBTableViewModel *model = [[self alloc] init];
    return model;
}

#pragma mark -Table view delegate-


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [[WBTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Wb"];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"index is %d",indexPath.row);
}


#pragma mark -Table view datesource-

@end
