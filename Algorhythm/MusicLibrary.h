//
//  MusicLibrary.h
//  Algorhythm
//
//  Created by Wing H. Liang on 7/25/16.
//  Copyright © 2016 Wing H. Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface MusicLibrary : NSObject

@property (strong, nonatomic) NSArray *library;

@end
