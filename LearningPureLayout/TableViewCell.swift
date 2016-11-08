//
//  TableViewCell.swift
//  LearningPureLayout
//
//  Created by Matías Elorriaga on 8/11/16.
//  Copyright © 2016 melorriaga. All rights reserved.
//

import UIKit
import PureLayout

class TableViewCell: UITableViewCell {

    let customImageView = UIImageView()
    let customTextLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        customImageView.image = UIImage(named: "CABJ")
        customTextLabel.numberOfLines = 0
        
        contentView.addSubview(customImageView)
        contentView.addSubview(customTextLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        customImageView.autoSetDimension(ALDimension.width, toSize: contentView.bounds.width / 4)
        customImageView.autoPinEdge(ALEdge.top, to: ALEdge.top, of: contentView, withOffset: 10)
        customImageView.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: contentView, withOffset: -10)
        customImageView.autoPinEdge(ALEdge.left, to: ALEdge.left, of: contentView, withOffset: 10)
        
        customTextLabel.autoPinEdge(ALEdge.left, to: ALEdge.right, of: customImageView, withOffset: 10)
        customTextLabel.autoPinEdge(ALEdge.right, to: ALEdge.right, of: contentView, withOffset: -10)
        customTextLabel.autoPinEdge(ALEdge.top, to: ALEdge.top, of: contentView)
        customTextLabel.autoPinEdge(ALEdge.bottom, to: ALEdge.bottom, of: contentView)
    }
    
}
