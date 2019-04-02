//
//  EJQuestionCellTableViewCell.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/4/2.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "EJQuestionCellTableViewCell.h"
#import "EJQAItem.h"

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
        UILabel* label = [[UILabel alloc] init];
        [self.contentView addSubview:label];
        self.questionLabel = label;
        
        UILabel* rightNumberLabel = [[UILabel alloc] init];
        [self.contentView addSubview:rightNumberLabel];
        self.rightNumberLabel = rightNumberLabel;
        
        UILabel* totalNumberLabel = [[UILabel alloc] init];
        [self.contentView addSubview:totalNumberLabel];
        self.totalNumberLabel = totalNumberLabel;
        
        
    }
    
    return self;
}

-(void)setItem:(EJQAItem *)item{
    self.questionLabel.text = item.question;
    self.totalNumberLabel.text = [NSString stringWithFormat:@"%d / %d",item.rightTime,(item.rightTime + item.wrongTime)];
}


-(void)layoutSubviews{
    CGFloat space =10;
    CGFloat contentViewW = self.contentView.frame.size.width;
//    CGFloat contentViewH = self.contentView.frame.size.height;
    
    
    CGFloat questionX = 90;
    CGFloat questionY =10;
    CGFloat questionW = contentViewW -questionX -space;
    self.questionLabel.frame = CGRectMake(questionX, questionY, questionW, 20);
    
    CGFloat totalW = 150;
    CGFloat totalh =14;
    CGFloat totalX = contentViewW -totalW -space;
    CGFloat totalY = 20;
    self.totalNumberLabel.frame= CGRectMake(totalX,totalY, totalW, totalh);
    
}
@end
