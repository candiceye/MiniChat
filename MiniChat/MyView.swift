//
//  MyView.swift
//  MiniChat
//
//  Created by Candice Ye on 10/18/16.
//  Copyright © 2016 Akkshay Khoslaa. All rights reserved.
//

import UIKit

class MyView: UIView {
    
    
    // this extends UIView, unlike the others
    
    var profPicImageView: UIImageView!
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    
    init(frame: CGRect) {
        super.init(frame:frame)
        profPicImageView = UIImageView(frame:frame)
    }
    
}
