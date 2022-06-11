//
//  LabelCollectionViewCell.swift
//  SportsApp
//
//  Created by Nader Said on 06/06/2022.
//

import UIKit

class LabelCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib()
    {
        super.awakeFromNib()
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.black.cgColor
    }

    //MARK: - IBOutlet(s)
    
    @IBOutlet weak var label: UILabel!
    
    //MARK: - IBAction(s)
    
}
