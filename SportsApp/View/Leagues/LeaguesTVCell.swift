//
//  LeaguesTVCell.swift
//  SportsApp
//
//  Created by Nader Said on 05/06/2022.
//

import UIKit

class LeaguesTVCell: UITableViewCell {

    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

    }
    
    //MARK: - IBOutlet(s)
    @IBOutlet weak var videoBtn: UIButton!
    @IBOutlet weak var leagueLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    //MARK: - IBAction(s)
    
    
    //MARK: - Helper Funcs
}
