//
//  EJQAItem.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/4/2.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "EJQAItem.h"
@interface EJQAItem()


@end

@implementation EJQAItem

-(instancetype) initWithDict:(NSDictionary *)dict
{
    if(self = [super init])
    {
        self.question = dict[@"question"];
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
    NSDictionary *dict = @{@"question":self.question,
                           @"answer":self.answer,
                           @"rightTime":[NSNumber numberWithInteger:self.rightTime],
                           @"wrongTime":[NSNumber numberWithInteger: self.wrongTime]};
    return dict;
}

@end
