//
//  ViewController.swift
//  PinchGesture
//
//  Created by 오지인 on 2020/12/14.
//  Copyright © 2020 오지인. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgPinch: UIImageView!
    
    var initialFontSize:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
//        if (pinch.state == UIGestureRecognizer.State.began) {
//            initialFontSize = txtPinch.font.pointSize
//        } else {
//            txtPinch.font = txtPinch.font.withSize(initialFontSize * pinch.scale)
//        }
        
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1
    }

}

