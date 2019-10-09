//
//  ViewController.swift
//  BasithUIGestureRecognizer
//
//  Created by Basith on 01/10/19.
//  Copyright © 2019 TechPro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
      let translation = recognizer.translation(in: self.view)
      if let view = recognizer.view {
        view.center = CGPoint(x:view.center.x + translation.x,
                                y:view.center.y + translation.y)
      }
      recognizer.setTranslation(CGPoint.zero, in: self.view)
    }


}

