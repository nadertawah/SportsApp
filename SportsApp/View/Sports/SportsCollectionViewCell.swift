//
//  SportsCollectionViewCell.swift
//  SportsApp
//
//  Created by Nader Said on 05/06/2022.
//

import UIKit

class SportsCollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var sportLabel: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        self.layer.cornerRadius = 10
        sportLabel.layer.cornerRadius = 10
    }

}
