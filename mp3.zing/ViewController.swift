//
//  ViewController.swift
//  mp3.zing
//
//  Created by HuuLuong on 7/13/16.
//  Copyright © 2016 CanhDang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var image_logo: UIImageView!
    
    @IBOutlet weak var lbl_text: UILabel!

    @IBOutlet weak var lbl_name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image_logo!.alpha = 0
        
        lbl_text!.alpha = 0
        
        lbl_name!.alpha = 0
     }
    

    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        UIView.animateWithDuration(4, animations: {
            self.image_logo!.alpha = 1
        }) { (finished) in
            
            UIView.animateWithDuration(3, animations: {
                self.lbl_text!.center = CGPointMake(self.image_logo!.center.x,70)
                
                self.lbl_text!.alpha = 1
            }) { (finished) in
                
                UIView.animateWithDuration(3, animations: {
                    
                    self.lbl_name!.center = CGPointMake(self.image_logo!.center.x, 500)
                    
                    self.lbl_name!.alpha = 1
                })
                
            }
        }
    }


}

