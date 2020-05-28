
USER=$(whoami) open /Users/${USER}/Library/Caches/CocoaPods/Pods/External/ CRProjectInfo
pod repo push trunk CRProjectInfo.podspec --verbose --allow-warnings --use-libraries
