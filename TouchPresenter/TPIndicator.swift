//
//  TPIndicator.swift
//  Pods
//
//  Created by Benjamin Herzog on 17.07.16.
//
//

import UIKit

/// Provides a standard indicator which is just a red dot
open class TPRedIndicator: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        
        let size = min(frame.size.width, frame.size.height)
        layer.cornerRadius = size / 2
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

/// Provides a circle as standard indicator
open class TPCircleIndicator: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .clear
        
        let size = min(frame.size.width, frame.size.height)
        layer.cornerRadius = size / 2
        
        layer.borderWidth = 3
        layer.borderColor = UIColor.darkGray.cgColor
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

open class TPLightBlueCircleIndicator: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 0, green: 151.0/255, blue: 216.0/255, alpha: 0.3)
        
        let size = min(frame.size.width, frame.size.height)
        layer.cornerRadius = size / 2
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
