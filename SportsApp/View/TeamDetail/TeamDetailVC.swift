//
//  TeamDetailVC.swift
//  SportsApp
//
//  Created by Nader Said on 09/06/2022.
//

import UIKit
import RxSwift

class TeamDetailVC: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setUI()
    }

    //MARK: - Var(s)
    var VM : TeamDetailViewModel!
    var bag = DisposeBag()
    
    
    
    
    //MARK: - IBOutlet(s)
    @IBOutlet weak var teamBadge: UIImageView!
    @IBOutlet weak var stadiumImageView: UIImageView!
    @IBOutlet weak var teamInfoLabel: UILabel!
    @IBOutlet weak var stadiumInfoLabel: UILabel!
    @IBOutlet weak var navBar: UINavigationBar!
    
    
    //MARK: - IBAction(s)

    
    //MARK: - Helper Funcs
    @objc func back()
    {
        self.dismiss(animated: true)
    }
    
    func setUI()
    {
        //set navBar
        self.navBar.barTintColor = .gray
        navBar.topItem?.title = "Team Details"
        
        //set back button
        let backbutton = UIButton(type: .custom)
        backbutton.setImage(UIImage(systemName: "chevron.backward")?.withTintColor(.black).withRenderingMode(.alwaysOriginal), for: .normal)
        backbutton.setTitle("Back", for: .normal)
        backbutton.setTitleColor(.black, for: .normal)
        backbutton.addTarget(self, action: #selector(back), for: .touchUpInside)
        navBar.topItem?.leftBarButtonItem = UIBarButtonItem(customView: backbutton)

        //bind to vm
        VM.teamDetailModel.subscribe(onNext:
        { [weak self]
            team in
            guard let self = self else { return }
            self.teamBadge.sd_setImage(with: URL(string: team.strTeamBadge ?? ""), placeholderImage: UIImage(named: "placeHolder"))
            self.teamInfoLabel.text = "\(team.strTeam ?? "")\nFormed in : \(team.intFormedYear ?? "")\nLeague: \(team.strLeague ?? "")\nDescription: \(team.strDescriptionEN ?? "")"

            
        }
        ).disposed(by: bag)
    }

}
