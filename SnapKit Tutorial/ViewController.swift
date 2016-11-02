//
//  ViewController.swift
//  SnapKit Tutorial
//
//  Created by Malek T. on 7/9/15.
//  Copyright (c) 2015 Medigarage Studios LTD. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //1
    let topView = UIView()
    topView.backgroundColor = UIColor.blue
    
    let bottomLeftView = UIView()
    bottomLeftView.backgroundColor = UIColor.yellow
    
    let bottomRightView = UIView()
    bottomRightView.backgroundColor = UIColor.gray
    
    self.view.addSubview(topView)
    self.view.addSubview(bottomLeftView)
    self.view.addSubview(bottomRightView)
    
    //2
    topView.snp.makeConstraints { (make) -> Void in
      make.top.left.right.equalTo(0)
      make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
    }
    //3
    bottomLeftView.snp.makeConstraints { (make) -> Void in
      make.left.bottom.equalTo(0)
      make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
      make.width.equalTo(self.view.snp.width).multipliedBy(0.5)
    }
    //4
    bottomRightView.snp.makeConstraints { (make) -> Void in
      make.right.bottom.equalTo(0)
      make.width.equalTo(self.view.snp.width).multipliedBy(0.5)
      make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
    }
    
    
    
    let logo = UIImageView(image: UIImage(named: "logo"))
    topView.addSubview(logo)
    logo.snp.makeConstraints { (make) -> Void in
      make.center.equalTo(topView.center)
      make.width.equalTo(100)
      make.height.equalTo(110)
    }
    
    
    let tutorialsBtn = UIButton()
    tutorialsBtn.setTitle("Tutorials", for: UIControlState.normal)
    tutorialsBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
    tutorialsBtn.backgroundColor = UIColor.red
    bottomLeftView.addSubview(tutorialsBtn)
    
    let quizBtn = UIButton()
    quizBtn.setTitle("Quiz", for: UIControlState.normal)
    quizBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
    quizBtn.backgroundColor = UIColor.red
    bottomRightView.addSubview(quizBtn)
    
    tutorialsBtn.snp.makeConstraints { (make) -> Void in
      make.center.equalTo(bottomLeftView.center)
      make.width.equalTo(100)
      make.height.equalTo(25)
    }
    
    quizBtn.snp.makeConstraints { (make) -> Void in
      make.center.equalTo(bottomRightView.center)
      make.width.equalTo(100)
      make.height.equalTo(25)
    }
    
    
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}

