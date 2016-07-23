//
//  TPWindow.swift
//  Pods
//
//  Created by Benjamin Herzog on 17.07.16.
//
//

import UIKit

private var IndicatorObjectKey: UInt8 = 0

internal extension UITouch {
    
    /// Hold a strong reference to the view for removing it later
    var indicator: UIView? {
        get {
            return objc_getAssociatedObject(self, &IndicatorObjectKey) as? UIView
        }
        set {
            objc_setAssociatedObject(self, &IndicatorObjectKey, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
}

/**
 Use this window subclass as your main window, it will catch all touches and highlight them with the given view class.
 
 Initialize in the following way:
 
 ```Swift
 TPWindow(frame: UIScreen.mainScreen().bounds, viewType: TPRedIndicator.self, size: CGSize(width: 50, height: 50))
 ```
 
 The size parameter has a default value of 50x50 points.
 
 You can just override your window getter in AppDelegate like the following:
 
 ```
 private var customWindow = TPWindow(frame: UIScreen.mainScreen().bounds, viewType: TPRedIndicator.self)
 
 var window: UIWindow? {
     get {
        return customWindow
     }
    set { }
 }
 ```
 
 You can set any subclass of UIView as the viewType. The window will then initialize an instance of it in the given size.
 */
public class TPWindow<T: UIView>: UIWindow {
    
    private let size: CGSize
    
    /**
     Initializes an instance of the window. See class documentation for more details.
     */
    public init(frame: CGRect, viewType: T.Type, size: CGSize = CGSize(width: 50, height: 50)) {
        self.size = size
        super.init(frame: frame)
    }
    
    public override func sendEvent(event: UIEvent) {
        super.sendEvent(event)
        
        event.allTouches()?.forEach {
            touch in
            
            switch touch.phase {
                
            case .Began:
                let touchPosition = touch.locationInView(self)
                let origin = CGPoint(x: touchPosition.x - size.width/2, y: touchPosition.y - size.height/2)
                let frame = CGRect(origin: origin, size: size)
                let indicator = T(frame: frame)
                touch.indicator = indicator
                addSubview(indicator)
                
            case .Moved, .Stationary:
                touch.indicator?.center = touch.locationInView(self)
                
            case .Ended, .Cancelled:
                touch.indicator?.removeFromSuperview()
                touch.indicator = nil
            }
        }
    }
    
}
