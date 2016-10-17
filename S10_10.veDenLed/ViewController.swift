//
//  ViewController.swift
//  S10_10.veDenLed
//
//  Created by admin on 10/10/16.
//  Copyright © 2016 tien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var thanhvien = ["ong", "ba", "bo", "me", "anh"]

    @IBOutlet var numberTextFile: UITextField!
    
    var n = 5 ;
    
    var _margin:CGFloat = 100
    
    @IBAction func drawButton(sender: AnyObject) {
        
        // bấm vào button nhảy vào đây
        
        // update lại n từ text field
        
        // chạy lại hàm vẽ bóng
        
        /* xoa Imageview cũ -> chạy lại hàm vẽ bóng
         
         Công thức: http://stackoverflow.com/questions/24312760/how-to-remove-all-subviews-of-a-view-in-swift
         
         if you are looking for a specific class
         
         for view:CustomViewClass! in self.view.subviews {
            if view.isKindOfClass(CustomViewClass) {
                view.doClassThing()
            }
         }
        
        */
        
        for imageView in view.subviews {
            if imageView.isKindOfClass(UIImageView) {
                imageView.removeFromSuperview()
            }
        }
        
        n = Int(numberTextFile.text!)!
        
        drawRowOfBall()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func drawRowOfBall() {
        
        for indexHang in 0..<n {
            
            for indexCot in 0..<n {
                
                let image = UIImage(named: "green")
                
                let ball = UIImageView(image: image)
                
                ball.center = CGPointMake(_margin + CGFloat(indexHang)*spaceBetweenBall(),CGFloat(indexCot) * 50 + _margin)
                
                self.view.addSubview(ball)
            }
        }
    
    }
    func spaceBetweenBall() -> CGFloat {
        
        let space = ((self.view.bounds.size.width) - 2*_margin) / CGFloat(n-1) // 
        
        return space
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

