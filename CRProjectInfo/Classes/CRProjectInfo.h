//
//  CRProjectInfo.h
//  CRProjectInfo
//
//  Created by Corotata on 2020/5/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CRProjectInfo : NSObject

///Pod所有在路径，通常为工程路径
+ (NSString *) projectDirectory;

///当前电脑的用户
+ (NSString *) currentUser;

///APP版本号，如1.0.0
+ (NSString *)shortVersion;


///应用名
+ (NSString *)displayName;

///应用支持的语种
+ (NSString *)bundleLocalizations;

///包名
+ (NSString *)bundleName;

///编译版本（Build)
+ (NSString *)bundleVersion;

///包的唯一标识
+ (NSString *)bundleIdentifier;


///完整的版本号 shortVersion(bundleVersion) -> 1.0.0(1)
+ (NSString *)wholeAppVersion;


@end

NS_ASSUME_NONNULL_END
