//
//  ImageCollectionViewCell.swift
//  SportsApp
//
//  Created by Nader Said on 06/06/2022.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell
{

    override func awakeFromNib()
    {
        super.awakeFromNib()
        self.layer.cornerRadius = 10
    }

    //MARK: - IBOutlet(s)
    @IBOutlet weak var imgView: UIImageView!
        
}
