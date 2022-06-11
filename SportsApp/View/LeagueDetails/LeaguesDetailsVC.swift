//
//  LeaguesDetailsVC.swift
//  SportsApp
//
//  Created by Nader Said on 06/06/2022.
//

import UIKit
import RxSwift
import RxCocoa
import SDWebImage

class LeaguesDetailsVC: UIViewController, UICollectionViewDelegate
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setUI()
    }

    //MARK: - Var(s)
    private let labelCollectionViewCellIdentifer = "LabelCollectionViewCell"
    private let imageCollectionViewCellIdentifer = "ImageCollectionViewCell"
    var VM : LeagueDetailsViewModel!
    var bag = DisposeBag()
    
    
    //MARK: - IBOutlet(s)
    @IBOutlet weak var upcomingEventsCollView: UICollectionView!
    @IBOutlet weak var latestResultsCollView: UICollectionView!
    @IBOutlet weak var teamsCollView: UICollectionView!
    @IBOutlet weak var navBar: UINavigationBar!
    
    //MARK: - IBAction(s)
    @objc func toggleFav()
    {
        
        VM.toggleLeagueFav()
    }
    
    //MARK: - Helper Funcs
    func toggleFavBtnImage(isFav: Bool)
    {
        DispatchQueue.main.async
        { [weak self] in
            var imgStr = "star"
            if isFav
            {
                imgStr = "star.fill"
            }
            self?.navBar.topItem?.rightBarButtonItem?.changeCustomBarBtnImage(img: UIImage(systemName: imgStr))

        }
        
    }
    @objc func back()
    {
        self.dismiss(animated: true)
    }
    func setUI()
    {
        //set navBar
        self.navBar.barTintColor = .gray
        navBar.topItem?.title = "Leagues Details"
        
        //set favorite button
        let favButton = UIButton(type: .custom)
        favButton.setImage(UIImage(systemName: "star"), for: .normal)
        favButton.setTitle("Fav", for: .normal)
        favButton.setTitleColor(.black, for: .normal)
        favButton.addTarget(self, action: #selector(toggleFav), for: .touchUpInside)
        navBar.topItem?.rightBarButtonItem = UIBarButtonItem(customView: favButton)
        
        //bind favorite button
        VM.isFavLeague.subscribe
        { [weak self]
            isFav in
            self?.toggleFavBtnImage(isFav: isFav)
        }.disposed(by: bag)
        
        //set back button
        let backbutton = UIButton(type: .custom)
        backbutton.setImage(UIImage(systemName: "chevron.backward")?.withTintColor(.black).withRenderingMode(.alwaysOriginal), for: .normal)
        backbutton.setTitle("Back", for: .normal)
        backbutton.setTitleColor(.black, for: .normal)
        backbutton.addTarget(self, action: #selector(back), for: .touchUpInside)
        navBar.topItem?.leftBarButtonItem = UIBarButtonItem(customView: backbutton)

        
        
        // Register cells
        upcomingEventsCollView.register(UINib(nibName: labelCollectionViewCellIdentifer, bundle: nil), forCellWithReuseIdentifier: labelCollectionViewCellIdentifer)
        
        latestResultsCollView.register(UINib(nibName: labelCollectionViewCellIdentifer, bundle: nil), forCellWithReuseIdentifier: labelCollectionViewCellIdentifer)
        
        teamsCollView.register(UINib(nibName: imageCollectionViewCellIdentifer, bundle: nil), forCellWithReuseIdentifier: imageCollectionViewCellIdentifer)
        
        //Set delegates
        upcomingEventsCollView.rx.setDelegate(self).disposed(by: bag)
        latestResultsCollView.rx.setDelegate(self).disposed(by: bag)
        teamsCollView.rx.setDelegate(self).disposed(by: bag)

        //Bind VM
        VM.upcomingEvents.bind(to: upcomingEventsCollView.rx.items(cellIdentifier: labelCollectionViewCellIdentifer, cellType: LabelCollectionViewCell.self))
        {
            idx,item,cell in
            cell.label.text = "\(item.strEvent ?? "")\n\(item.strTimestamp?.formatted(date: .complete, time: .shortened).localizedCapitalized ?? "")"

        }.disposed(by: bag)

        VM.latestEvents.bind(to: latestResultsCollView.rx.items(cellIdentifier: labelCollectionViewCellIdentifer, cellType: LabelCollectionViewCell.self))
        {
            idx,item,cell in
            cell.label.text = "\(item.strHomeTeam ?? "")\nVS\n\(item.strAwayTeam ?? "")\n\(item.intHomeScore ?? "") : \(item.intAwayScore ?? "")\n\(item.strTimestamp?.formatted(date: .complete, time: .shortened).localizedCapitalized ?? "")"
            

        }.disposed(by: bag)
        
        VM.teams.bind(to: teamsCollView.rx.items(cellIdentifier: imageCollectionViewCellIdentifer, cellType: ImageCollectionViewCell.self))
        {
            idx,item,cell in
            cell.imgView.sd_setImage(with: URL(string: item.strTeamBadge ?? ""), placeholderImage: UIImage(named: "placeHolder"))
            {    _,_,_,_ in
                
                cell.imgView.circle()
            }

            
        }.disposed(by: bag)
        
        
        //set did select row at
        teamsCollView.rx.modelSelected(Team.self).subscribe(onNext:
        {
            [weak self] cell in
            guard let self = self else {return}
            let teamDetailsV = TeamDetailVC.init(nibName: "TeamDetailVC", bundle: nil)
            teamDetailsV.VM = TeamDetailViewModel(team: cell)
            teamDetailsV.modalPresentationStyle = .fullScreen
            self.present(teamDetailsV, animated: true)
        }).disposed(by: bag)
        
    }
    
    
}

// MARK: UICollectionViewDelegateFlowLayout
extension LeaguesDetailsVC : UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let widthOrHeight = collectionView.frame.width / 2
        return CGSize(width: widthOrHeight, height: widthOrHeight)
    }
    
}
