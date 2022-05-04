//
//  ViewController.swift
//  HW9
//
//  Created by Evgeny on 4.05.22.
//

import UIKit

class ViewController: UIViewController {
    var TapView: UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTap))
        self.view.addGestureRecognizer(tapGesture)
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(delView))
        self.TapView.addGestureRecognizer(tapGesture1)
    }

    @objc func didTap(sender: UITapGestureRecognizer){
        let location : CGPoint = sender.location(in: view)
        TapView.frame = CGRect(x: location.x - 30, y: location.y - 30, width: 60, height: 60)
        self.view.addSubview(TapView)
        TapView.backgroundColor = random()
        TapView.layer.cornerRadius = TapView.frame.height / 2

    }
 
    @objc func delView(sender: UITapGestureRecognizer){
        self.TapView.removeFromSuperview()
    }
    
    func random() -> UIColor {
        return UIColor(red:   .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue:  .random(in: 0...1),
                          alpha: 1.0)
       }
}

