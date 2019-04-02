//
//  EJQAItem.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/4/2.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "EJQAItem.h"
@interface EJQAItem()
@property(nonatomic,strong) NSString* qustion;
@property(nonatomic,strong) NSString* answer;
@property(nonatomic,assign) int rightTime;
@property(nonatomic,assign) int wrongTime;

@end

@implementation EJQAItem

-(instancetype) initWithDict:(NSDictionary *)dict
{
    if(self = [super init])
    {
        self.qustion = dict[@"question"];
        self.answer = dict[@"answer"];
        if([dict objectForKey:@"rightTime"])
        {
            self.rightTime =0;
        }
        if(![dict objectForKey:@"wrongTime"])
        {
            self.wrongTime =0;
        }
    }
    
    return self;
}

-(NSDictionary*) toDict
{
    NSDictionary *dict = @{@"question":self.qustion,
                           @"answer":self.answer,
                           @"rightTime":[NSNumber numberWithInteger:self.rightTime],
                           @"wrongTime":[NSNumber numberWithInteger: self.wrongTime]};
    return dict;
}

@end
