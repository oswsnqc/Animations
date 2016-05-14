//
//  ViewController.swift
//  Animations
//
//  Created by Yisen on 6/15/15.
//  Copyright (c) 2015 Yisen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var counter = 1
    var timer = NSTimer()
    var decision = true
    
    

    @IBOutlet weak var girlimage: UIImageView!
    @IBAction func updateimage(sender: AnyObject) {
        if decision == true {
            timer.invalidate()
            decision = false
        } else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            decision = true
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)

        
    }
    
    func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter++
        }
        
        girlimage.image = UIImage(named: "frame\(counter).png")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    
    override func viewDidLayoutSubviews() {
        girlimage.frame = CGRectMake(100, 200, 0, 0)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(3, animations: { () -> Void in
            self.girlimage.frame = CGRectMake(100, 200, 200, 200)
            
            
            
        })
    }

*/


}
