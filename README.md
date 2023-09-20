# RealmBinary

## ⚠️ WARNING Check Carthage compatability in Realm [release versions](https://github.com/realm/realm-swift/releases)

This repository is a direct solution to [this issue](https://github.com/realm/realm-swift/issues/6898)

It has an action which runs every 2 hours to check if Realm has new releases. Based on similar [solution](https://github.com/akaffenberger/firebase-ios-sdk-xcframeworks) for firebase

Possible issues:
- If Realm deletes Carthage.framework.zip from release Assets this script will no longer work.
- Any critical changes (like moving Realm or RealmSwift folders to different locations) to Realm repository will break the script
