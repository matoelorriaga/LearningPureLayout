//
//  ViewController.swift
//  LearningPureLayout
//
//  Created by Matías Elorriaga on 8/11/16.
//  Copyright © 2016 melorriaga. All rights reserved.
//

import UIKit
import PureLayout

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Learning PureLayout"
        
        view.backgroundColor = UIColor.yellow
        
        let box = UIView()
        view.addSubview(box)
        
        box.backgroundColor = UIColor.cyan
        box.autoPin(toTopLayoutGuideOf: self, withInset: 10)
        box.autoPinEdge(ALEdge.right, to: ALEdge.right, of: view, withOffset: -10)
        box.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: view, withOffset: -10)
        box.autoPinEdge(ALEdge.left, to: ALEdge.left, of: view, withOffset: 10)
        
        let button = UIButton()
        button.setTitle("Go To TableView", for: .normal)
        button.backgroundColor = UIColor.red
        view.addSubview(button)
        
        button.autoSetDimension(ALDimension.height, toSize: 50)
        button.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: box)
        button.autoPinEdge(ALEdge.left, to: ALEdge.left, of: box)
        button.autoPinEdge(ALEdge.right, to: ALEdge.right, of: box)
        
        button.addTarget(self, action: #selector(onButtonClick(button:)), for: .touchUpInside)
    }
    
    func onButtonClick(button: UIButton) {
        navigationController?.pushViewController(TableViewController(), animated: true)
    }
    
}
