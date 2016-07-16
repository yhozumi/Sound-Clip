//
//  CircularView.swift
//  Sound Clip
//
//  Created by Suke Hozumi on 7/16/16.
//  Copyright © 2016 Suke Hozumi. All rights reserved.
//

import UIKit

protocol CircularViewDelegate {
  func circularViewDidPress()
}

class CircularView: UIView {
  private var radius: CGFloat?
  private var color: UIColor?
  
  var delegate: CircularViewDelegate?
  
  convenience init(frame: CGRect, color: UIColor) {
    self.init(frame: frame)
    self.radius = frame.size.width / 2
    self.color = color
    configureCircularView(radius: radius!, color: color)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //configures the circular view's properties
  private func configureCircularView(radius: CGFloat, color: UIColor) {
    self.backgroundColor = color
    self.layer.cornerRadius = radius
  }
  
  deinit {
    //set the delegate to nil since that this delegate is not weak reference
    delegate = nil
  }
}


