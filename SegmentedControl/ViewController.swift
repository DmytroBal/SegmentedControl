//
//  ViewController.swift
//  SegmentedControl
//
//  Created by Dmytro Bal on 10.09.2022.
//

import UIKit

class ViewController: UIViewController {

    var segmentedControl = UISegmentedControl()
    let menuArray = ["One", "Two", "Three"]
    
    let imageView = UIImageView()
    let imageArray = [UIImage(named: "burger.jpg"),
                      UIImage(named: "sushi.jpg"),
                      UIImage(named: "pizza.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create segmented control
        self.segmentedControl = UISegmentedControl(items: menuArray)
        self.segmentedControl.frame = CGRect(x: 70, y: 600, width: 240, height: 60)
        self.view.addSubview(segmentedControl)
        
        // create imageView
        self.imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.imageView.center = self.view.center
        self.imageView.image = imageArray[0]
        self.imageView.isHidden = true
        self.view.addSubview(imageView)
        
        segmentedControl.addTarget(self, action: #selector(selectedValue(target:)), for: .valueChanged)
    }

    @objc func selectedValue(target: UISegmentedControl) {
        
        if target == self.segmentedControl {
            
            let selectIndex = target.selectedSegmentIndex
            self.imageView.image = imageArray[selectIndex]
            self.imageView.isHidden = false
        }
    }
    
}

