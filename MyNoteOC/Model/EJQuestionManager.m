//
//  EJQuestionManager.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/4/2.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "EJQuestionManager.h"
#import "EJQAItem.h"

@interface EJQuestionManager()
@property(nonatomic,strong)NSMutableArray* questionArr;
@end

@implementation EJQuestionManager

+ (instancetype)sharedManager {
    static EJQuestionManager *sharedMyManager = nil;
    @synchronized(self) {
        if (sharedMyManager == nil)
            sharedMyManager = [[self alloc] init];
    }
    return sharedMyManager;
}

-(void)loadFile{
    //    if(!self.questionArr){
    //    NSString* path = [[NSBundle mainBundle] pathForResource:@"question.plist" ofType:nil];
    //    NSArray* arr = [NSArray arrayWithContentsOfFile:path];
    
    
    
    
    
    // getting path to GameDAta.plist
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths firstObject];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"question.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //check if file exists
    if (![fileManager fileExistsAtPath:path]) {
        NSLog(@"path doesn't exist. plist file will be copied to the path.");
        // If it doesn't, copy it from the default file in the Bundle
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"question" ofType:@"plist"];
        if (bundlePath) {
            NSLog(@"file exists in the main bundle.");
            
            // copy dictionary from main bundle to document directory path
            [fileManager copyItemAtPath:bundlePath toPath:path error:nil];
            NSLog(@"plist file is copied from main bundle to document directory");
        } else {
            NSLog(@"question.plist not found in main bundle. Please, make sure it is part of the bundle.");
        }
      
    }
    
    // store plist file, at documents directory, in dictionary
    NSArray* arr = [NSArray arrayWithContentsOfFile:path];
    for (NSDictionary* dict in arr) {
        [self.questionArr addObject:[[EJQAItem alloc] initWithDict:dict]];
    }
    
}




-(NSArray*) questionArr
{
    [self loadFile];
    return self.questionArr;
}


-(void)saveFile{

    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths firstObject];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"question.plist"];
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:10];
    for (EJQAItem* item in self.questionArr) {
        [arr addObject:[item toDict]];
    }
    [arr writeToFile:path atomically:YES];
}


@end
