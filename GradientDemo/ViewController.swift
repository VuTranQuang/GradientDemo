//
//  ViewController.swift
//  GradientDemo
//
//  Created by Vũ on 1/4/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientLayer.frame = self.view.bounds
        
        let color1 = UIColor.yellow.cgColor
        let color2 = UIColor(red: 1.0, green: 0, blue: 0, alpha: 1).cgColor
        let color3 = UIColor.clear.cgColor
        let color4 = UIColor(white: 0.0, alpha: 0.7).cgColor
        gradientLayer.colors = [color1, color2, color3, color4]
        gradientLayer.locations = [0.0, 0.25, 0.75, 1.0]
 //       ToDo: 2 hàm dưới để tạo màu theo chiều ngang hay dọc
//        gradientLayer.startPoint = CGPoint(x: 1, y: 0)
//        gradientLayer.endPoint = CGPoint(x: 0, y: 0)
        self.view.layer.addSublayer(gradientLayer)
        self.view.backgroundColor = UIColor.green
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

