//
//  Note.m
//  NoteApp
//
//  Created by SSD on 2017/12/30.
//  Copyright © 2017年 classroom. All rights reserved.
//

#import "Note.h"

@implementation Note
-(instancetype) init{
    self=[super init];
    if (self) {
        self.imageID=[[NSUUID UUID] UUIDString];
        self.imageName=[NSString stringWithFormat:@"%@.jpg",self.imageID];
        
    }
    return self;
}
@end
