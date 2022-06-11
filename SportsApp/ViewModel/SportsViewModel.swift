//
//  SportsViewModel.swift
//  SportsApp
//
//  Created by Nader Said on 04/06/2022.
//

import UIKit
import RxRelay

class SportsViewModel
{
    //MARK: - Var(s)
    private(set) var sportsModel = BehaviorRelay<[Sport]>(value: [Sport]())
    
    //MARK: - Helper Funcs
    func getSports()
    {
        API.shared.httpGet(urlStr: Constants.allSportsApiUrl, type: Dictionary<String,[SportModel]>.self)
        {
            [weak self] in
            guard let self = self
            , let sportsArrDict = $0
            , let sportArr = sportsArrDict["sports"]
            else {return}
            
            self.sportsModel.accept(sportArr)
        }
    }
}

