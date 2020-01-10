//
//  ViewController.swift
//  swipeGesture
//
//  Created by Ankita Jain on 2020-01-07.
//  Copyright © 2020 Ankita Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let swipeRight=UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeRight.direction=UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft=UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction=UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(swipeLeft)
    }

    @objc func swiped(gesture:UISwipeGestureRecognizer)
    {
       
       let swipeGesture=gesture as? UISwipeGestureRecognizer
        switch swipeGesture?.direction {
            case UISwipeGestureRecognizer.Direction.right:
                print("Right Swipe")
                case UISwipeGestureRecognizer.Direction.left:
                print("Left Swipe")
            default:
                break
            }
        
    }

}

