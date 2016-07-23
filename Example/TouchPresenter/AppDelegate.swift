//
//  AppDelegate.swift
//  TouchPresenter
//
//  Created by Benjamin Herzog on 07/17/2016.
//  Copyright (c) 2016 Benjamin Herzog. All rights reserved.
//

import UIKit
import TouchPresenter

class Image: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        image = UIImage(named: "oval")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    override init() {
        let config = TouchPresenterConfiguration(viewType: TPLightBlueCircleIndicator.self, enable3DTouch: true)
        window = TPWindow(frame: UIScreen.mainScreen().bounds, configuration: config)
        super.init()
    }

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return true
    }

}
