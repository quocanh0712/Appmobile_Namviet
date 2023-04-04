import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)
        if let userDefaults = UserDefaults(suiteName: "group.com.essoft.ftulms.onesignal") {
            userDefaults.set("test 1" as AnyObject, forKey: "key1")
            userDefaults.set("test 2" as AnyObject, forKey: "key2")
            userDefaults.synchronize()
        }
        if let userDefaults = UserDefaults(suiteName: "group.com.essoft.ftulms.onesignal") {
            let value1 = userDefaults.string(forKey: "key1")
            let value2 = userDefaults.string(forKey: "key2")
            print("value1 = ", value1?.description ?? "No value")
            print("value2 = ", value2?.description ?? "No value")
        }
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
