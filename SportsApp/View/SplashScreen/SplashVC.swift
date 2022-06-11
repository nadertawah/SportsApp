//
//  SplashVC.swift
//  SportsApp
//
//  Created by Nader Said on 10/06/2022.
//

import UIKit
import Lottie

class SplashVC: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()

        let animationView = AnimationView(name: "splash")
        animationView.loopMode = LottieLoopMode.repeat(1)
        
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        animationView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        animationView.contentMode = .scaleAspectFit
        view.addSubview(animationView)
        animationView.play(fromProgress: 0, toProgress: 0.05, loopMode: .playOnce)
        {
            [weak self] _ in
            animationView.stop()
            let mainTabBarView = BaseTabBar()
            mainTabBarView.modalPresentationStyle = .fullScreen
            self?.present(mainTabBarView, animated: true)
        }
    }



}
