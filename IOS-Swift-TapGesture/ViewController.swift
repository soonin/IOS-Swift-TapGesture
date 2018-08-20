//
//  ViewController.swift
//  IOS-Swift-TapGesture
//
//  Created by Pooya on 2018-08-20.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewTap: UIImageView!
    var tapGesture = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TAP Gesture
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.myviewTapped(_:)))
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 1
        viewTap.addGestureRecognizer(tapGesture)
        viewTap.isUserInteractionEnabled = true
    }

    @objc func myviewTapped(_ sender: UITapGestureRecognizer) {
        
        if self.viewTap.backgroundColor == UIColor.yellow {
            self.viewTap.backgroundColor = UIColor.green
        }else{
            self.viewTap.backgroundColor = UIColor.yellow
        }
    }


}

