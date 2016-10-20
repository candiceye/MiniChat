//
//  ViewController.swift
//  MiniChat
//
//  Created by Akkshay Khoslaa on 10/18/16.
//  Copyright © 2016 Akkshay Khoslaa. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    var profPicImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let dbRef = FIRDatabase.database().reference()
        let currUserId = FIRAuth.auth()?.currentUser?.uid
        let path = "Users/\(currUserId!)"
        dbRef.child(path).observe(.value, with: { snapshot ->
            Void in
            if snapshot.exists() {
                if let userDict = snapshot.value as? [String: AnyObject] {
                    let currentuser = User(key: snapshot.key, userDict: userDict)
                    currentuser.getProfImage(withBlock: {
                        retrievedImage -> Void in
                        self.profPicImageView.image = retrievedImage
                    })
                    
                }
            }
            
        
        })

        
        
        // dbRef.child(path).o make a piazza post about autocompletion
        // dbRef.child(path) brings us to the 123 of users
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

