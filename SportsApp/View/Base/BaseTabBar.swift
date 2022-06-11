//
//  BaseTabBar.swift
//  SportsApp
//
//  Created by Nader Said on 05/06/2022.
//

import UIKit

class BaseTabBar:  UITabBarController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //initiate Sports VC
        let VC0 = SportsCollViewController.init(nibName: "SportsCollViewController", bundle: nil)
        
        //set tabBar title
        VC0.tabBarItem.title =  "Sports"
        VC0.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "American Typewriter", size: 16)!], for: .normal)
        
        //set tabBar image
        VC0.tabBarItem.selectedImage = UIImage(named: "sportsIcon")!.withRenderingMode(.alwaysOriginal)
        VC0.tabBarItem.image = UIImage(named: "sportsIcon")

        //initiate Fav Leagues VC
        let VC1 = LeaguesTVC.init(nibName: "LeaguesTVC", bundle: nil)
        
        //set tabBar title
        VC1.tabBarItem.title = "Favorite leagues"
        VC1.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "American Typewriter", size: 16)!], for: .normal)
        
        //set tabBar image
        VC1.tabBarItem.image = UIImage(systemName: "heart")
        VC1.tabBarItem.selectedImage = UIImage(systemName: "heart.fill")?.withTintColor(.red).withRenderingMode(.alwaysOriginal)

        //set VC(s) in the tabBar
        self.viewControllers = [VC0,VC1]
        
        
        self.selectedIndex = 0
        self.tabBar.backgroundColor = .gray
        self.tabBar.tintColor = .black
        

    }
}
