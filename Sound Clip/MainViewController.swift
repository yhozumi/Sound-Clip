//
//  MainViewController.swift
//  Sound Clip
//
//  Created by Suke Hozumi on 7/16/16.
//  Copyright © 2016 Suke Hozumi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      let circle = CircularView(frame: CGRect(origin: self.view.center, size: CGSize(width: 50, height: 50)), color: .black())
      view.addSubview(circle)
    }

    override func didReceiveMemoryWarning() {
    }
  
}
