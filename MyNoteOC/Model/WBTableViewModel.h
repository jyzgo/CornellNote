//
//  WBTableViewModel.h
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/25.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WBTableViewModel : NSObject<UITableViewDataSource,UITableViewDelegate>

+(instancetype) model;

@end
