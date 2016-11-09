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
        
        view.backgroundColor = .yellow
        
        let box = UIView()
        box.backgroundColor = .cyan
        
        let header = UIImageView()
        header.image = UIImage(named: "fractal")
        
        let logo = UIImageView()
        logo.image = UIImage(named: "CABJ")
        logo.contentMode = .scaleAspectFit
        
        let button = UIButton()
        button.setTitle("Go To TableView", for: .normal)
        button.backgroundColor = .red
        
        view.addSubview(box)
        view.addSubview(header)
        view.addSubview(logo)
        view.addSubview(button)
        
        box.autoPin(toTopLayoutGuideOf: self, withInset: 10)
        box.autoPinEdge(ALEdge.right, to: ALEdge.right, of: view, withOffset: -10)
        box.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: view, withOffset: -10)
        box.autoPinEdge(ALEdge.left, to: ALEdge.left, of: view, withOffset: 10)
        
        header.autoMatch(ALDimension.height, to: ALDimension.height, of: box, withMultiplier: 0.25)
        header.autoPinEdge(ALEdge.top, to: ALEdge.top, of: box)
        header.autoPinEdge(ALEdge.right, to: ALEdge.right, of: box)
        header.autoPinEdge(ALEdge.left, to: ALEdge.left, of: box)
        
        logo.autoPinEdge(ALEdge.top, to: ALEdge.top, of: header)
        logo.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: header)
        logo.autoAlignAxis(ALAxis.horizontal, toSameAxisOf: header)
        logo.autoAlignAxis(ALAxis.vertical, toSameAxisOf: header)
        
        button.autoSetDimension(ALDimension.height, toSize: 50)
        button.autoPinEdge(ALEdge.right, to: ALEdge.right, of: box)
        button.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: box)
        button.autoPinEdge(ALEdge.left, to: ALEdge.left, of: box)

        button.addTarget(self, action: #selector(onButtonClick(button:)), for: .touchUpInside)
    }
    
    func onButtonClick(button: UIButton) {
        navigationController?.pushViewController(TableViewController(), animated: true)
    }
    
}
