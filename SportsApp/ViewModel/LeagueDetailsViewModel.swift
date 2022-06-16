//
//  LeagueDetailsViewModel.swift
//  SportsApp
//
//  Created by Nader Said on 08/06/2022.
//

import Foundation
import RxRelay
import RxSwift

class LeagueDetailsViewModel
{
   
    init(league:League)
    {
        self.league = league
        getLeagueDetail()
        populateLeagueDetailSubscribers()
    }
    //MARK: - Var(s)
    
    private(set) var leagueDetailsModel = BehaviorRelay<[LeagueDetails]>(value: [LeagueDetails]())
    private(set) var upcomingEvents = BehaviorRelay<[LeagueDetails]>(value:[LeagueDetails]())
    private(set) var latestEvents = BehaviorRelay<[LeagueDetails]>(value:[LeagueDetails]())
    private(set) var teams = BehaviorRelay<[Team]>(value:[Team]())
    private(set) var isFavLeague = BehaviorRelay<Bool>(value: false)
    private(set) var league : League!
    var bag = DisposeBag()
    
    //MARK: - intent(s)
    func toggleLeagueFav()
    {
        if isFavLeague.value
        {
            let pred = NSPredicate(format: "idLeague == %@",league.idLeague ?? "")
            CoreData.shared.deleteObj(type: LeagueManagedObject.self, predicate: pred)
            isFavLeague.accept(false)
        }
        else
        {
            CoreData.shared.insertLeagueIntoCoreData(idLeague: league.idLeague, strBadge: league.strBadge, strLeague: league.strLeague, strYoutube: league.strYoutube)
            isFavLeague.accept(true)

        }
        
    }
    
    //MARK: - Helper Funcs
    func getLeagueDetail()
    {   //get events
        API.shared.httpGet(urlStr: "\(Constants.eventsByLeagueIDApiUrl)\(league.idLeague ?? "")" , type: Dictionary<String,[LeagueDetailsModel]>.self)
        {
            [weak self] in
            guard let self = self
            , let leagueArrDict = $0
            , let leagueArr = leagueArrDict["events"]
            else {return}

            self.leagueDetailsModel.accept(leagueArr)
        }
            
        //get teams
        API.shared.httpGet(urlStr: "\(Constants.allTeamsByLeagueApiUrl)\(league.strLeague?.replacingOccurrences(of: " ", with: "%20") ?? "")" , type: Dictionary<String,[TeamModel]>.self)
        {
            [weak self] in
            guard let self = self
            , let teamsArrDict = $0
            , let teamsArr = teamsArrDict["teams"]
            else {return}
            
            self.teams.accept(teamsArr)
        }
    }
    
    func populateLeagueDetailSubscribers()
    {
        leagueDetailsModel.subscribe(onNext:
        {
            [weak self] leagues in
            //publish upcoming events
            self?.upcomingEvents.accept(leagues.filter
            {
                guard let date = $0.strTimestamp else {return false}
               
                return date > Date()
            }
                                        )
            //publish latest results
            self?.latestEvents.accept(leagues.filter
            {
                    guard let date = $0.strTimestamp else {return false}
                    return date <= Date()
            }
                                        )
            //publish if the league is fav
            CoreData.shared.getItems(type: LeagueManagedObject.self)
            {
                [weak self] in
                guard let id = self?.league.idLeague else {return}
                if($0.contains {league in league.idLeague == id })
                {
                    self?.isFavLeague.accept(true)
                }
            }
            
        }).disposed(by: bag)
    }
}
