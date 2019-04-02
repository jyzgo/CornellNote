//
//  EJQAItem.h
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/4/2.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EJQAItem : NSObject

@property(nonatomic,strong) NSString* question;
@property(nonatomic,strong) NSString* answer;
@property(nonatomic,assign) int rightTime;
@property(nonatomic,assign) int wrongTime;

-(instancetype) initWithDict:(NSDictionary*) dict;

-(NSDictionary*) toDict;
@end
