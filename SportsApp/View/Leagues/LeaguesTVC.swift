//
//  LeaguesTVC.swift
//  SportsApp
//
//  Created by Nader Said on 07/06/2022.
//

import UIKit
import RxCocoa
import RxSwift
import SDWebImage

class LeaguesTVC: UIViewController
{
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        setUI()
    }

    //MARK: - Var(s)
    var VM = LeaguesViewModel()
    var sportStr = ""
    let leaguesCellReuseIdentifier = "LeaguesCell"
    let bag = DisposeBag()
    
    
    //MARK: - IBOutlet(s)
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - IBAction(s)
    @objc func videoBtnPressed(sender:UIButton)
    {
        DispatchQueue.main.async
        {
            [weak self] in
            guard let self = self
            ,let link = self.VM.leaguesModel.value[sender.tag].strYoutube else {return}
            if link != ""
            {
                let fulllink = "https://\(link)"
                UIApplication.shared.open(NSURL(string: fulllink)! as URL)
            }
            else
            {
                let alert = UIAlertController(title: "Error", message: "No link!", preferredStyle: .alert)
                let action = UIAlertAction(title: "Ok", style: .default)
                alert.addAction(action)
                self.present(alert, animated: true)
            }
            
        }
    }
    
    //MARK: - Helper Funcs
    @objc func back()
    {
        self.dismiss(animated: true)
    }
    
    func setUI()
    {
        //set navBar
        self.navBar.barTintColor = .gray
        if sportStr == ""
        {
            navBar.topItem?.title = "Favorite leagues"

        }
        else
        {
            navBar.topItem?.title = "Leagues"
            
            //set back button
            let backbutton = UIButton(type: .custom)
            
            backbutton.setImage(UIImage(systemName: "chevron.backward")?.withTintColor(.black).withRenderingMode(.alwaysOriginal), for: .normal)
            backbutton.setTitle("Back", for: .normal)
            backbutton.setTitleColor(.black, for: .normal)
            backbutton.addTarget(self, action: #selector(back), for: .touchUpInside)
            navBar.topItem?.leftBarButtonItem = UIBarButtonItem(customView: backbutton)
        }
        
        
        
        // Register cells
        tableView.register(UINib(nibName: "LeaguesTVCell", bundle: nil), forCellReuseIdentifier: leaguesCellReuseIdentifier)
        
        //Set delegate
        tableView.rx.setDelegate(self).disposed(by: bag)

       
        
        //Bind to collectionView
        VM.leaguesModel.bind(to: self.tableView.rx.items(cellIdentifier: leaguesCellReuseIdentifier, cellType: LeaguesTVCell.self))
        {
            [weak self]
            idx,item,cell in
            guard let self = self else { return }
            cell.leagueLabel.text = item.strLeague
            cell.imgView.sd_setImage(with: URL(string: item.strBadge ?? ""), placeholderImage: UIImage(named: "placeHolder"), options: .refreshCached)
            {    _,_,_,_ in
                DispatchQueue.main.async
                {
                    cell.imgView.circle()
                }
                
            }
            cell.videoBtn.tag = idx
            
            cell.videoBtn.addTarget(self, action: #selector(self.videoBtnPressed(sender:)), for: .touchUpInside)
            
        }.disposed(by: bag)
        
        
        
        //set did select row at
        tableView.rx.modelSelected(League.self).subscribe(onNext:
        {
            [weak self] cell in
            guard let self = self else {return}
            let leaguesDetailsV = LeaguesDetailsVC.init(nibName: "LeaguesDetailsVC", bundle: nil)
            leaguesDetailsV.VM = LeagueDetailsViewModel(league: cell)
            leaguesDetailsV.modalPresentationStyle = .fullScreen
            self.present(leaguesDetailsV, animated: true)
            
        }).disposed(by: bag)
    }

    override func viewWillAppear(_ animated: Bool)
    {
        //get leagues array
        VM.getLeagues(sport: sportStr)
    }
}

extension LeaguesTVC : UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100
    }
}
