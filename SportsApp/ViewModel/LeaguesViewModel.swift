//
//  LeaguesViewModel.swift
//  SportsApp
//
//  Created by Nader Said on 05/06/2022.
//

import Foundation
import RxRelay

class LeaguesViewModel
{
    
    //MARK: - Var(s)
    private(set) var leaguesModel = BehaviorRelay<[League]>(value: [League]())
    
    //MARK: - intent(s)
    
    
    //MARK: - Helper Funcs

    func getLeagues(sport:String)
    {
        if sport != ""
        {
            API.shared.httpGet(urlStr: Constants.leaguesApiUrl + sport , type: Dictionary<String,[LeagueModel]>.self)
            {
                [weak self] in
                guard let self = self
                , let leaguesArrDict = $0
                , let leaguesArr = leaguesArrDict["countries"]
                else {return}
                
                self.leaguesModel.accept(leaguesArr)
            }
        }
        else
        {
            CoreData.shared.getItems(type: LeagueManagedObject.self)
            { [weak self]
                mangedObjectsArr in
                var leaguesArr = [League]()
                for obj in mangedObjectsArr
                {
                    leaguesArr.append(League(idLeague: obj.idLeague, strLeague: obj.strLeague, strBadge: obj.strBadge, strYoutube: obj.strYoutube))
                }
                self?.leaguesModel.accept(leaguesArr)
            }
        }
        
    }
}
