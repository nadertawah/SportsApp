//
//  Extensions.swift
//  SportsApp
//
//  Created by Nader Said on 06/06/2022.
//

import Foundation
import UIKit

extension UIImageView
{
    func circle()
    {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.masksToBounds = true
    }
}


extension UIBarButtonItem
{
    
    func changeCustomBarBtnImage(img: UIImage?)
    {
        DispatchQueue.main.async
        {
            let btn = self.customView as! UIButton
            
            btn.setImage(img?.withTintColor(.black).withRenderingMode(.alwaysOriginal), for: .normal)
            self.customView = btn
        }
       
    }
}
