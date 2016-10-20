//
//  User.swift
//  MiniChat
//
//  Created by Akkshay Khoslaa on 10/18/16.
//  Copyright © 2016 Akkshay Khoslaa. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class User {
    
    var name: String?  // Don't force unwrap or it might crash. For the model, you want to use optional. ?
    var profPicUrl: String?
    var charIds: [String]?
    var uid: String?
    
    
    // view.addSubview(myView)    not using self.
    // addSubview(profPicImageView)
    
    init(key: String, userDict: [String: AnyObject]) {
        // key will be the uid. *123( is passed in as key. (name: shubham = string: anyobject)
        // chatIds has a value of this array [0: abc]
        
        uid = key
        if let username = userDict["name"] as? String {
            name = username  // just in case
        }
        if let profPicUrl = userDict["profPicUrl"] as? String {
            profPicUrl = url
        }
        if let ids = userDict["chatIds"] as? [String] {
            // 0, 1 means array not dictionary
            // setting it equal to ids
            chatIds = ids
        }
    }
    
    // you want a user to have get methods
    // go to firebase > user guide > storage > download files > download in memory
    
    func getProfImage(withBlock: (UIImage) -> Void) {
        // Void means it's not going to return a type. The function that will be passed into us will not have a return type.
        let storageRef = FIRStorage.storage().reference()
        let islandRef = storageRef.child(proPicUrl!)
        
        imageRef.data(withMaxSize: 1*1024*1024) { (data, error) -> Void in
            if (error != nil) {
                print("An error has occurred \(error)")
                
            } else {
                let image = UIImage(data: data!)
                withBlock(image!)  // Calling the function passed in.
            }
    }
        
        
    

}
}
