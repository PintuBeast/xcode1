//
//  CollectionViewCell.swift
//  trialViewControll
//
//  Created by user194465 on 5/24/21.
//  Copyright © 2021 ruggedgreen. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
  
    @IBOutlet var img : UIImageView!
    @IBOutlet var lbl : UILabel!
    @IBOutlet var btn : UIButton!
    
    var buttonAction: ((Any) -> Void)?
   
    @objc func buttonPressed ()
    {
        self.buttonAction?(0)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
     
        btn.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
    }

}
