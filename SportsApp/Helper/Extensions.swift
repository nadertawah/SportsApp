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
        DispatchQueue.main.async
        {
            [weak self] in
            guard let self = self else { return }
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor.black.cgColor
            self.layer.cornerRadius = self.frame.width / 2
            self.layer.masksToBounds = true
        }
    }
}


extension UIBarButtonItem
{
    
    func changeCustomBarBtnImage(img: UIImage?)
    {
        DispatchQueue.main.async
        {
            [weak self] in
            guard let self = self else { return }
            let btn = self.customView as! UIButton
            
            btn.setImage(img?.withTintColor(.black).withRenderingMode(.alwaysOriginal), for: .normal)
            self.customView = btn
        }
       
    }
}


extension UICollectionView
{
    func toggleNoDataImgView(hasNoData : Bool)
        {
            DispatchQueue.main.async
            {
                [weak self] in
                guard let self = self else { return }
                if hasNoData
                {
                    let imgView = UIImageView()
                    imgView.tag = 1997
                    imgView.frame = self.bounds
                    imgView.image = UIImage(named: "noData")
                    imgView.contentMode = .scaleAspectFill
                    self.addSubview(imgView)
                }
                else
                {
                    if let noDataMask = self.viewWithTag(1997) as? UIImageView
                    {
                        noDataMask.removeFromSuperview()
                    }
                }
            }
            
        }
}
