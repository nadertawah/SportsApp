//
//  SportsCollViewController.swift
//  SportsApp
//
//  Created by Nader Said on 07/06/2022.
//

import UIKit
import RxSwift
import SDWebImage

class SportsCollViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        setUI()
        
        //get from API
        VM.getSports()
    }

    //MARK: - Var(s)
    private let sportsCellReuseIdentifier = "SportsCell"
    var VM = SportsViewModel()
    let bag = DisposeBag()
        
    //MARK: - IBOutlet(s)
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - IBAction(s)
    
    //MARK: - Helper Funcs
    func setUI()
    {
        
        //set navBar
        self.navBar.topItem?.title = "Sports"
        self.navBar.barTintColor = .gray
        
        // Register cells
        self.collectionView.register(UINib(nibName: "SportsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: sportsCellReuseIdentifier)
        
        //Set delegate
        collectionView.rx.setDelegate(self).disposed(by: bag)
       
        
        //Bind to collectionView
        VM.sportsModel.bind(to: collectionView.rx.items(cellIdentifier: sportsCellReuseIdentifier, cellType: SportsCollectionViewCell.self))
        {
            idx,item,cell in
           
            cell.sportLabel.text = item.strSport
            cell.imgView.sd_setImage(with: URL(string: item.strSportThumb), placeholderImage: UIImage(named: "placeHolder"))
        }.disposed(by: bag)
        
        //set no data img if the collection is empty
        setNoDataImg()
        
        //set did select row at
        collectionView.rx.itemSelected.subscribe(onNext:
        {
            [weak self] indexPath in
            guard let self = self else {return}
            let sport = self.VM.sportsModel.value[indexPath.row]
            let leaguesV = LeaguesTVC.init(nibName: "LeaguesTVC", bundle: nil)
            leaguesV.sportStr = sport.strSport.replacingOccurrences(of: " ", with: "%20")
            leaguesV.modalPresentationStyle = .fullScreen
            self.present(leaguesV, animated: true)
        }).disposed(by: bag)

    }
    
    func setNoDataImg()
    {
        VM.sportsModel.subscribe
        { [weak self] in
            self?.collectionView.toggleNoDataImgView(hasNoData: $0.element?.isEmpty ?? false )
        }.disposed(by: bag)
    }
}



// MARK: UICollectionViewDelegateFlowLayout
extension SportsCollViewController : UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let widthOrHeight = collectionView.frame.width / 2
        return CGSize(width: widthOrHeight, height: widthOrHeight)
    }
    
}
