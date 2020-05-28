//
//  CRProjectInfo.m
//  CRProjectInfo
//
//  Created by Corotata on 2020/5/28.
//

#import "CRProjectInfo.h"

@implementation CRProjectInfo

///Pod所有在路径，通常为工程路径
+ (NSString *) projectDirectory {
    NSString *path = PROJECT_DIR;
    if ([[path lastPathComponent] isEqualToString:@"Pods"]) {
        path = [path stringByDeletingLastPathComponent];
    }
    return path;
}
///当前电脑的用户
+ (NSString *) currentUser {
    return [[self projectDirectory] componentsSeparatedByString:@"/"][2];
}

///APP版本号，如1.0.0
+ (NSString *)shortVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleShortVersionString"];
}

///应用名
+ (NSString *)displayName {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleDisplayName"];
}

///应用支持的语种
+ (NSString *)bundleLocalizations {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleLocalizations"];
}

///包名
+ (NSString *)bundleName{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleName"];
}

///编译版本
+ (NSString *)bundleVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleVersion"];
}

///包的唯一标识
+ (NSString *)bundleIdentifier{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleIdentifier"];
}


///完整的版本号 shortVersion(bundleVersion) -> 1.0.0(1)
+ (NSString *)wholeAppVersion {
    return [NSString stringWithFormat:@"%@(%@)",[self shortVersion],[self bundleVersion]];
}


@end
