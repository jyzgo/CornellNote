//
//  EJQuestionCellTableViewCell.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/4/2.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "EJQuestionCellTableViewCell.h"
@interface EJQuestionCellTableViewCell()
@property(nonatomic,weak) UILabel *questionLabel;
@property(nonatomic,weak) UILabel *rightNumberLabel;
@property(nonatomic,weak) UILabel *totalNumberLabel;

@end


@implementation EJQuestionCellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self =[super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        
    }
    
    return self;
}


-(void)layoutSubviews{
    
}
@end
