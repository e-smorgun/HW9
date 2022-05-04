//
//  ViewController1.swift
//  HW9
//
//  Created by Evgeny on 4.05.22.
//

import UIKit
var circle: UIView = UIView()

class ViewController1: UIViewController {

    override func viewDidLoad() {
        let screenSize: CGRect = UIScreen.main.bounds
    
        super.viewDidLoad()
        circle.frame = CGRect(x: screenSize.midX, y: screenSize.midY, width: 30, height: 30)
        circle.backgroundColor = .cyan
        circle.layer.cornerRadius = circle.frame.height / 2
        

        let swipeUpGesture = UISwipeGestureRecognizer(target: self, action: #selector(didSwipe))
        swipeUpGesture.direction = .up
        
        let swipeDownGesture = UISwipeGestureRecognizer(target: self, action: #selector(didSwipe))
        swipeDownGesture.direction = .down

        let swipeRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(didSwipe))
        swipeRightGesture.direction = .right

        let swipeLeftGesture = UISwipeGestureRecognizer(target: self, action: #selector(didSwipe))
        swipeLeftGesture.direction = .left

        self.view.addGestureRecognizer(swipeUpGesture)
        self.view.addGestureRecognizer(swipeDownGesture)
        self.view.addGestureRecognizer(swipeRightGesture)
        self.view.addGestureRecognizer(swipeLeftGesture)
        self.view.addSubview(circle)

    }
    
    @objc func didSwipe(sender: UISwipeGestureRecognizer){
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        switch sender.direction {
        case .down:
            if circle.frame.minY + 10 > screenHeight - 225
            {
                circle.frame = CGRect(x: circle.frame.minX, y: circle.frame.minY, width: 30, height: 30)
                circle.layer.cornerRadius = circle.frame.height / 2

            } else {
                circle.frame = CGRect(x: circle.frame.minX, y: circle.frame.minY + 10, width: 30, height: 30)
                circle.layer.cornerRadius = circle.frame.height / 2
            }
        case .left:
            if circle.frame.minX - 10 < 0
            {
                circle.frame = CGRect(x: circle.frame.minX, y: circle.frame.minY, width: 30, height: 30)
                circle.layer.cornerRadius = circle.frame.height / 2

            } else {
                circle.frame = CGRect(x: circle.frame.minX - 10, y: circle.frame.minY, width: 30, height: 30)
                circle.layer.cornerRadius = circle.frame.height / 2
            }
        case .right:
            if circle.frame.maxX + 10 > screenWidth
            {
                circle.frame = CGRect(x: circle.frame.minX, y: circle.frame.minY, width: 30, height: 30)
                circle.layer.cornerRadius = circle.frame.height / 2

            } else {
                circle.frame = CGRect(x: circle.frame.minX + 10, y: circle.frame.minY, width: 30, height: 30)
                circle.layer.cornerRadius = circle.frame.height / 2
            }

        case .up:
            if circle.frame.minY - 10 < 30
            {
                circle.frame = CGRect(x: circle.frame.minX, y: circle.frame.minY, width: 30, height: 30)
                circle.layer.cornerRadius = circle.frame.height / 2

            } else {
                circle.frame = CGRect(x: circle.frame.minX, y: circle.frame.minY - 10, width: 30, height: 30)
                circle.layer.cornerRadius = circle.frame.height / 2
            }
        default:
            break
        }

    }
    

}
