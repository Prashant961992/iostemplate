//
//  CSActiveButton.swift
//  TemplateProject
//
//  Created by apple on 20/08/18.
//  Copyright © 2018 Confidosoft. All rights reserved.
//

import UIKit

class CSPassiveButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        self.setTitleColor(UIColor.init(netHex: 0xFC6621), for: UIControl.State.normal)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.init(netHex: 0xFC6621).cgColor
    }
}
