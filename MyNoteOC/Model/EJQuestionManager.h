//
//  EJQuestionManager.h
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/4/2.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EJQuestionManager : NSObject

+(instancetype) sharedManager;

-(void)loadFile;
-(void)saveFile;

@end
