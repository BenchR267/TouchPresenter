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

    private var customWindow = TPWindow(frame: UIScreen.mainScreen().bounds, viewType: TPCircleIndicator.self)
    
    var window: UIWindow? {
        get { return customWindow }
        set { }
    }

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return true
    }

}
