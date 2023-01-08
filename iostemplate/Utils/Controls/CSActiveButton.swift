//
//  CSActiveButton.swift
//  TemplateProject
//
//  Created by apple on 20/08/18.
//  Copyright © 2018 Confidosoft. All rights reserved.
//

import UIKit

class CSActiveButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        self.setTitleColor(UIColor.white, for: UIControl.State.normal)
        self.backgroundColor =  UIColor.init(netHex: 0xFC6621)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 5
        
    }
}
