//
//  WBTableViewCell.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/25.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "WBTableViewCell.h"

@implementation WBTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    [self setContentLabel:[[UILabel alloc] initWithFrame:self.contentView.frame]];
    self.contentLabel.font =[UIFont systemFontOfSize:28.0];
    
    [self.contentLabel setText:@"hIsfdfsfdfssfsf"];
    [self.contentLabel setTextColor:[UIColor blueColor]];
    self.contentLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:self.contentLabel];
    [self.contentView setBackgroundColor:[UIColor redColor]];
    
    return  self;
}
@end
