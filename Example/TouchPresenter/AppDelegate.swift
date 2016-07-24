//
//  AppDelegate.swift
//  TouchPresenter
//
//  Created by Benjamin Herzog on 07/17/2016.
//  Copyright (c) 2016 Benjamin Herzog. All rights reserved.
//

import UIKit
import TouchPresenter

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    override init() {
        let config = TouchPresenterConfiguration(viewType: UIImageView.self, enable3DTouch: true) {
            $0.image = UIImage(named: "oval")
        }
        window = TPWindow(frame: UIScreen.mainScreen().bounds, configuration: config)
        super.init()
    }

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return true
    }

}
