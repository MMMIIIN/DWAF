import UIKit
import Flutter
import SwiftyBootpay

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
        Bootpay.sharedInstance.appLaunch(application_id: "616422f87b5ba4001d52c1f0")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    override func applicationWillResignActive(_ application: UIApplication) {
            Bootpay.sharedInstance.sessionActive(active: false)
        }

        override func applicationDidBecomeActive(_ application: UIApplication) {
            Bootpay.sharedInstance.sessionActive(active: true)
        }
}
