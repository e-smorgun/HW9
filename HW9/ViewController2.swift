//
//  ViewController.swift
//  HW9
//
//  Created by Evgeny on 4.05.22.
//

import UIKit

class ViewController2: UIViewController {
    var TapView: UIView = UIView()

    override func viewDidLoad() {
        let screenSize: CGRect = UIScreen.main.bounds
        super.viewDidLoad()
        
        TapView.frame = CGRect(x: screenSize.midX, y: screenSize.midY, width: 60, height: 60)
        TapView.backgroundColor = .gray
        TapView.layer.cornerRadius = TapView.frame.height / 2
        
        let tapGesture = UILongPressGestureRecognizer(target: self, action: #selector(didTap))
        self.TapView.addGestureRecognizer(tapGesture)
        self.view.addSubview(TapView)
    }

    @objc func didTap(sender: UITapGestureRecognizer){
        let location : CGPoint = sender.location(in: view)
        TapView.frame = CGRect(x: location.x - 30, y: location.y - 30, width: 60, height: 60)
        self.view.addSubview(TapView)
    }
 
}

