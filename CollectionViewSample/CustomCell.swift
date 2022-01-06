//
//  CustomCell.swift
//  CollectionViewSample
//
//  Created by 山田　天星 on 2022/01/03.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(model: Model) {
        label.text = model.title
        self.backgroundColor = .lightGray
    }

}

